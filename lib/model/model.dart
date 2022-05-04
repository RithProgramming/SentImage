class AddPhoto {
  String id;
  String name;
  String imageURL;

  AddPhoto({required this.id, required this.name, required this.imageURL});
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'imageURL': imageURL,
      };
  static AddPhoto fromJson(Map<String, dynamic> json) => AddPhoto(
        id: json['id'],
        name: json['name'],
        imageURL: json['imageURL'],
      );
}
