#Log Token Function

#Read in Token Key, this is the criteria that must be met from the foresters QR code Microtaggnant scan to create a log token in the blockchain system. It is a condensed version of the Microtag Scan data key. First letter corresponds to  the three letter combo of aM. Second letter coreesponds to the two letter combo aCi. The third letter corresponds to the number aSi. 
mTokenKey <- read_excel("data/MicrotagScan_TokenKey.xlsx", 
                                    col_names = FALSE, col_types = c("text"))
View(mTokenKey)

#Read in Microtag Scan data for token verification, this is  the foresters QR code Microtaggnant scan data entry, it is a condensed version of the Microtag Scan data. First letter corresponds to  the three letter combo of M. Second letter coreesponds to the two letter combo Ci. The third letter corresponds to the number Si.  
mBoardToken <- read_excel("data/Microtagscan_BoardToken.xlsx", 
                          col_names = FALSE)

View(mBoardToken )



#Create key from mTokenKey, creating a data frame of the accepted criteria, represnted by the letter variables. 
bTokenScanKey <- data.frame(letters = c('B','R','N','P','A', 'K', 'L', 'U'), description = c('aMicrotag', 'aMicrotag', 'aCriteria', 'aCriteria', 'aSupplier', 'aRequired Inputs','aRequired Inputs', 'aRequired Suppliers'))
bTokenScanKey
mBoardToken 
mBoardToken <- as.character(mBoardToken)
unlist(strsplit(mBoardToken, split = ''))
indices <- match(unlist(strsplit(mBoardToken , split = '')), bTokenScanKey$letters)
indices
bTokenScanKey$description[indices]
tbScan_code<- unlist(strsplit(mBoardToken , ''))


BoardToken_Verify <- function(mBoardToken, bTokenScanKey) {
  tbScan_code<- unlist(strsplit(mBoardToken, ''))
  indices <- match( tScan_code, bTokenScanKey$letters)
  return(bTokenScanKey$description[indices])
}

BoardToken_Verify(mBoardToken, TokenScanKey)

bTokenScan1<- c('YMDKU', 'RPAKU', 'BNCKV', 'RPALU')
sapply(bTokenScan1, function(x) BoardToken_Verify(x,bTokenScanKey))

tbCreation<-sapply(mBoardToken, function(x) BoardToken_Verify(x,bTokenScanKey))

if(tCreation =="aMicrotag" & "aCriteria" & "aSupplier") {
  print(token)
}

#Scan that has accepted microtag scan, criteria and supplier will be 

 
  
#"aMicrotag" & "aCriteria" & "aSupplier"










#Forester -> Log Contract -> Log Tokens: Tree species, location
#Sawmill -> Board Contract -> Board Tokens: Data from log token, quantity
#Lowes -> Lumber Contract -> Holds Board tokens

#The token ID will be composed with the following information: 

#Cu <- (input units)
#Ci <- (input criteria)
#Ta <- (token amount)
#To  <- (token owner) ? token creator 

#Token ID [Ta, Cu, Ci, To, date/time stamp]: 



