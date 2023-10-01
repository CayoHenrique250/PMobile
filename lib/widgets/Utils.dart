import 'package:image_picker/image_picker.dart';
// import 'dart:io';
// import 'package:path_provider/path_provider.dart';

pickerImage(ImageSource source) async {
  final ImagePicker imagePicker = ImagePicker();
  XFile? file = await imagePicker.pickImage(source: source);
  if (file != null) {
    return await file.readAsBytes();
  }
  print('Nenhuma imagem selecionada');
}

// ...

// Future<void> saveImage(File pickedImage) async {
//   final directory = await getApplicationDocumentsDirectory();
//   final imagePath = directory.path + '/saved_image.jpg';
//   await pickedImage.copy(imagePath);
//   // A imagem foi salva com sucesso no caminho especificado.
// }