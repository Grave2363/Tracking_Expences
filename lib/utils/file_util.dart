import 'dart:io';
import 'package:path_provider/path_provider.dart';
// ignore: camel_case_types
class file_util
{
  // get file path
  Future<String> getFilePath() async {
    Directory appDocumentsDirectory = await getApplicationDocumentsDirectory();
    String appDocumentsPath = appDocumentsDirectory.path;
    String filePath = '$appDocumentsPath/expense.txt';

    return filePath;
    return filePath;
  }
  //save new text
  void saveFile(String cost, String name) async {
    File file = File(await getFilePath());
    file.writeAsString("placeholder");
  }
  //read file to edit
  void readFile() async {
    File file = File(await getFilePath());
    String fileContent = await file.readAsString();
  }
}