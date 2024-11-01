import 'package:flutter/material.dart';
import 'basic_widgets/text_widget.dart';
import 'basic_widgets/image_widget.dart';
import 'basic_widgets/increment_widget.dart';
import 'basic_widgets/alert_dialog_widget.dart';
import 'basic_widgets/textfield_widget.dart';
import 'basic_widgets/datepicker_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      // Ganti widget di sini sesuai dengan langkah yang diinginkan
      home:
          const DatePickerApp(), // Ganti widget ini dengan widget yang diinginkan
    );
  }
}
