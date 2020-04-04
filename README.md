# Wood_Tracking_Method
Forest certification is becoming a significant indicator of corporate responsibility within the wood products industry. Blockchain technology can improve electronic traceability and ensure reliability, transparency, and security for certified raw materials and wood products. One of the significant challenges with tracking and verifying wood is finding affordable and feasible technology to do so. This use case will investigate if wood can be accurately tracked throughout the supply chain to ensure certification integrity. 

 

Pseudo-algorithm: If the microtaggant QR code matches with the input criteria and supplier identifier, then continue, if not revert. If the forester logged in the microtaggant QR code, then create associated log token. If the sawmill scans the microtaggant QR code, it accepts the log tokens, then continues. For the accepted tokens if they are equal to required number inputs and required number of supplier addresses, the recipe for the new product (board) is attained, sawmill creates board token. 

The pseudo-algorithm blockchain execution is illustrated and stored in the figures folder.


1.	Trees in a certified forest are harvested. The ends of the logs are tagged with a QR code using a stencil and microtaggant paint. The QR code will house tree location, season, and species. This will act as the certification necessary to create the log token.

The microtaggant paint scans from both the forester and sawmill (data/Forester_Mircotag_Scan.xlsx & data/Board_TokenConditions_Sawmill.xlsx) will be matched against the criteria set in the  data/Microtag_Scan_Key.xlsx

The tracking process begins with script: 

Wood_Tracking:MicrotagScan.R - The initial microtaggant QR code scan is done by the forester, which corresponds to the physical logs that have been cut. To meet the conditions of acceptable products in the supply chain, the QR code scan must satisfy 3 3 parameters of the token contract. Identified in the script





The forester supply chain partner will sign into the blockchain app via phone/tablet. The main          screen will have 3 options: "resource supplier", "producer" and "retail". The forester supply           chain partner will choose "resource supplier", the next screen will have names of approved              certified forest suppliers, and the user will choose their forest. The user will be prompted to         provide a user ID unique to the supplier. The user will verify the microtaggant and QR code by          scanning the QR code and verifying the microtaggant, which will satisfy 2 out of 3 parameters of         the token contract. The last part of the token contract will be verified with the blockchain's          app ability to record/verify the location of data inputs.

2.	The resource supplier, the forester, creates a log contract once the microtaggant QR code is recorded, and the location is verified. Within the log contract, token contracts are created to represent batches of logs. The physical logs are transported to the lumber yard. The created token batch is sent to the sawmill through the execution of the transfer contract function.

3.	The physical logs arrive at the sawmill. 
    a.	The producer supply chain partner will sign into the blockchain app via phone/tablet, main              screen and will have 3 options: "resource supplier", "producer" and "retail". The forester              supply chain partner will choose "producer", the next screen will have names of Lowe's                  producers, the user will choose their company.  The user will be prompted to provide a user ID          unique to the producer. The user will verify the microtaggant and QR code by scanning the QR           code and verifying the microtaggant, which will satisfy the recipe for the creation of a board           token contract.

4.	The sawmill must define the number of logs used for production to create a batch of boards. The add-batch function will verify that the logs have been marked with microtaggant QR code, scanned, verified twice (1st scan at the forest and 2nd scan at the sawmill), and the initial scan was recorded in a certified origin. Upon the verification of origin and microtaggant QR code, the logs are consumed, the logs token's consumption function is called, the overall logs held in the forester's contract are reduced, and the sawmill now owns those corresponding tokens. 
        a.	Token transfer the forester holds thirty units of logs, and the sawmill holds two units of              logs and four units of boards (30÷7= 4 whole units and 2 leftover)
        
        b.	Board units corresponding to the board tokens could be marked or labeled with generated QR              code from the blockchain web application, which will reveal components of the product, in               this case, the origin of the logs (a certified forest). 

        c.	Each incoming log may produce a different number of boards depending on log shape and size,             thus potentially adding some complexity to the transition from log certification to board               certification. 

5.	Board tokens are acquired by Lowe’s. Before the transaction is approved, the Lowe’s lumber contract verifies that the board token is a product of certified log tokens, resulting in the ability to verify the origin of the board or at least its certification status. 
        a.	Physical boards are housed at Lowe's warehouse/store; the board tokens batch information can             be accessed on the blockchain web application. A label to be displayed on the price tag of              boards could have a generated QR code from the blockchain web application; this QR code will             reveal components of the product, in this case, the origin of the logs (a certified forest).
        


