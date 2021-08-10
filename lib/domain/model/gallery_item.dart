class GalleryItem {
  GalleryItem(this.id, this.original, this.addedAt);
  final String id;
  final String original;
  final DateTime addedAt;

  Map<String, String?> toJson() => {
        'id': id,
        'original': original,
        'addedAt': addedAt.toString(),
      };
  GalleryItem.fromJson(Map json)
      : id = json['id'],
        original = json['original'],
        addedAt = DateTime.parse(json['addedAt']);
}
