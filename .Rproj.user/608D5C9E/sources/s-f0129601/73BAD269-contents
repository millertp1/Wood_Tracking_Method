#Board Token Functions

#Read in Token Key, this is the criteria that must be met from the foresters QR code Microtaggnant scan to create a log token in the blockchain system. It is a condensed version of the Microtag Scan data key. First letter corresponds to  the three letter combo of baCi. Second letter coreesponds to the two letter combo baRi. The third letter corresponds to the number aRs. 
bTokenKey <- read_excel("data/Board_TokenKey.xlsx", 
                        col_names = FALSE, col_types = c("text"))
View(bTokenKey)

#Read in Microtag Scan data for token verification, this is  the foresters QR code Microtaggnant scan data entry, it is a condensed version of the Microtag Scan data. First letter corresponds to  the three letter combo of bCi. Second letter coreesponds to the two letter combo bRi. The third letter corresponds to the number bRs.  
bToken <- read_excel("data/Microtagscan_BoardToken.xlsx")
View(bToken)



bTokenScan <- bToken
#Create key from bTokenKey, creating a data frame of the accepted criteria, represnted by the letter variables. 
bTokenScanKey <- data.frame(letters = c('Y','R','N','L','A','U','V','D'), description = c('aMicrotag', 'aMicrotag', 'aCriteria', 'aCriteria', 'aSupplier', 'Create Board Token','Not Enough Inputs','aRequired Suppliers'))
bTokenScanKey
bTokenScan
bTokenScan<- as.character(mTokenScan)
unlist(strsplit(bTokenScan, split = ''))
indices <- match(unlist(strsplit(bTokenScan, split = '')), bTokenScanKey$letters)
indices
bTokenScanKey$description[indices]
bScan_code<- unlist(strsplit(bTokenScan, ''))

#Function to match the accpeted microtaggant paint scans of log batches against the token creation crieria
bLogToken_Verify <- function(bTokenScan, bTokenScanKey) {
  bScan_code<- unlist(strsplit(bTokenScan, ''))
  indices <- match( bScan_code, bTokenScanKey$letters)
  return(bTokenScanKey$description[indices])
}


bLogToken_Verify(bTokenScan, bTokenScanKey)

#Function that can match any accepted scanned microtaggant paint scans of log batches aginst the board token creation criteria.
sapply(bToken, function(x) bLogToken_Verify(x,bTokenScanKey))

#Batch 1 has met the board token creation criteria, Batch 2's required inputs were not satisfied, the batch will stay in the blockcahin and at the foresters facility until the quantity is enough for the token creation criteria. The batch can be merged with another accpeted batch with unsatisfied required inputs to meet token creation criteria.









#Forester -> Log Contract -> Log Tokens: Tree species, location
#Sawmill -> Board Contract -> Board Tokens: Data from log token, quantity
#Lowes -> Lumber Contract -> Holds Board tokens

#The token ID will be composed with the following information: 

#Cu <- (input units)
#Ci <- (input criteria)
#Ta <- (token amount)
#To  <- (token owner) ? token creator 

#Token ID [Ta, Cu, Ci, To, date/time stamp]: 



