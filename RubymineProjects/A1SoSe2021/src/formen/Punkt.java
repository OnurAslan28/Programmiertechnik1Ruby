package formen;

public class Punkt{
   private int x = 1;
   private int y = 1;

   public Punkt(int x,int y){
      this.x = x;
      this.y = y;
   }

   public int getY() {return y;}
   public int getX() {return x;}

   public Punkt plus(Punkt other){
      return new Punkt(this.x + other.x,this.y + other.y);
   }

   @Override
   public String toString() {
      return String.format("(%d,%d",x,y);
   }
}
