int csPin = 53; 

void setup() {

  // Initialize serial for debugging with a computer :
  Serial.begin(9600);
  Serial.print("Initializing SD card...");
  //On Mega, the ping 53 must be left as an output or the SD library functions will not work (he's used as the CS pin)
  pinMode(csPin, OUTPUT);
  
  // Print a message on serial port to inform about the SD card status :
  if (!SD.begin(10)) {
    Serial.println("initialization failed!");
    return;
  }
  Serial.println("initialization done.");
  
}
