class onaStatic{

  FFT a;
  int separacio;
  int spectrumScale;
  float height23;
  boolean click = false;

  onaStatic(FFT ob, int sep, int spec, float heig){
    a=ob;
    separacio=sep;
    spectrumScale=spec;
    height23=heig;
  }

  void pinta(){
    noFill();
    stroke(255);

    //defineix la separacio de l'objecte(!)
    a.linAverages(separacio);
    //engega el mostreig
    a.forward( jingle.mix );

    // since linear averages group equal numbers of adjacent frequency bands
    // we can simply precalculate how many pixel wide each average's 
    // rectangle should be.
    int w = 11;
    
    //Arrays dimensionals
    float [][] liniaA = new float[4][separacio]; 
    float [][] liniaB = new float[4][separacio];
    
   
    for(int i = 0; i < fftLin.avgSize(); i++){
        
       fill(255);
       int j = i+10;
        
        // Pinta les línies que pujen
        line(j*w, height23, j*w + w/2, height23 - a.getAvg(i)*spectrumScale);
        line(j*w + w/2, height23 - a.getAvg(i)*spectrumScale, (j+1)*w, height23);
         
        liniaA[0][i] = j*w;
        liniaA[1][i] = height23;
        liniaA[2][i] = j*w+w/2;
        liniaA[3][i] = height23 - fftLin.getAvg(i)*spectrumScale;
      
        liniaB[0][i] = j*w + w/2;
        liniaB[1][i] = height23 - fftLin.getAvg(i)*spectrumScale;
        liniaB[2][i] = (j+1)*w;
        liniaB[3][i] = height23;
    }
  }
}
 
  
  