class Timer{
  int savedTime;
  int totalTime;
  
  Timer(int temptotaltime){
    totalTime = temptotaltime;
  }
  
  void start(){
    savedTime = millis();
  }
  
  boolean isFinished() {
    int passTime = millis() - savedTime;
    if(passTime > totalTime)
      return true;
    else
      return false;
  }
}
