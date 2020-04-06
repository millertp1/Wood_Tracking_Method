Wood Tracking Method

Forest certification is becoming a significant indicator of corporate responsibility within the wood products industry. Blockchain technology can improve electronic traceability and ensure reliability, transparency, and security for certified raw materials and wood products. One of the significant challenges with tracking and verifying wood is finding affordable and feasible technology to do so. This use case will investigate if wood can be accurately tracked throughout the supply chain to ensure certification integrity. 

 

Pseudo-algorithm: If the microtaggant QR code matches with the input criteria and supplier identifier, then continue, if not revert. If the forester logged in the microtaggant QR code, then create associated log token if quantity is satisfied. If the sawmill scans the microtaggant QR code, it accepts the log tokens, then continues. For the accepted tokens if they are equal to required number of inputs and the required number of supplier addresses, the recipe for the new product (board) is attained, sawmill creates board token. 

The pseudo-algorithm blockchain execution is illustrated and stored in the figures folder.

All data scans and criteria keys were simulated and can be modified for useer prefrence for represnting variables and crieria

1.	Trees in a certified forest are harvested. The ends of the logs are tagged with a QR code using a stencil and microtaggant paint. The QR code will house tree location, season, and species. This will act as the certification necessary to create the log token.

Forester microtaggant QR code scan with script: 

Wood_Tracking:Forester_MicrotagScan.R - The initial microtaggant QR code scan is done by the forester, which corresponds to the physical logs that have been cut. To meet the conditions of acceptable products that can be entered into the supply chain, the QR code scan must satisfy 3 parameters of the token contract (Log Condition 1). The microtaggant paint scans by the forester (Forester_Mircotag_Scan.xlsx) will be matched against the criteria set in the Microtag_Scan_Key.xlsx


2. Once the microtaggant QR code is recorded and accepted, token contracts are created to represent batches of logs.  

Token creation for logs with script: 

Wood_Tracking: Log_TokenCreation.R - The microtaggant paint scan of the accpeted log batches will be matched against the token creation crieria, if the criteria isn't met the logs will be stored until the right quantity or paraemters are met for log token creation. Using the data files Microtagscan_Token.xlsx and MicrotagScan_TokenKey.xlsx to build functions and key for matching scans with criteria. 


3. The physical logs are transported to the sawmill. The sawmill will verify the microtaggant and QR code by scanning the QR code and verifying the microtaggant paint, ensuring the batch that has arrived is the one that corresponds to the log token in the blockchain. If the microtaggant paint scan is different in any way, the sawmill will reject the load of logs. If the microtaggant paint scan matches the phyiscal logs are accepted and the log tokens are consumed from the forester to the sawmill.

Second microtaggant QR code scan with script:

Wood_Tracking:Sawmill_MicrotagScan.R - The second microtaggant QR code scan is done by the sawmill. To meet the conditions of acceptable products that can be accepted by the sawmill and remain in the supply chain, the QR code scan must satisfy the 3 parameters of Log Condition 1 to be accepted and consumed by the sawmill. The microtaggant paint scans by sawmill (Sawmill_Mircotag_Scan.xlsx) will be matched against the criteria set in the Microtag_Scan_Key.xlsx

4.	The sawmill must define the number of logs used for production to create a batch of boards. The accpeted log batches will be matched against the board token creation crieria, if the criteria isn't met the logs will be stored until the right quantity or paraemters are met for board token creation.  

Token creation for boards with script:

Wood_Tracking:Board_TokenCreation.R - The accpeted log batches will be matched against the board token creation criteria. Using the data files Board_TokenKey.xlsx and Microtagscan_BoardToken.xlsx to build functions and key for matching scans with criteria.  

5.	Board tokens are acquired by the retailer. Before the transaction is approved, the retailers’s lumber contract verifies that the board token is a product of certified log tokens, resulting in the ability to verify the origin of the board or at least its certification status. If the board token data doesn't satisfy teh condtions the retailer will refuse to purchase the boards. 

Boards verfied with script:

Wood_Tracking:Board_ConditionScript.R - The board token data will be checked to meet the conditions of acceptable products that can be entered into the supply chain. The board token data must satisfy 3 parameters of the board contract (Board Condition 1). 

