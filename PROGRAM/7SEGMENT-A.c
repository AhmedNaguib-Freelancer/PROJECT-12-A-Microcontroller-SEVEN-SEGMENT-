void main() {
 int num;
 TRISB=0;
 for(num=0; num<=9; num++)
 {
  PORTB=num;
  delay_ms(1000);
 }
}