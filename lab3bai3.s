  AREA RESET, DATA, READONLY
		DCD  0x20001000     
		DCD  Main   
soA DCD 21
soB DCD 4
	   AREA MYCODE, CODE, READONLY
    ENTRY ;Khai bao diem vao chuong trinh


Main
      LDR R1 ,soA
	  LDR R2 ,soB
	  MOV R3 ,#0 ; so nguyen
	  MOV R4 ,#0 ; so du
	 
	 

      CMP R1 ,R2 
	  BGT trur2 ; th > hon
	  BLT STOP
	  BEQ bang ; th bang

trur2 ; th >
  SUB R1 ,R2
  ADD R3 ,#1
  CMP  R1 ,R2
  BHS trur2
  BLT STOPdu ; th <
  
bang 
 ADD R3 ,#1

STOPdu
 SUB R3 ,#1
  ADD R4,R1
	  
	  
STOP
  
   ADD R4 ,R1


	
	
	NOP
	END