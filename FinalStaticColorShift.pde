ImageEditor hermioneIE;
ImageEditor destinationIE;
void setup()
{
  size(826,550);
  hermioneIE = new ImageEditor("hermonie.jpg");
  //https://www.amazon.com/Hermione-Granger-POTTER-Get-Motivated/dp/B01M996HLW
  destinationIE = new ImageEditor(hermioneIE.width(), hermioneIE.height());
}

void draw()
{
  hermioneIE.startEditing();
  destinationIE.startEditing();
  
  for(int x = 0; x < 413; x++)
  {
    for( int y = 0; y < 550; y++)
    {
      int r = hermioneIE.getRedAt(x,y);
      int g = hermioneIE.getGreenAt(x,y);
      int b = hermioneIE.getBlueAt(x,y);
      
      destinationIE.setRedAt(int(random(r)),x,y);
      destinationIE.setGreenAt(int(random(g)),x,y);
      destinationIE.setBlueAt(int(random(b)),x,y);
    }
   }
    
  hermioneIE.stopEditing();
  destinationIE.stopEditing();
  hermioneIE.drawAt(0,0);
  destinationIE.drawAt(413,0);
}
