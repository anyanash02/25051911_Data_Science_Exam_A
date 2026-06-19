Create_Job_Groups <- function(df) {
  
  library(tidyverse)
  
  df <- df %>%
    mutate(
      emp_title_clean = emp_title %>%
        as.character() %>%
        str_to_lower() %>%
        str_replace_all("[^a-z ]", " ") %>%
        str_squish(),
      
      job_level = case_when(
        
        # 1. Missing / not employed
        is.na(emp_title_clean) | emp_title_clean == "" ~ 
          "Missing / Not employed",
        
        str_detect(emp_title_clean,
                   "\\b(retired|student|unemployed|none|na|homemaker|disabled)\\b") ~ 
          "Missing / Not employed",
        
        
        # 2. Executive / owner
        str_detect(emp_title_clean,
                   "\\b(ceo|cfo|coo|cio|cto|chief|president|vice president|vp|svp|avp|evp|executive|owner|partner|founder|entrepreneur|self employed|business owner|sole proprietor|managing member)\\b") ~ 
          "Executive / Owner",
        
        
        # 3. Management / supervisor
        str_detect(emp_title_clean,
                   "\\b(director|manager|mgr|manger|management|supervisor|superviser|superintendant|superintendent|principal|head|lead|leadman|team leader|group leader|shift leader|foreman|forman|captain|gm|operations|general manager|branch manager|store manager|office manager|project manager|program manager|operations manager|plant manager|sgt|commander|formen|project leader|line leader|leader)\\b") ~ 
          "Management / Supervisor",
        
        
        # 4. Professional / highly skilled
        str_detect(emp_title_clean,
                   "\\b(doctor|physician|surgeon|dentist|optometrist|veterinarian|chiropractor|attorney|lawyer|judge|general counsel|engineer|engineering|architect|professor|teacher|teachers|educator|lecturer|faculty|instructor|trainer|dean|dean of students|paraprofessional|paraeducator|para professional|school psychologist|psychologist|psychotherapist|speech language pathologist|speech pathologist|chemist|scientist|developer|programmer|coder|software engineer|data scientist|analyst|pilot|designer|editor|technical writer|researcher|consultant|senior consultant|specialist|pastor|minister|clergy|chaplain|librarian|auditor|cpa|cma|quality assurance|quality|court reporter|photographer|coach|drafter|interpreter|professional|biologist|md|counsel|anesthesiologist|microbiologist|postdoctoral fellow)\\b") ~ 
          "Professional / Highly Skilled",
        
        
        # 5. Skilled - healthcare
        str_detect(emp_title_clean,
                   "\\b(nurse|nursing|rn|lpn|lvn|crna|cna|cma|pca|pct|pta|hha|rda|cota|medical assistant|medical technologist|nuclear medicine technologist|radiologic technologist|mri technologist|ct technologist|surgical technologist|medical coder|medical biller|dental assistant|dental hygienist|pharmacist|pharmacy technician|pharmacy tech|paramedic|emt|clinician|therapist|counsellor|counselor|social worker|caseworker|case worker|caregiver|care giver|care provider|home health|healthcare|health care|hospital|clinic|radiology|xray|x ray|sonographer|optician|phlebotomist|respiratory therapist|lab tech|medical tech|nursing assistant|r n|medical|radiographer|technologist|ultrasound technologist|dietician|technition|medic|dietitian|hygienist|audiologist|social work)\\b") ~ 
          "Skilled - Healthcare",
        
        
        # 6. Skilled - finance / business
        str_detect(emp_title_clean,
                   "\\b(accountant|accounting|finance|financial|financial advisor|advisor|adviser|controller|comptroller|bookkeeper|book keeper|banker|personal banker|bank|loan|mortgage|underwriter|broker|realtor|real estate|insurance|claims|claims adjuster|claims examiner|examiner|adjuster|appraiser|buyer|purchasing|procurement|planner|trader|marketing|human resources|hr|recruiter|payroll|paralegal|legal assistant|representative|sales|salesman|salesperson|sales representative|sales rep|sales associate|inside sales|outside sales|route sales|business development|account executive|account manager|business analyst|agent|dealer|estimator|service advisor|service writer|collector|closer|compliance|treasurer|inventory|inventory control|parts|account payable|accounts payable|account receivable|accounts receivable|it|it professional|information technology|account rep|lender|loss prevention|bookkeeping|tax preparer)\\b") ~ 
          "Skilled - Finance / Business",
        
        
        # 7. Government / safety / military
        str_detect(emp_title_clean,
                   "\\b(police|officer|sheriff|firefighter|fire fighter|fireman|military|soldier|army|navy|air force|marine|major|government|correction|corrections|dispatcher|dispatch|911|law enforcement|security|security officer|investigator|detective|deputy|trooper|state trooper|sergeant|lieutenant|patrolman|postal|usps|postmaster|mail carrier|letter carrier|rca|public works|tso|eligibility worker|enlisted|corporal|active duty|tankerman)\\b") ~ 
          "Government / Safety / Military",
        
        
        # 8. Skilled trades
        str_detect(emp_title_clean,
                   "\\b(contractor|electrician|plumber|pipe fitter|pipefitter|carpenter|mechanic|welder|machinist|machinest|technician|tech|maintenance|maintanance|installer|inspector|repair|repairman|fabricator|operator|equipment operator|construction|hvac|painter|roofer|mason|handyman|finisher|ironworker|sheet metal worker|millwright|diesel|automotive|auto mechanic|lineman|line worker|utility worker|utility|quality control|conductor|transport|transportation|logistics|journeyman|apprentice|driller|locksmith|electrican|environmental services|graphic artist|builder|writer|printer|insulator|iron worker|musician|toolmaker|draftsman|tool maker|cabinet maker|surveyor|land surveyor|boilermaker|meter reader|seamstress|storekeeper|copywriter)\\b") ~ 
          "Skilled Trades",
        
        
        # 9. Admin / clerical / support
        str_detect(emp_title_clean,
                   "\\b(assistant|administrative assistant|admin assistant|administrative|administrator|administration|admin|clerk|clerical|secretary|receptionist|reception|front desk|office|office assistant|office clerk|data entry|processor|teller|customer service|customer service representative|customer service rep|csr|csa|call center|scheduler|biller|billing|collections|coordinator|support|office support|file clerk|records clerk|mail clerk|registrar|receiver|receiving|records|client services|service rep|employee|customer care|communications|telecommunicator|reporter|human resource|public safety|customer advocate)\\b") ~ 
          "Admin / Clerical / Support",
        
        
        # 10. Mid / low skilled service / physical
        str_detect(emp_title_clean,
                   "\\b(cashier|server|waiter|waitress|bartender|barista|attendant|retail|associate|team member|store associate|warehouse|warehouseman|warehouse worker|material handler|handler|laborer|labourer|labor|manufacturing|longshoreman|custodian|janitor|cleaner|housekeeper|housekeeping|house keeping|nanny|driver|truck driver|truckdriver|courier|delivery|carrier|mail handler|mailhandler|shipper|shipping|selector|order selector|dock worker|sanitation worker|food service|restaurant|hotel|hospitality|concierge|doorman|porter|crew|crew member|packer|picker|assembler|assembly|production|producer|production worker|factory worker|machine operator|forklift|guard|security guard|stocker|merchandiser|landscaper|groundskeeper|baker|barber|cosmetologist|esthetician|stylist|hair stylist|hairstylist|meat cutter|butcher|loader|pressman|cook|chef|sous chef|line cook|personal trainer|detailer|maintance|manicurist|hairdresser|custodial|caretaker|decorator|facilities|chauffeur|sanitation|carman|house keeper|hostess|guest services|valet|service|worker|staff|factory|groomer|janitorial|maintence|aide|packing|deli|operater|sorter|order filler|maintainer|cleaning|miner|orderfiller|helper|transporter|houseman|hair dresser|rigger|drive|mailman)\\b") ~ 
          "Mid / Low Skilled Service / Physical",
        
        
        # 11. Remaining unclassified job titles
        TRUE ~ "Other / Unclassified"
      )
    )
  
  df
}