

#Read in Accepted Mircotag scan criteria, the approved microtag layers, input criteria and supplier indentifer
library(readxl)
aMtdat <- read_excel("data/Microtag_Scan_Key.xlsx")
View(aMtdat)

#Read in Mircotag scan, the microtag layers, input criteria and supplier indentifer
Mtdat <- read_excel("data/Forester_Mircotag_Scan.xlsx")
View(Mtdat)


#M <- (microtag scan data)
#Ci <- (input criteria)
#Si <- (supplier identifier)


#Set columns as factors 
M <- as.factor(Mtdat$M)
aM <- as.factor(aMtdat$aM)
Ci <- as.factor(Mtdat$Ci)
aCi <- as.factor(aMtdat$aCi)
Si <- as.factor(Mtdat$Si)
aSi <- as.factor(aMtdat$aSi)

#First step is satisfying log criteria, the microtag data must match the approved microtag criteria

#LogCondition <- (aM, aCi, aSi)
LogCondition1 <- (M %in% aM & Si %in% aSi & Ci %in% aCi) 
LogCondition2 <- (M %!in% aM & Si %in% aSi & Ci %in% aCi) 
LogCondition3 <- (M = aM & Ci != aCi & Si = aSi) 
LogCondition4 <- (M = aM & Ci = aCi & Si != aSi) 

#M <- (microtag scan data)
M %in% aM
which(M %in% aM)
ifelse (M %in% aM,"Accepted Microtag","Not Accepted Microtag")

#Ci <- (input criteria)
Ci %in% aCi
which(Ci %in% aCi)
ifelse(condition, do_if_true, do_if_false)
ifelse (Ci %in% aCi,"Accepted Criteria","Not Accepted Criteria")

#Si <- (supplier identifier)
Si %in% aSi
which(Si %in% aSi)
ifelse (Si %in% aSi,"Accepted Supplier Identifier","Not Accepted")

#Check Log Condition, Log Condition 1 is the only acceptable condition to record and store logs in the blockcahin. 
LogCondition1 <- ifelse (M %in% aM & Si %in% aSi & Ci %in% aCi, "Log Condition Met", "Revert") 
LogCondition1                       
                     
#Non-Log Condition 1 will fail/revert
'%!in%' <- function(x,y)!('%in%'(x,y))

LogCondition2 <- ifelse (M %!in% aM, "Failed Microtag", "Revert") 
LogCondition2

LogCondition3 <- ifelse ( Si %!in% aSi, "Failed Supplier Identifier", "Revert") 
LogCondition3

LogCondition4 <- ifelse (Ci %!in% aCi, "Failed Input Criteria", "Revert") 
LogCondition4

LogCondition5 <- ifelse (M %!in% aM | Si %!in% aSi | Ci %!in% aCi, "Failed Microtag or Supplier or Input Criteria", "Revert") 
LogCondition5

LogCondition1 
LogCondition2 
LogCondition3 
LogCondition4  
LogCondition5

