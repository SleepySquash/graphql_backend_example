class Avatar {
  const Avatar({
    this.x1,
    this.y1,
    this.x2,
    this.y2,
    this.original,
    this.full,
    this.big,
    this.medium,
    this.small,
  });

  final int? x1, y1, x2, y2;
  final String? original;
  final String? full;
  final String? big;
  final String? medium;
  final String? small;

  Map<String, String?> toJson() => {
        'x1': x1.toString(),
        'y1': y1.toString(),
        'x2': x2.toString(),
        'y2': y2.toString(),
        'original': original,
        'full': full,
        'big': full,
        'medium': medium,
        'small': small,
      };
  Avatar.fromJson(Map<String, dynamic> json)
      : x1 = int.tryParse(json['x1']),
        y1 = int.tryParse(json['y1']),
        x2 = int.tryParse(json['x2']),
        y2 = int.tryParse(json['y2']),
        original = json['original'],
        full = json['full'],
        big = json['big'],
        medium = json['medium'],
        small = json['small'];
}
