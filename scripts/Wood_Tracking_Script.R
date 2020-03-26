#M <- (microtag scan data)
#Ci <- (input criteria)
#Si <- (supplier identifier)
#Ri <- (required inputs)
#Rs <- (required supplier)

#Ci = species, gps

#Read in Accepted Mircotag scan criteria, the approved microtag layers, input criteria and supplier indentifer
library(readxl)
aMtdat <- read_excel("data/Accepted_microtag.xlsx")
View(aMtdat)

#Read in Mircotag scan, the microtag layers, input criteria and supplier indentifer
Mtdat <- read_excel("data/Forester_data.xlsx")
View(Mtdat)


#Set columns as factors 
M <- as.factor(Mtdat$M)
aM <- as.factor(aMtdat$aM)
Ci <- as.factor(Mtdat$Ci)
aCi <- as.factor(aMtdat$aCi)
Si <- as.factor(Mtdat$Si)
aSi <- as.factor(aMtdat$aSi)

#First step is satisfying log criteria, the microtag data must match teh approved microtag criteria

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

#Check Log Condition
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


log.verify <- {ifelse(LogCondition1)
  stop("log token")
    if(LogCondition2)
    stop("FAIL")
  if(LogCondition3)
    stop("FAIL")
  if(LogCondition4)
    stop("FAIL")
}

log.verify


BoardCondition1 <- (m = Ci = Ri = Rs)
BoardCondition2 <- (m != Ci = Ri = Rs)
BoardCondition3 <- (m = Ci != Ri = Rs)
BoardCondition4 <- (m = Ci = Ri != Rs)
BoardCondition5 <- (m = Ci != Ri != Rs)
BoardCondition6 <- (m != Ci = Ri != Rs)
BoardCondition7 <- (mm != Ci != Ri != Rs)



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
  
  

