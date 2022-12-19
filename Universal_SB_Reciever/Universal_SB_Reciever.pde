//Digital Scoreboard Reciever from Wireless via NRF--->MCU--->UART--->USB---COMPort
//By Kenny Neutron
PFont SevenSegFont;
PFont ArialNarrow;

//Global SB Variables
int GTime_MM=10;
int GTime_SS=0;
int HomeScore=0;
int GuestScore=0;
int HomeFoul=0;
int GuestFoul=0;
int HomeTOut=0;
int GuestTOut=0;
int Period=1;
int Shotclock=24;
int BallPos=0;

import processing.serial.*;

Serial CommUART_port;
int[] CommUART_data=new int[16];


void setup() {
  size(1600, 900);
  SevenSegFont=createFont("7SegmentFont.ttf", 48);
  ArialNarrow=createFont("ArialNarrow7.ttf", 48);

  background(0);

  String Serial_PortName = Serial.list()[0];
  CommUART_port= new Serial(this, Serial_PortName, 115200);
}

void draw() {
  background(0);
  PROscore_plus();

  Comm_UART();
  //Clear_DataBuff();
  //print("SEC:");println(GTime_SS);
}
