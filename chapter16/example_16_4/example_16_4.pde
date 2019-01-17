import processing.video.*;
Movie movie;

void setup(){
  size(720 ,540, P2D);
  background(0);
  movie = new Movie(this, "1.wmv");
}

void movieEvent(Movie movie){
  movie.read();
}

void draw(){
  float ratio = mouseX/(float)width;
  movie.jump(ratio*movie.duration());
  image(movie, 0, 0);
}
