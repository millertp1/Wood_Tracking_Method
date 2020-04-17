#Read in Accepted Mircotag scan criteria, the approved microtag layers, input criteria and supplier indentifer
library(readxl)
aMtdat <- read_excel("data/Microtag_Scan_Key.xlsx")
View(aMtdat)

#Read in Mircotag scan, the microtag layers, input criteria and supplier indentifer
Msdat<- read_excel("data/Sawmill_Mircotag_Scan.xlsx")
View(Msdat)


#M <- (microtag scan data)
#Ci <- (input criteria)
#Si <- (supplier identifier)


#Set columns as factors; categorical variables enter into statistical models differently than continuous variables, storing data as factors insures that the modeling functions will treat such data correctly 
M <- as.factor(Msdat$M)
aM <- as.factor(aMtdat$aM)
Ci <- as.factor(Msdat$Ci)
aCi <- as.factor(aMtdat$aCi)
Si <- as.factor(Msdat$Si)
aSi <- as.factor(aMtdat$aSi)

#Satisfying log criteria, the microtag data must match the approved microtaggnant QR code criteria

#LogCondition <- (aM, aCi, aSi)
LogCondition1 <- (M %in% aM & Si %in% aSi & Ci %in% aCi) 
LogCondition2 <- (M %!in% aM & Si %in% aSi & Ci %in% aCi) 
LogCondition3 <- (M %in% aM & Si %!in% aSi & Ci %in% aCi) 
LogCondition4 <- (M %!in% aM & Si %in% aSi & Ci %!in% aCi) 

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

#Both batches of logs sent from the forester match the accepted Mircotag scan criteria. The phyiscal and log tokens can be consumed by sawmill. 

#Non-Log Condition 1 will fail/revert
'%!in%' <- function(x,y)!('%in%'(x,y))

LogCondition2 <- ifelse (M %!in% aM, "Failed Microtag", "Revert") 
LogCondition2


LogCondition3 <- ifelse ( Si %!in% aSi, "Failed Supplier Identifier", "Revert") 
LogCondition3

LogCondition4 <- ifelse (Ci %!in% aCi, "Failed Input Criteria", "Revert") 
LogCondition4

#CONDITION FUNCTIONS LISTED 
LogCondition1 
LogCondition2 
LogCondition3 
LogCondition4  
LogCondition5

