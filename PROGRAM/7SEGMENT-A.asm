
_main:

;7SEGMENT-A.c,1 :: 		void main() {
;7SEGMENT-A.c,3 :: 		TRISB=0;
	CLRF       TRISB+0
;7SEGMENT-A.c,4 :: 		for(num=0; num<=9; num++)
	CLRF       R1+0
	CLRF       R1+1
L_main0:
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      R1+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main5
	MOVF       R1+0, 0
	SUBLW      9
L__main5:
	BTFSS      STATUS+0, 0
	GOTO       L_main1
;7SEGMENT-A.c,6 :: 		PORTB=num;
	MOVF       R1+0, 0
	MOVWF      PORTB+0
;7SEGMENT-A.c,7 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
	NOP
	NOP
;7SEGMENT-A.c,4 :: 		for(num=0; num<=9; num++)
	INCF       R1+0, 1
	BTFSC      STATUS+0, 2
	INCF       R1+1, 1
;7SEGMENT-A.c,8 :: 		}
	GOTO       L_main0
L_main1:
;7SEGMENT-A.c,9 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
