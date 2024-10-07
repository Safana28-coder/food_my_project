class Modalexample{

  String?name;
  int?age;
  String?place;

  Modalexample({
    this.place,
    this.age,
    this.name
});
   Map<String,dynamic> toMap(){
     return {

       'name':this.name,
       'age':this.age,
       'place':this.place,
     };
   }
  factory Modalexample.fromMap(Map<String,dynamic>map){
     return Modalexample(
       name: map['name']??'',
       place: map['place']??"",
       age: map['age']??""
     );

  }

  Modalexample copyWith({
    String? name,
    int?age,
    String?place


}){
     return Modalexample (
       age: age??this.age
     );

  }

}