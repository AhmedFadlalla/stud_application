class HorseProductModel {
  late String userId;

  late String name;
  late String price;
  late String image;
  late String productInfo;
  late String phone;

  HorseProductModel({
   required this.userId,
    required this.name,
    required this.price,
    required this.image,
    required this.productInfo,
    required this.phone

});
  HorseProductModel.fromJson(Map<String,dynamic>? json){
    userId   =json!['userId'];
    name  =json['name'];
    price  =json['price'];
    image=json['image'];
    productInfo  =json['productInfo'];
    phone  =json['phone'];
  }
  Map<String,dynamic> toMap(){
    return
      {
        'userId':userId,
        'name':name,
        'price':price,
        'image':image,
        'productInfo':productInfo,
        'phone':phone,
      };
  }
}
