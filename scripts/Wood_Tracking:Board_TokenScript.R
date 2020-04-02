#M <- (microtag scan data)
#Ci <- (input criteria)
#Si <- (supplier identifier)
#Ri <- (required inputs)
#Rs <- (required supplier)

#CREATE DATA FOR BOARD TOKEN FUNCTIONS
library(readxl)
aMtdat <- read_excel("data/Microtag_Scan_Key.xlsx")
log_board <- read_excel("data/Board_TokenConditions_Sawmill.xlsx")


M <- as.factor(log_board$M)
aM <- as.factor(aMtdat$aM)
Ci <- as.factor(log_board$Ci)
aCi <- as.factor(aMtdat$aCi)
Ri <- as.factor(log_board$Ri)
aRi <- as.factor(aMtdat$aRi)
Rs <- as.factor(log_board$Rs)
aRs <- as.factor(aMtdat$aRs)

#BOARD CONDITIONS 
BoardCondition1 <- (m = Ci = Ri = Rs)
BoardCondition2 <- (m != Ci = Ri = Rs)
BoardCondition3 <- (m = Ci != Ri = Rs)
BoardCondition4 <- (m = Ci = Ri != Rs)
BoardCondition5 <- (m = Ci != Ri != Rs)
BoardCondition6 <- (m != Ci = Ri != Rs)
BoardCondition7 <- (mm != Ci != Ri != Rs)

M %in% aM & Si %in% aSi & Ci %in% aCi

#M <- (microtag scan data)
M %in% aM
which(M %in% aM)
ifelse (M %in% aM,"Accepted Microtag","Not Accepted Microtag")

#Ci <- (input criteria)
Ci %in% aCi
which(Ci %in% aCi)
ifelse(condition, do_if_true, do_if_false)
ifelse (Ci %in% aCi,"Accepted Criteria","Not Accepted Criteria")

#Ri <- (required inputs)
Ri %in% aRi
which(Ri %in% aRi)
ifelse(condition, do_if_true, do_if_false)
ifelse (Ri %in% aRi,"Accepted Required Inputs","Not Accepted Required Inputs")

#Rs <- (required supplier)
Rs %in% aRs
which(Rs %in% aRs)
ifelse(condition, do_if_true, do_if_false)
ifelse (Rs %in% aRs,"Correct Number of Required Suppliers","Incorrect Number of Required Suppliers")



#Check Board Condition
BoardCondition1 <- ifelse (M %in% aM & Ci %in% aCi & Ri %in% aRi &Rs %in% aRs, "Board Condition Met", "Revert") 
BoardCondition1                      

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
board.verify <- {if(log.verify = BoardCondition1)
  stop("board token")
  else if(log.verify = BaordCondition2)
    stop("Accept Token")
  else if(log.verify = BaordCondition3)
    stop("Accept Token")
  else if(log.verify = BaordCondition4)
    stop("Accept Token")
  else if(log.verify = BaordCondition5)
    stop("Accept Token")
  else if(log.verify = BaordCondition6)
    stop("Accept Token")
  else if(log.verify = BaordCondition7)
    stop("Accept Token")
}



#Forester -> Log Contract -> Log Tokens: Tree species, location
#Sawmill -> Board Contract -> Board Tokens: Data from log token, quantity
#Lowes -> Lumber Contract -> Holds Board tokens

#The token ID will be composed with the following information: 

#Cu <- (input units)
#Ci <- (input criteria)
#Ta <- (token amount)
#To  <- (token owner) ? token creator 

#Token ID [Ta, Cu, Ci, To, date/time stamp]: 