// https://scrapbox.io/ZawaBlogs/Arduino%E3%81%8B%E3%82%89Processing%E3%81%AB%E8%A4%87%E6%95%B0%E3%81%AEint%E5%9E%8B%E3%83%87%E3%83%BC%E3%82%BF%E3%82%92%E9%80%81%E3%82%8B
// ArduinoからProcessingに複数のint型データを送る（改）
// 二軸コントローラの利用
 
 import processing.serial.*;
 Serial myPort;
 
 int []data = new int [3];
 
 void setup() {
   myPort = new Serial(this, Serial.list()[1], 9600);
    size(400, 400);
 }
 
 void draw(){
   
  background(256,256,256); //背景色は白
 
  fill(0);                 //文字色は黒
  textSize(20);
 
  text(data[0],100,100);  //Arduinoから送信された値[0/3]の表示
  text(data[1],100,200);  //Arduinoから送信された値[1/3]の表示
  text(data[2],100,300);  //Arduinoから送信された値[2/3]の表示
 
 //棒グラフのデモ
 rect(160, 85,20+(data[0]/5),20);
 rect(160,185,20+(data[1]/5),20);
 rect(160,285,20+(data[2]/5),20);
 
 
 }
 
 //送られてきたデータを処理する関数
  void serialEvent(Serial p) {  
    String inString = myPort.readStringUntil('\n');
 
    if (inString != null) {
      inString = trim(inString);
      data = int(split(inString, ','));
      println(data);//受信したデータ配列を参照
    }
  }
