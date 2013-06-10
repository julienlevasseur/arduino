#include <DS1307.h>
#include <WProgram.h>
#include <Wire.h> 

// Pour l horloge
int rtc[7];
int heure;
int minute;
int seconde;
int jour;
int mois;
int annee;
int calendrier;


void setup() {
 //reglage horloge 
 /* 
  RTC.stop();
  RTC.set(DS1307_SEC,1);
  RTC.set(DS1307_MIN,46);
  RTC.set(DS1307_HR,18);
  RTC.set(DS1307_DOW,2);
  RTC.set(DS1307_DATE,3);
  RTC.set(DS1307_MTH,8);
  RTC.set(DS1307_YR,10);
  RTC.start();
 */
}

void loop() {
 RTC.get(rtc,true);
    for(int i=0; i<7; i++)
      {
      heure=rtc[2];   
      calendrier=rtc[3];
      jour=rtc[4];
      mois=rtc[5];
      annee=rtc[6];
      minute=rtc[1];
      seconde=rtc[0];
      }
Serial.print(" ");
    if (jour < 10)
      {
      Serial.print("0");
      }
    Serial.print(jour);
    Serial.print(" ");
    if (mois < 10)
      {
      Serial.print("0");
      }
    Serial.print(mois);
    Serial.print(" ");
    Serial.print(annee);
    Serial.print("   ");
    if (heure < 10)
      {
      Serial.print("0");
      }
    Serial.print(heure);
    Serial.print(":");
    if (minute < 10)
      {
      Serial.print("0");
      }
    Serial.print(minute);
    Serial.print(":");
    if (seconde < 10)
      {
      Serial.print("0");
      }
    Serial.print(seconde);
    Serial.println("   ");
delay(1000);

}
