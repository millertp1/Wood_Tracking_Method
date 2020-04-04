#Log Token Function

#Read in Token Key, this is the criteria that must be met from the foresters QR code Microtaggnant scan to create a log token in the blockchain system. It is a condensed version of the Microtag Scan data key. First letter corresponds to  the three letter combo of aM. Second letter coreesponds to the two letter combo aCi. The third letter corresponds to the number aSi. 
bTokenKey <- read_excel("data/Board_TokenKey.xlsx", 
                        col_names = FALSE, col_types = c("text"))
View(bTokenKey)

#Read in Microtag Scan data for token verification, this is  the foresters QR code Microtaggnant scan data entry, it is a condensed version of the Microtag Scan data. First letter corresponds to  the three letter combo of M. Second letter coreesponds to the two letter combo Ci. The third letter corresponds to the number Si.  
BoardToken <- read_excel("data/Microtagscan_BoardToken.xlsx")
View(BoardToken)




#Create key from mTokenKey, creating a data frame of the accepted criteria, represnted by the letter variables. 
bTokenScanKey <- data.frame(letters = c('Y','R','N','L','A','U','V','D'), description = c('aMicrotag', 'aMicrotag', 'aCriteria', 'aCriteria', 'aSupplier', 'Create Board Token','Not Enough Inputs','aRequired Suppliers'))
bTokenScanKey
BoardToken 
BoardToken <- as.character(BoardToken)
unlist(strsplit(BoardToken, split = ''))
indices <- match(unlist(strsplit(BoardToken , split = '')), bTokenScanKey$letters)
indices
bTokenScanKey$description[indices]
tbScan_code<- unlist(strsplit(BoardToken , ''))


BoardToken_Verify <- function(BoardToken, bTokenScanKey) {
  tbScan_code<- unlist(strsplit(BoardToken, ''))
  indices <- match( tScan_code, bTokenScanKey$letters)
  return(bTokenScanKey$description[indices])
}

BoardToken_Verify(BoardToken, TokenScanKey)


sapply(BoardToken, function(x) BoardToken_Verify(x,bTokenScanKey))




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



