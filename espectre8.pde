 
import ddf.minim.analysis.*;
import ddf.minim.*;

Minim minim;  
AudioInput jingle;
FFT fftLin;

float height23;
float spectrumScale = 4;

int frame = 0;


void setup(){
  size(800, 600);
  
  frameRate(30);


  minim = new Minim(this);
  jingle=minim.getLineIn();
  
  // loop the file
  //jingle.loop();
  
  // create an FFT object that has a time-domain buffer the same size as jingle's sample buffer
  // note that this needs to be a power of two 
  // and that it means the size of the spectrum will be 1024. 
  // see the online tutorial for more info.
  fftLin = new FFT( jingle.bufferSize(), jingle.sampleRate() );
  fftLin.linAverages( 50 );  
  background(0); 

}




void draw() {
  frame++;
  fftLin.forward( jingle.mix );
  println(frame);
  ona o1 = new ona(fftLin, 50, 5, (40+(frame*7)));
  o1.pinta();
  if (frame == 150){
    delay(100);
    background(0);
    frame=0;
  }
}


  
  
  
  
  
  
  
  
  
  
  
  