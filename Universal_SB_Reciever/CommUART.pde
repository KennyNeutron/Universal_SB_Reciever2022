void Comm_UART() {
  if (CommUART_port.available()>0) {

    CommUART_data[0]=CommUART_port.read();
    int datacount=1;

    if (CommUART_data[0]=='A') {

      while (datacount<=11) {

        //while (CommUART_port.available()==0) {
        //}
        CommUART_data[datacount]=CommUART_port.read();
        datacount++;
      }
    }

    CommUART_port.clear();
  }



  if (CommUART_data[0]=='A' && CommUART_data[11]=='B') {
    print(char(CommUART_data[0]));
    print(",");
    print(char(CommUART_data[1]));
    print(",");
    print(char(CommUART_data[2]));
    print(",");
    print(char(CommUART_data[3]));
    print(",");
    print(char(CommUART_data[4]));
    print(",");
    print(char(CommUART_data[5]));
    print(",");
    print(char(CommUART_data[6]));
    print(",");
    print(char(CommUART_data[7]));
    print(",");
    print(char(CommUART_data[8]));
    print(",");
    print(char(CommUART_data[9]));
    print(",");
    print(char(CommUART_data[10]));
    print(",");
    println(char(CommUART_data[11]));
  }



  if (CommUART_data[0]=='A' && CommUART_data[11]=='B') {
    GTime_MM=CommUART_data[1]-32;
    GTime_SS=CommUART_data[2]-32;
    Shotclock=CommUART_data[4]-32;
    HomeScore=CommUART_data[6]-32;
    GuestScore=CommUART_data[7]-32;
    
    HomeFoul=(CommUART_data[8]-32)/10;
    GuestFoul=(CommUART_data[8]-32)%10;
  }
}

void TESTComm_UART() {
  if (CommUART_port.available()>0) {

    CommUART_data[0]=CommUART_port.read();
    if (CommUART_data[0]=='B') {
      println(CommUART_data[0]);
      CommUART_port.clear();
    } else {
      print(CommUART_data[0]);
      print(",");
    }
  }
}

void Clear_DataBuff() {
  CommUART_data[0]=0xFF;
  CommUART_data[1]=0xFF;
  CommUART_data[2]=0xFF;
  CommUART_data[3]=0xFF;
  CommUART_data[4]=0xFF;
  CommUART_data[5]=0xFF;
  CommUART_data[6]=0xFF;
}
