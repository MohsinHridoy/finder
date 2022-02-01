
class Stream1{
  String name;
  String image;

  Stream1(this.name,this.image);
}

List<Stream1> getModelList(){
   return <Stream1>[
     Stream1(
       "Mary,18 ",
         "assets/images/girls/img_1.jpeg"
     ),
     Stream1(
       "Mary,18 ",
       "assets/images/girls/img_2.jpeg"
     ),
     Stream1(
       "Mary,18 ",
       "assets/images/girls/img_3.jpeg"
     ),
     Stream1(
       "Mary,18 ",
       "assets/images/girls/img_4.jpeg"
     ),
     Stream1(
       "Mary,18 ",
       "assets/images/girls/img_5.jpeg"
     ),
     Stream1(
       "Mary,18 ",
       "assets/images/girls/img_6.jpeg"
     ),
   ];
}