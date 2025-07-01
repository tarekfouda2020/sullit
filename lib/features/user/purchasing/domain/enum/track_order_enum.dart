enum TrackOrderEnum{
 placed,
  packaging,
  shipped,
  delivered;


 String getTitle(){
   switch(this){
     case placed: return "Placed";
     case packaging: return "Packaging";
     case shipped: return "Shipped";
     case delivered: return "Delivered";
   }
 }


 int getStepNumber(){
   switch(this){
     case placed: return 1;
     case packaging: return 2;
     case shipped: return 3;
     case delivered: return 4;
   }
 }

}