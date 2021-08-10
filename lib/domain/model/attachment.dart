abstract class Attachment {
  Attachment(this.id, this.original, this.filename, this.size);
  String id;
  String original;
  String filename;
  int size;
}

class ImageAttachment extends Attachment {
  ImageAttachment(String id, String original, String filename, int size,
      {this.big, this.medium, this.small})
      : super(id, original, filename, size);
  final String? big;
  final String? medium;
  final String? small;
}

class FileAttachment extends Attachment {
  FileAttachment(String id, String original, String filename, int size)
      : super(id, original, filename, size);
}
