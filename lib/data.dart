

import 'dart:ui';

class PageModel{
  String imageUrl;
  String title;
  Color colorone;
  Color colortwo;
  String lorem;
  PageModel({this.imageUrl,this.title,this.colorone,this.colortwo,this.lorem});
}

var pageList = [
  PageModel(imageUrl: "assets/images/skate1.png",title:"September",colorone:Color(0xFFFFDECB),colortwo: Color(0xFF5B2944),lorem: "Lorem Ipsum è un testo segnaposto utilizzato \n nel settore della tipografia e della stampa"),
  PageModel(imageUrl: "assets/images/skate2.png",title:"Big Boss",colorone:Color(0xFFF0EDDD),colortwo: Color(0xFFA34252),lorem: "Lorem Ipsum è un testo segnaposto utilizzato \n nel settore della tipografia e della stampa"),
  PageModel(imageUrl: "assets/images/skate3.png",title:"Fly by me",colorone:Color(0xFFFF9ADA),colortwo: Color(0xFF080028),lorem: "Lorem Ipsum è un testo segnaposto utilizzato \n nel settore della tipografia e della stampa"),
];