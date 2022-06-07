class CommentModel{




  late String text;
  late String dateTime;
  late String ownName;
  late String image;
  CommentModel({
    required this.dateTime,
    required this.text,
    required this.ownName,
    required this.image,
  });

  CommentModel.fromJson(Map<String, dynamic> json) {
    dateTime = json['dateTime'];
    text = json['text'];
    ownName = json['ownName'];
    image = json['image'];
  }

  Map<String, dynamic> toMap() {
    return {
      'dateTime': dateTime,
      'text': text,
      'ownName': ownName,
      'image': image,
    };
  }
}