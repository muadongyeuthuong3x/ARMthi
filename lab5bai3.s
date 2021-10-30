    AREA RESET, DATA, READONLY
	     	DCD 0X20002000
		    DCD MAIN
			
N DCD 37			
	 AREA MYCODE, CODE, READONLY
	ENTRY
			
MAIN  
      
      LDR R1 ,N
	  MOV R2 ,#0 ; Total so nguyen to 
      MOV R3,#0
	  MOV R4 , #1 ;sodu
	  MOV R5 ,#0 ; solay tru 3
	  MOV R6,#0 ; so tru5
	  MOV R7 ,#0 ; sotru 7
	 
      CMP R1, #1
      BEQ STOP; =1
      CMP R1, #2
      BEQ STOP1; =2
	  ADD R1 ,#1
	   
      CMP R1 , #2
      BGT Forlooptim
   
	  
Forlooptim  
      
	  SUB R1 ,#1
	  BLT DUNG
	  CMP R4 ,#0 ; tong du cua ca 3 =0 co count
	  BEQ tong
	  BGT LOOP
	  
	  
tong 
    ADD R2,#1
	BGT LOOP
	
LOOP 
    SUB R4 ,R4
    ADD R5 ,R1
    SUB R5, #3
	CMP  R5 , #3
	BHS LOOP
    BLT sodu

sodu 
    ADD R4, R5
    BGT LOOPP
	
LOOPP

	ADD R6 ,R1
    SUB R6, #5
	CMP  R6 , #5
	BHS LOOPP
    BLT soduu
	
soduu
   ADD R4, R6
   BGT LOOPPP
   
LOOPPP
    ADD R7 ,R1
    SUB R7, #7
	CMP  R7 , #7
	BHS LOOPPP
    BLT soduuu
   
soduuu
   ADD R4, R7
   BGT Forlooptim
    
	 
DUNG	 

	
STOP
   ADD R2 , #0 
STOP1
   ADD R1 , #1  


 
    NOP
	END