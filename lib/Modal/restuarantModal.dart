// class Restuarantmodal{
//    String?hotelname;
//    String?caption;
//    String?category;
//    List<Map<String, String>> items;
//    int?amount;
//    String?imageUrl;
//
//     Restuarantmodal({
//      this.category,
//       this.caption,
//       this.hotelname,
//       this.amount,
//       this.imageUrl,
//       this.items=const []
// });
//
//    Map<String,dynamic> toMap(){
//      return {
//        'hotelname':this.hotelname,
//        'amount':this.amount,
//        'caption':this.caption,
//        'category':this.category,
//        'items': this.items,
//        'image':this.imageUrl
//       };
//    }
//    factory Restuarantmodal.fromMap(Map<String,dynamic>Map){
//      return Restuarantmodal(
//          hotelname: Map['hotelname']??'',
//          category: Map['category']??'',
//          caption: Map['caption']??'',
//          amount: Map['amount']??'',
//          imageUrl: Map['image'],
//          items: Map['items'],
//      );
//    }
//    Restuarantmodal copyWith({
//      String? hotelname,
//      int?amount,
//      String? category,
//      String?caption,
//      List?items,
//      String?imageUrl
//
//    }
//        )
//    {
//      return Restuarantmodal(
//          caption: caption??this.caption,
//          amount: amount??this.amount,
//          category: category??this.category,
//          hotelname:hotelname??this.hotelname,
//        imageUrl: imageUrl??this.imageUrl,
//        items: (Map as List)
//            .map((item) => Map<String, String>.from(item))
//            .toList(),
//      );
class Restuarantmodal {
  String? hotelname;
  String? caption;
  String? category;
  List<Map<String, dynamic>> items;
  int? amount;
  String? imageUrl;
  String?bannerUrl;

  Restuarantmodal({
    this.category,
    this.caption,
    this.hotelname,
    this.amount,
    this.imageUrl,
    this.bannerUrl,
    this.items = const [],
  });

  Map<String, dynamic> toMap() {
    return {
      'hotelname': this.hotelname,
      'amount': this.amount,
      'caption': this.caption,
      'category': this.category,
      'items': this.items,
      'image': this.imageUrl,
      'bannerUrl':this.bannerUrl
    };
  }

  factory Restuarantmodal.fromMap(Map<String, dynamic> map) {
    return Restuarantmodal(
      hotelname: map['hotelname'] ?? '',
      category: map['category'] ?? '',
      caption: map['caption'] ?? '',
      amount: map['amount'] ?? 0,
      bannerUrl: map['bannerUrl'],
      imageUrl: map['image'],
      items: (map['items'] as List)
          .map((item) => Map<String, String>.from(item))
          .toList(),
    );
  }

  Restuarantmodal copyWith({
    String? hotelname,
    String?bannerUrl,
    int? amount,
    String? category,
    String? caption,
    List<Map<String, dynamic>>? items,
    String? imageUrl,
  }) {
    return Restuarantmodal(
      caption: caption ?? this.caption,
      bannerUrl: bannerUrl??this.bannerUrl,
      amount: amount ?? this.amount,
      category: category ?? this.category,
      hotelname: hotelname ?? this.hotelname,
      imageUrl: imageUrl ?? this.imageUrl,
      items: items ?? this.items,
    );
  }
}
