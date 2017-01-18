class set{
String name, abriviation;
int numcards, releaseyear;
PImage img;
  set(String nm,String abv, int numofcards,int releasedate,String image){
    name = nm;
    abriviation = abv;
    numcards = numofcards;
    releaseyear = releasedate;
    img = loadImage(image);
    img.resize(img.width / 3, img.height / 3);
  }
  
  void Display( int x, int y, int xsize, int ysize){
    fill(115, 0, 115);
    rect(x, y, xsize, ysize);
    fill(0,0,0);
    textSize(40);
    text(abriviation,x + 13, y + 50);
    textSize(20);
    text(releaseyear, x + 25, y + 70);
    textSize(15);
    text(numcards, x + 40, y + 90);
    if(mouseX  > x && mouseX < x + xsize){
      if(mouseY  > y && mouseY < y + ysize){
        fill(255, 255, 0);
        rect(x, y, xsize, ysize);
        fill(0,0,0);
        textSize(40);
        text(abriviation,x + 13, y + 50);
        textSize(20);
        text(releaseyear, x + 25, y + 70);
        textSize(15);
        text(numcards, x + 40, y + 90);
        fill(255, 255, 255);
        rect(mouseX, mouseY, 350, 350);
        fill( 0, 0, 0);
        textSize(15);
        text("Name: " + name, mouseX + 5, mouseY + 20);
        text("Year Released: " +releaseyear, mouseX + 5, mouseY + 45);
        text("Number of Cards: " + numcards, mouseX + 5, mouseY + 70);
        image(img, mouseX + 30, mouseY + 100);
      }
    }
  }
}

set Theros;
set KhansofTarkir;
set BattleforZendikar;
set ShadowsOverInnistrad;
set ChampionsofKamigawa;
set BornoftheGods;
set ReturntoRavnica;
set Innistrad;
set AvicynRestored;
set MagicOrigins;
set Kaladesh;
set NewPhyrexia;
set RiseoftheEldrazi;
set UrzasSaga;
set Weatherlight;
set IceAge;
set FateReforged;
set Gatecrash;
set AetherRevolt;
set EldritchMoon; 

void setup(){
  size(1000, 1000);
  frameRate(30);
  stroke(0,0,0);
  
  Theros = new set("Theros", "THS", 249, 2013, "Theros.jpg");
  KhansofTarkir = new set("Khans of Tarkir", "KTK", 269, 2014, "KhansOfTarkir.jpg");
  BattleforZendikar = new set("Battle for Zendikar", "BFZ", 274, 2015, "BattleforZendikar.jpg");
  ShadowsOverInnistrad = new set("Shadows Over Innistrad", "SOI", 297, 2016, "ShadowsOverInnistrad.jpg");
  ChampionsofKamigawa = new set("Champions of Kamigawa", "CHK", 306, 2004, "ChampionsofKamigawa.jpg");
  BornoftheGods = new set("Born of the Gods", "BNG", 165, 2014, "BornoftheGods.jpg");
  ReturntoRavnica = new set("Return to Ravnica", "RTR", 274, 2012, "ReturntoRavnica.jpg");
  Innistrad = new set("Innistrad", "ISD", 264, 2011, "Innistrad.jpg");
  AvicynRestored = new set("Avavcyn Restored", "AVR", 244, 2012, "AvacynRestored.jpg");
  MagicOrigins = new set("Magic Origins" ,"ORI", 272, 2015, "MagicOrigins.jpg");
  Kaladesh = new set("Kalidesh", "KLD", 264 ,2016, "Kaladesh.jpg");
  NewPhyrexia = new set("New Phyrexia", "NPH", 244, 2011, "NewPhyrexia.jpg");
  RiseoftheEldrazi = new set("Rise of the Eldrazi", "ROE", 248, 2010, "RiseoftheEldrazi.jpg");
  UrzasSaga = new set("Urza's saga", "USG", 350, 1998, "UrzasSaga.jpg");
  Weatherlight = new set("Weatherlight", "WTH", 167, 1997, "Weatherlight.jpg");
  IceAge = new set("Ice Age", "ICE", 383, 1995, "IceAge.jpg");
  FateReforged = new set("Fate Reforged", "FRF", 269, 2015, "FateReforged.jpg");
  Gatecrash = new set("Gatecrash", "GTC", 249, 2013, "Gatecrash.jpg");
  AetherRevolt = new set("Aether Revolt", "AER", 205, 2017, "AetherRevolt.jpg");
  EldritchMoon = new set("Eldritch Moon", "EMN", 205, 2016, "EldritchMoon.jpg");
}

void draw(){
  background(255, 255, 255);
  fill(0, 255, 204);
  rect(700, 700, 250, 250);
  fill(0, 0, 0);
  textSize(70);
  text("NPH", 750, 800);
  textSize(45);
  text("2011", 770, 850);
  textSize(25);
  text("244", 800, 880);
  line(550,810,900,810);
  textSize(15);
  text("3 letter official id", 570, 800);
  line(550, 860, 900, 860);
  text("Year of set's release", 553, 855);
  line(550, 890, 900, 890);
  textSize(13);
  text("number of cards in set", 550, 880);
  textSize(15);
  text("Magic: the Gathering is a collectible card game in which you collect \n cards, assemble a deck with them, and then duel with other players \n(similar to Yu-Gi-Oh or Pokemon if you’ve heard of those before).\n Every few months, they release a new group of cards or a “set”.\n I chose to do this for my Periodic Table because I play this game \ndaily and have a lot of memories with it. The groups or columns \nare organized by card number, with similar amounts of cards being \nin the same row. Going down in each group the release date \nincreases, with the oldest sets at the top. The symbols I did not \ncome up with. There are official 3 letter code names for every set. \nI used those for my symbols because I couldn’t fit the whole names. \nI coded this in a language called processing. My project took me \nabout a day to code the first version and is 137 lines long. I also \nhave my code in a github page that I will link to in the email.",50 , 600);
  fill( 0, 0, 0);
  textSize(60);
  text("Key", 760, 685);
  IceAge.Display(750, 50, 100, 100);
  UrzasSaga.Display(650, 50, 100, 100);
  ShadowsOverInnistrad.Display(550, 150, 100, 100);
  ChampionsofKamigawa.Display(550, 50, 100, 100);
  BattleforZendikar.Display(450, 250, 100, 100);
  MagicOrigins.Display(450, 150, 100, 100);
  ReturntoRavnica.Display(450, 50, 100, 100);
  Kaladesh.Display(350, 350, 100, 100);
  FateReforged.Display(350, 250, 100, 100);
  KhansofTarkir.Display(350, 150, 100, 100);
  Innistrad.Display(350, 50, 100, 100);
  Theros.Display(250, 450, 100, 100);
  Gatecrash.Display(250, 350, 100, 100);
  AvicynRestored.Display(250, 250, 100, 100);
  NewPhyrexia.Display(250, 150, 100, 100);
  RiseoftheEldrazi.Display(250, 50, 100, 100);
  AetherRevolt.Display(150, 150, 100, 100);
  EldritchMoon.Display(150,50, 100, 100);
  BornoftheGods.Display(50, 150, 100, 100);
  Weatherlight.Display(50, 50, 100, 100);
}