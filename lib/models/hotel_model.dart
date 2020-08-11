class Hotel{
  String id;
  String name;
  String description;
  String address;
  String imageUrl;
  int rating;
  int price;
  bool isFavourite = false;


  Hotel({
    this.id,
    this.name,
    this.description,
    this.address,
    this.imageUrl,
    this.rating,
    this.price,
    this.isFavourite,
  });
}