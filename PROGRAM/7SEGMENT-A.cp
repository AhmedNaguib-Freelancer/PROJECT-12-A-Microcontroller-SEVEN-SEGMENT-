#line 1 "C:/Users/only try/Desktop/PROJECT 12-A Microcontroller (SEVEN SEGMENT)/PROGRAM/7SEGMENT-A.c"
void main() {
 int num;
 TRISB=0;
 for(num=0; num<=9; num++)
 {
 PORTB=num;
 delay_ms(1000);
 }
}
