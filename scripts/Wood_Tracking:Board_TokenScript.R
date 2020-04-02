#M <- (microtag scan data)
#Ci <- (input criteria)
#Si <- (supplier identifier)
#Ri <- (required inputs)
#Rs <- (required supplier)

#CREATE DATA FOR BOARD TOKEN FUNCTIONS


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