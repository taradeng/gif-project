ArrayList<PImage> gif;
int n = 0;


void setup() {
  size(600, 600);
  gif = new ArrayList<PImage>(); //build the list
  int i = 0;
  while (i < 15) {
    String zero = "";
    if (i < 10) zero = "0";
    gif.add(loadImage("frame_"+ zero +i + "_delay-0.03s.png"));
    
    i++;
  }
 //frameRate(20); 
  
  
  
} 

void draw() {
  PImage frame = gif.get(n);
  image(frame, 0, 0, width, height);
  n++;
  if (n > 14) n = 0;
  
}
