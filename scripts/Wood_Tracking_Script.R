#m <- (microtag scan data)
#Ci <- (input criteria)
#Si <- (supplier identifier)
#Ri <- (required inputs)
#Rs <- (required supplier)

#Ci = species, gps

LogCondition1 <- (m = Ci = Si)
LogCondition2 <- (m = Ci != Si)
LogCondition3 <- (m != Ci = Si)
LogCondition4 <- (m != Ci != Si)

BoardCondition1 <- (m = Ci = Ri = Rs)
BoardCondition2 <- (m != Ci = Ri = Rs)
BoardCondition3 <- (m = Ci != Ri = Rs)
BoardCondition4 <- (m = Ci = Ri != Rs)
BoardCondition5 <- (m = Ci != Ri != Rs)
BoardCondition6 <- (m != Ci = Ri != Rs)
BoardCondition7 <- (mm != Ci != Ri != Rs)

log.verify <- {if(LogCondition1)
  stop("log token")
  else if(LogCondition2)
    stop("FAIL")
  else if(LogCondition3)
    stop("FAIL")
  else if(LogCondition4)
    stop("FAIL")
}

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



Forester -> Log Contract -> Log Tokens: Tree species, location
Sawmill -> Board Contract -> Board Tokens: Data from log token, quantity
Lowes -> Lumber Contract -> Holds Board tokens

The token ID will be composed with the following information: 
  
  Cu <- (input units)
Ci <- (input criteria)
Ta <- (token amount)
To   <- (token owner) ? token creator 

Token ID [Ta, Cu, Ci, To, date/time stamp]: 
  
  

