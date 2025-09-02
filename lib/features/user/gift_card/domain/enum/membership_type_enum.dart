
enum MembershipTypeEnum{
  executive,
  classic;

  String get nameStartWitchCapital{
   switch(this){
     case executive: return "Executive";
     case classic: return "Classic";
   }
  }

}