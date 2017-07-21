
class segment{

  float [][] liniaA = new float[4][50]; 
  float [][] liniaB = new float[4][50];
  int sep;
  
  //Arrays de pintura de linia
  //separació de les y en la variable a
  segment(float[][] a, float[][] b, int z){
    arrayCopy(a, liniaA);
    arrayCopy(b, liniaB);
    z = sep;
    
    for (int i=0; i < sep; i++){
      line(a[0][i],a[1][i]+z,a[2][i],a[3][i]+z);
      line(a[0][i],b[1][i]+z,b[2][i],b[3][i]+z);
     } 
  }

   
 
}