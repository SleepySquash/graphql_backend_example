import 'package:file_selector/file_selector.dart';
import 'package:http_parser/http_parser.dart';

import 'mime_handler.dart';

class FileDetails {
  FileDetails(this.path, this.name, this.mime);
  final String path;
  final String name;
  final MediaType mime;
}

class FilePicker {
  static Future<FileDetails?> open(List<String> extensions) async {
    final XTypeGroup typeGroup =
        XTypeGroup(label: 'images', extensions: extensions);
    XFile? file = await openFile(acceptedTypeGroups: [typeGroup]);

    if (file == null) {
      return null;
    } else {
      return FileDetails(
          file.path, file.name, MimeHandler.determine(file.name));
    }
  }
}
