import 'package:flutter/material.dart';

class AlertDialogApp extends StatelessWidget {
  const AlertDialogApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(
          255, 255, 255, 255), // Background untuk layar utama
      appBar: AppBar(
        title: const Text('Alert Dialog Example'), // Title untuk layar utama
        backgroundColor:
            Color.fromARGB(255, 164, 131, 220), // Warna background AppBar
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            child: const Text('Show alert'),
            onPressed: () {
              showAlertDialog(context); // Memanggil fungsi showAlertDialog
            },
          ),
        ),
      ),
    );
  }

  // Fungsi showAlertDialog didefinisikan di luar build method
  void showAlertDialog(BuildContext context) {
    // set up the button
    Widget okButton = TextButton(
      child: const Text("OK"),
      onPressed: () {
        Navigator.pop(context);
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: const Text(
        "Alert Title", // Judul alert
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      content: const Text("This is the alert message."), // Isi pesan alert
      backgroundColor: const Color.fromARGB(
          255, 255, 255, 255), // Background untuk AlertDialog
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
