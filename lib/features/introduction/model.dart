class PageModel{
  String? img;
  String? text;

  PageModel({this.img, this.text});

}
List<PageModel> introList=[PageModel(img:'image/intro1.png'
    ,text: "هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقدتم توليد هذا النص من مولد النص العربى،"),
  PageModel(img:'image/intro2.png'
      ,text: 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقدتم توليد هذا النص من مولد النص العربى،'),
  PageModel(img:'image/intro3.png'
      ,text: 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقدتم توليد هذا النص من مولد النص العربى،'),

];