import 'dart:convert';
import 'dart:io';

void main() {
  // readAsString("example.txt");
  // writeAsString();
  // readAsString("write_exmpl.txt");
  appendString("example.txt");
  readLineByLine("example.txt");
}

String path = "04\ Dart\ in\ Depth\ &\ OOP/Class\ 12\ -\ Generic\ and\ File";

void readAsString(String fileName) async {
  try {
    File file = File("$path/$fileName");
    String contents = await file.readAsString();
    print(contents);
  } catch (e) {
    print(e);
  }
}

void readLineByLine(String fileName) async {
  try {
    File file = File("$path/$fileName");
    Stream<String> streams =
        file.openRead().transform(utf8.decoder).transform(LineSplitter());
    var counter = 1;
    await for (var line in streams) {
      print("$counter $line");
      line = '$line\nAnother Line';
      counter++;
    }
    List<String> lines = await file.readAsLines();
    for (var line in lines) {
      print("$counter $line");

      counter++;
    }
  } catch (e) {}
}

void writeAsString() async {
  var file = File('$path/write_exmpl.txt');
  try {
    await file.writeAsString(
        "Writing an example for class 12. Dart file read and write operations");
  } catch (e) {
    print(e);
  }
}

void appendString(String filename) async {
  var file = File('$path/$filename');
  try {
    await file.writeAsString("Appending a New Text\n",
        mode: FileMode.writeOnlyAppend);
  } catch (e) {
    print(e);
  }
}

void writeAsBytes() async {
  final file = File('example.bin');
  try {
    await file.writeAsBytes([104, 101, 108, 108, 111]); // ASCII for 'hello'
    print('Binary data written successfully.');
  } catch (e) {
    print('Error: $e');
  }
}

void fileInfo() async {
  final file = File('example.txt');
  if (await file.exists()) {
    print('File exists');
    print('File size: ${await file.length()} bytes');
    print('Last modified: ${await file.lastModified()}');
  } else {
    print('File does not exist.');
  }
}

void createDir() async {
  final directory = Directory('new_directory');
  if (!await directory.exists()) {
    await directory.create();
    print('Directory created.');
  } else {
    print('Directory already exists.');
  }
}

void listingFilesInDir() async {
  final directory = Directory('.');
  try {
    await for (var entity in directory.list()) {
      print(entity.path);
    }
  } catch (e) {
    print('Error: $e');
  }
}

void fileCopy() async {
  final file = File('example.txt');
  try {
    await file.copy('example_copy.txt');
    print('File copied successfully.');
  } catch (e) {
    print('Error: $e');
  }
}

void fileRename() async {
  final file = File('example.txt');
  try {
    await file.rename('renamed_example.txt');
    print('File renamed successfully.');
  } catch (e) {
    print('Error: $e');
  }
}

void deleteFile() async {
  final file = File('example.txt');
  try {
    await file.delete();
    print('File deleted successfully.');
  } catch (e) {
    print('Error: $e');
  }
}

class FileModifier {
  late File _file;

  setFile(String path) {
    _file = File(path);
  }

  readFile() {}

  writeInFile() {}

  appendInFIle() {}

  seeInformation() {}

  void fileCopy() async {
    try {
      await _file.copy('example_copy.txt');
      print('File copied successfully.');
    } catch (e) {
      print('Error: $e');
    }
  }

  void fileRename() async {
    try {
      await _file.rename('renamed_example.txt');
      print('File renamed successfully.');
    } catch (e) {
      print('Error: $e');
    }
  }

  void deleteFile() async {
    try {
      await _file.delete();
      print('File deleted successfully.');
    } catch (e) {
      print('Error: $e');
    }
  }
}
