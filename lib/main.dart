import 'package:flutter/material.dart';
import 'package:recognize_text/widget/text_recognition_widget.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  final String title = 'Text Recognition';

  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) =>
      MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        home: MainPage(mainTitle: title),
      );
}

  class MainPage extends StatefulWidget {
      final String mainTitle;
      
      const MainPage({
        required this.mainTitle,
  });
   @override
   _MainPageState createState() => _MainPageState(); 
  }
  
  class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text(widget.mainTitle),
    ),
    body: Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        children: const [
          SizedBox(height: 25,),
          TextRecognitionWidget(),
          SizedBox(height: 25,),
        ],
      ),
    ),
  );
  }
