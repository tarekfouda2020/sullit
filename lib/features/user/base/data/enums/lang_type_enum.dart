enum LangTypeEnum{

  arabic,
  english,
  bangladesh;



   /// these codes returned from back-end and send it back to him for changing lang from its side
    String getLangCode(){
    switch(this){
      case arabic : return "sa";
      case english : return "en";
      case bangladesh : return "bd";
      default : return "en";
    }
}


}