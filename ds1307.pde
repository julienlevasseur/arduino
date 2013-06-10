#include <DS1307.h>
#include <WProgram.h>
#include <Wire.h> 

// Pour l horloge
int rtc[7];
int hour;
int minute;
int second;
int day;
int month;
int year;
int calendar;


void setup() {
 //time setting 
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
      houre=rtc[2];   
      calendar=rtc[3];
      day=rtc[4];
      month=rtc[5];
      year=rtc[6];
      minute=rtc[1];
      second=rtc[0];
      }
Serial.print(" ");
    if (jour < 10)
      {
      Serial.print("0");
      }
    Serial.print(day);
    Serial.print(" ");
    if (mois < 10)
      {
      Serial.print("0");
      }
    Serial.print(month);
    Serial.print(" ");
    Serial.print(year);
    Serial.print("   ");
    if (hour < 10)
      {
      Serial.print("0");
      }
    Serial.print(hour);
    Serial.print(":");
    if (minute < 10)
      {
      Serial.print("0");
      }
    Serial.print(minute);
    Serial.print(":");
    if (second < 10)
      {
      Serial.print("0");
      }
    Serial.print(second);
    Serial.println("   ");
delay(1000);

}
