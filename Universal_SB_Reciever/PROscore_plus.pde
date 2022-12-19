void PROscore_plus() {
  String str_GameTime;
  String str_GTime_MIN;
  String str_GTime_SEC;
  String str_Period;
  String str_Shotclock;
  String str_HomeScore;
  String str_GuestScore;
  String str_HomeFoul;
  String str_GuestFoul;
  String str_HomeTOut;
  String str_GuestTOut;


  if (GTime_MM<10) {
    str_GTime_MIN="0"+str(GTime_MM);
  } else {
    str_GTime_MIN=str(GTime_MM);
  }

  if (GTime_SS<10) {
    str_GTime_SEC="0"+str(GTime_SS);
  } else {
    str_GTime_SEC=str(GTime_SS);
  }


  str_GameTime=str_GTime_MIN+":"+str_GTime_SEC;

  str_Period=str(Period);

  str_Shotclock=str(Shotclock);

  str_HomeScore=str(HomeScore);
  str_GuestScore=str(GuestScore);

  str_HomeFoul=str(HomeFoul);
  str_GuestFoul=str(GuestFoul);

  str_HomeTOut=str(HomeTOut);
  str_GuestTOut=str(GuestTOut);


  background(#008037);

  textAlign(CENTER, CENTER);
  fill(255);
  textFont(ArialNarrow);
  textSize(height/10);
  text("GAME TIME", width/2, height/20);
  text("HOME", width/8, (height/40)*30);
  text("AWAY", (width/100)*88, (height/40)*30);

  textSize(height/15);
  text("PERIOD", width/2, (height/40)*16);
  text("SHOTCLOCK", width/2, (height/6)*4);
  text("FOUL", width/15, (height/40)*16);
  text("FOUL", (width/15)*14, (height/40)*16);
  text("T.OUT", (width/15)*4, (height/40)*16);
  text("T.OUT", (width/15)*11, (height/40)*16);


  rectMode(RADIUS);

  //GAMETIME
  fill(0);
  rect(width/2, height/5, width/6, width/18);
  fill(#ff6600);
  textFont(SevenSegFont);
  textSize(height/6);
  text(str_GameTime, width/2, height/5);

  //PERIOD
  fill(0);
  rect(width/2, (height/100)*50, height/20, height/14);
  fill(#ff00ff);
  textSize(height/9);
  if (Period==5) {
    text("o", width/2, (height/100)*50);
  } else {
    text(str_Period, width/2, (height/100)*50);
  }

  //SHOTCLOCK
  fill(0);
  rect(width/2, (height/10)*8, height/7, height/10);
  fill(#ff0000);
  textSize(height/6);
  text(str_Shotclock, width/2, (height/10)*8);


  //HOME SCORE
  fill(0);
  rect((width/25)*3, (height/9)*8, width/10, height/10);
  fill(#ff0000);
  textSize(height/6);
  if (HomeScore<10) {
    text(str_HomeScore, (width/40)*7, (height/9)*8);
  } else if (HomeScore<100&&HomeScore>=10) {
    text(str_HomeScore, (width/80)*11, (height/9)*8);
  } else {
    text(str_HomeScore, width/10, (height/9)*8);
  }


  //GUEST SCORE
  fill(0);
  rect((width/60)*54, (height/9)*8, width/10, height/10);
  fill(#ff0000);
  textSize(height/6);

  if (GuestScore<100 && GuestScore>=10) {
    text(str_GuestScore, (width/60)*55, (height/9)*8);
  } else if (GuestScore<10) {
    text(str_GuestScore, (width/100)*93, (height/9)*8);
  } else {
    text(str_GuestScore, (width/60)*53, (height/9)*8);
  }

  //HOME FOUL
  fill(0);
  rect(width/15, (height/100)*50, height/20, height/14);
  fill(#00ff00);
  textSize(height/9);
  if (HomeFoul==6) {
    text("P", width/15, (height/100)*50);
  } else {
    text(str_HomeFoul, width/15, (height/100)*50);
  }

  //GUEST FOUL
  fill(0);
  rect((width/15)*14, (height/100)*50, height/20, height/14);
  fill(#00ff00);
  textSize(height/9);
  if (GuestFoul==6) {
    text("P", (width/15)*14, (height/100)*50);
  } else {
    text(str_GuestFoul, (width/15)*14, (height/100)*50);
  }

  //HOME TIME_OUT
  fill(0);
  rect((width/15)*4, (height/100)*50, height/20, height/14);
  fill(#0000ff);
  textSize(height/9);
  text(str_HomeTOut, (width/15)*4, (height/100)*50);

  //GUEST TIME_OUT
  fill(0);
  rect((width/15)*11, (height/100)*50, height/20, height/14);
  fill(#0000ff);
  textSize(height/9);
  text(str_GuestTOut, (width/15)*11, (height/100)*50);



  int W=width/100;
  int H=height/100;

  
  //HOME BALL POSS.
  fill(0);
  rectMode(CORNER);
  rect(W*19, H*11, W*9, H*18);
  fill(#ff0000);
  if (BallPos==1 || BallPos==3) {
    triangle(W*27, H*13, W*20, H*20, W*27, H*27);
  }

  //GUEST BALL POSS.
  fill(0);
  rectMode(CORNER);
  rect(W*72, H*11, W*9, H*18);
  fill(#ff0000);
  if (BallPos==2 || BallPos==3) {
    triangle(W*73, H*13, W*80, H*20, W*73, H*27);
  }

  stroke(255);
  strokeWeight(width/100);
  line(0, height/3, width, height/3);
  line(width/3, height/3, width/3, height);
  line((width/3)*2, height/3, (width/3)*2, height);
  strokeWeight(0);







  //line(0, height/2, width, height/2);
  //line(width/2,0,width/2,height);
}
