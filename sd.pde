
void setup() {

  //On Mega, the ping 53 must be left as an output or the SD library functions will not work (he's used as the CS pin)
  pinMode(53, OUTPUT);
}
