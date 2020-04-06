#Log Token Function

#Read in Token Key, this is the criteria that must be met from the QR code Microtaggnant scan to create a log token in the blockchain system. It is a condensed version of the Microtag Scan data key. First letter corresponds to  the three letter combo of aM. Second letter coreesponds to the two letter combo aCi. The third letter corresponds to the number aSi. 
mTokenKey <-read_excel("data/MicrotagScan_LogTokenKey.xlsx", 
                            col_names = FALSE)
View(mTokenKey)

#Read in Microtag Scan data for token verification, this is  the sawmill QR code Microtaggnant scan data, it is a condensed version of the Microtag Scan data. First letter corresponds to  the three letter combo of M. Second letter coreesponds to the two letter combo Ci. The third letter corresponds to the number Si.  
mToken <- read_excel("data/Microtagscan_Token.xlsx")
View(mToken)


mTokenScan <- mToken
#Create key from mTokenKey, creating a data frame of the accepted criteria, represnted by the letter variables. 
TokenScanKey <- data.frame(letters = c('Y','R','N','L','A','S','T','D'), description = c('aMicrotag', 'aMicrotag', 'aCriteria', 'aCriteria', 'aSupplier', 'Create Log Token','Not Enough Inputs','aRequired Suppliers'))
TokenScanKey
mTokenScan
mTokenScan<- as.character(mTokenScan)
unlist(strsplit(mTokenScan, split = ''))
indices <- match(unlist(strsplit(mTokenScan, split = '')), TokenScanKey$letters)
indices
TokenScanKey$description[indices]
tScan_code<- unlist(strsplit(mTokenScan, ''))

#Function to match the accpeted microtaggant paint scans of log batches against the token creation crieria
LogToken_Verify <- function(mTokenScan, TokenScanKey) {
  tScan_code<- unlist(strsplit(mTokenScan, ''))
  indices <- match( tScan_code, TokenScanKey$letters)
  return(TokenScanKey$description[indices])
}


LogToken_Verify(mTokenScan, TokenScanKey)

#Function that can match any accepted scanned microtaggant paint scans of log batches aginst the token creation criteria.
sapply(mToken, function(x) LogToken_Verify(x,TokenScanKey))

#Batch 1 has met the log token creation criteria, Batch 2's required inputs were not satisfied, the batch will stay in the blockcahin and at the foresters facility until the quantity is enough for the token creation criteria. The batch can be merged with another accpeted batch with unsatisfied required inputs to meet token creation criteria.
