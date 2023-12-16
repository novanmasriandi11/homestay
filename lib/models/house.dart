class House {
  int id;
  String name;
  String imageUrl;
  bool isFavorite;

  House(
      {required this.id,
      required this.imageUrl,
      required this.name,
      this.isFavorite = false});
}
