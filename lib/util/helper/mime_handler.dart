import 'package:http_parser/http_parser.dart';
import 'package:path/path.dart';

class MimeHandler {
  static MediaType determine(String filename) {
    String type = 'image';
    String subtype = 'jpeg';
    switch (extension(filename)) {
      case '.png':
        subtype = 'png';
        break;
      default:
        break;
    }

    return MediaType(type, subtype);
  }
}
