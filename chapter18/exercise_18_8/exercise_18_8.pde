String runningtime;
PImage poster;
float rating;

void setup(){
  size(300, 350);
  loadData();
}

void draw(){
  background(255);
  image(poster, 10, 10, 160, 250);
  fill(0);
  text("Schindler's List", 10, 300);
  text(runningtime, 10, 320);
  text(rating, 10, 340);
}

void loadData() {
  String url = "http://www.imdb.com/title/tt0108052";
  String[] lines = loadStrings(url);
  String html = join(lines, "");
  
  String start = "<time datetime=\"PT195M\">";
  String end = "</time>";
  runningtime = giveMeTextBetween(html, start, end);
  
  start = "title=\"Schindler's List Poster\"";
  end = "\" />";
  String imgUrl = giveMeTextBetween(html, start, end);
  
  start = "<span class=\"rating\">";
  end = "<span";
  rating = float(giveMeTextBetween(html, start, end));
  
  imgUrl = imgUrl.substring(5,imgUrl.length());
  poster = loadImage(imgUrl);
}

String giveMeTextBetween(String s, String before, String after){
  
  int start = s.indexOf(before);
  if(start == -1){
    return "";
  }
  start += before.length();
  int end = s.indexOf(after, start);
  if(end == -1){
    return "";
  }
  
  return s.substring(start, end);
}
