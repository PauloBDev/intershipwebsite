import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intershipwebsite/downloadFile/PDFPage.dart';
// import 'dart:html' as html;
// import 'dart:io';

// import 'package:pdf/widgets.dart' as pw;

class DownloadPage extends StatefulWidget {
  const DownloadPage({super.key});

  @override
  State<DownloadPage> createState() => _DownloadPageState();
}

class _DownloadPageState extends State<DownloadPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        child: Center(
          child: Stack(
            children: [
              SizedBox(
                height: 10000,
                width: 10000,
                child: Image.asset(
                  'assets/image1.png',
                  fit: BoxFit.cover,
                ),
              ),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.2),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(
                        20,
                      ),
                    ),
                  ),
                  child: TextButton(
                    onPressed: () async {
                      // await pdf();

                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PDFPage(),
                        ),
                      );
                    },
                    child: Text(
                      ' Download Report ',
                      style: GoogleFonts.montserrat(
                          fontSize: 64,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  // Future<void> pdf() async {
  //   final pdf = pw.Document();

  //   pdf.addPage(
  //     pw.Page(
  //       build: (pw.Context context) => pw.Center(
  //         child: pw.Text('Hello World!'),
  //       ),
  //     ),
  //   );

  //   final file = File('Relatório Final de Estágio Paulo Bernardino 3807.pdf');
  //   await file.writeAsBytes(await pdf.save());
  // }
}
