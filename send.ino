// Arduino側
// https://scrapbox.io/ZawaBlogs/Arduino%E3%81%8B%E3%82%89Processing%E3%81%AB%E8%A4%87%E6%95%B0%E3%81%AEint%E5%9E%8B%E3%83%87%E3%83%BC%E3%82%BF%E3%82%92%E9%80%81%E3%82%8B
// ArduinoからProcessingに複数のint型データを送る（改）
// 二軸コントローラの利用
// A0:X軸　A1:Y軸　A2:プッシュスイッチ　を接続 (Arduinoのキットにあるコントローラモジュールを利用)
 
 
 void setup() {
   Serial.begin(9600);  // シリアル通信速度
 }
 
 void loop() {
     Serial.print(analogRead(A0));
     Serial.print(",");
     Serial.print(analogRead(A1));
     Serial.print(",");
     Serial.print(analogRead(A2));
     Serial.print("\n");
 
   delay(100);
 }
