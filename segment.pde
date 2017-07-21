
class segment{

  float [][] liniaA = new float[4][50]; 
  float [][] liniaB = new float[4][50];
  
  //Arrays de pintura de linia
  //separació de les y en la variable a
  segment(float[][] a, float[][] b){
    arrayCopy(a, liniaA);
    arrayCopy(b, liniaB);
  }
    
  void pinta(){
    for (int i=0; i < 50; i++){
      line(liniaA[0][i],liniaA[1][i],liniaA[2][i],liniaA[3][i]);
      line(liniaB[0][i],liniaB[1][i],liniaB[2][i],liniaB[3][i]);
     } 
  }
}