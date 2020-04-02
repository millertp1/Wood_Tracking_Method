#Board Token Function

#Read in Token Key, this is the criteria that must be met from the QR code Microtaggnant scan to create a board token in the blockchain system. It is a condensed version of the Microtag Scan data key. First letter corresponds to  the three letter combo of aM. Second letter coreesponds to the two letter combo aCi. The third letter corresponds to the number aSi. 
mTokenKey <- read_excel("data/MicrotagScan_TokenKey.xlsx", 
                        col_names = FALSE, col_types = c("text"))
View(mTokenKey)

#Read in Microtag Scan data for token verification, this is  the sawmill QR code Microtaggnant scan data, it is a condensed version of the Microtag Scan data. First letter corresponds to  the three letter combo of M. Second letter coreesponds to the two letter combo Ci. The third letter corresponds to the number Si.  
mToken <- read_excel("data/Microtagscan_Token.xlsx", 
                     col_names = FALSE)
View(mToken)


mTokenScan <- mToken
#Create key from mTokenKey, creating a data frame of the accepted criteria, represnted by the letter variables. 
TokenScanKey <- data.frame(letters = c('B','R','N','P','A'), description = c('aMicrotag', 'aMicrotag', 'aCriteria', 'aCriteria', 'aSupplier'))
TokenScanKey
mTokenScan
mTokenScan<- as.character(mTokenScan)
unlist(strsplit(mTokenScan, split = ''))
indices <- match(unlist(strsplit(mTokenScan, split = '')), TokenScanKey$letters)
indices
TokenScanKey$description[indices]
tScan_code<- unlist(strsplit(mTokenScan, ''))


LogToken_Verify <- function(mTokenScan, TokenScanKey) {
  tScan_code<- unlist(strsplit(mTokenScan, ''))
  indices <- match( tScan_code, TokenScanKey$letters)
  return(TokenScanKey$description[indices])
}

LogToken_Verify(mTokenScan, TokenScanKey)

mTokenScan1<- c('YMD', 'RPA', 'BNC', 'RPA')
sapply(mTokenScan1, function(x) LogToken_Verify(x,TokenScanKey))

tCreation<-sapply(mToken, function(x) LogToken_Verify(x,TokenScanKey))

if(tCreation =="aMicrotag" & "aCriteria" & "aSupplier") {
  print(token)
}
