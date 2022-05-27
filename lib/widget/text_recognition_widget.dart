import 'dart:io';

import 'package:flutter/material.dart';
import 'package:recognize_text/widget/controls_widget.dart';

class TextRecognitionWidget extends StatefulWidget {
  const TextRecognitionWidget({
    Key? key,
  }) : super(key: key);

  @override
  _TextRecognitionWidgeState createState() => _TextRecognitionWidgeState();
}

class _TextRecognitionWidgeState extends State<TextRecognitionWidget> {
  String text = '';
  late File image;

  @override
  Widget build(BuildContext context) => Expanded(
          child: Column(
        children: [
          Expanded(child: buildImage()),
          const SizedBox(
            height: 16,
          ),
          ControlsWidget(
              onClickedPickImage: () => {},
              onClickedScanText: () => {},
              onClickedClear: () => {})
        ],
      ));

  Widget buildImage() => Container(
      // child: image != null
      //     ? Image.file(image)
      //     : const Icon(Icons.photo, size: 80, color: Colors.black)
     );

  Future pickImage() async {
    final file = await ImagePicker().getImage(source: ImageSource.gallery);
    setImage(File(file.path));
  }
}
