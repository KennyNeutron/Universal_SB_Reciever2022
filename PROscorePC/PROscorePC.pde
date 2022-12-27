//Digital Scoreboard Reciever from Wireless via NRF--->MCU--->UART--->USB---COMPort
//By Kenny Neutron
PFont SevenSegFont;
PFont ArialNarrow;

//Global SB Variables
int GTime_MM=10;
int GTime_SS=0;
int HomeScore=124;
int GuestScore=123;
int HomeFoul=4;
int GuestFoul=5;
int HomeTOut=0;
int GuestTOut=0;
int Period=3;
int Shotclock=24;
int BallPos=3;

boolean Buzzer=false;
boolean Bz_toggle=false;

//UART
boolean uart_enable=false;
import processing.serial.*;
Serial CommUART_port;
int[] CommUART_data=new int[16];

//Sound Effect
import processing.sound.*;

SoundFile Buzzer_SoundEffect;


void setup() {
  size(1600, 900);
  SevenSegFont=createFont("7SegmentFont.ttf", 48);
  ArialNarrow=createFont("ArialNarrow7.ttf", 48);

  background(0);

  //String Serial_PortName = Serial.list()[0];
  //CommUART_port= new Serial(this, Serial_PortName, 115200);
  
  Buzzer_SoundEffect=new SoundFile(this, "BuzzerSoundEffect.mp3");
}

void draw() {
  background(0);
  PROscore_MINI();

  if(uart_enable==true) {
    Comm_UART();
  }
  
  if(Buzzer==true && Bz_toggle==false){
    Buzzer_SoundEffect.play();
    Bz_toggle=true;
  }
  
}
