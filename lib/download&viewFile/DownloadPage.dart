import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intershipwebsite/download&viewFile/PDFPage.dart';
import 'dart:convert';
import 'dart:html';

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
                width: double.infinity,
                height: double.infinity,
                child: Image.asset(
                  'assets/image1.png',
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.2),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(
                            20,
                          ),
                        ),
                      ),
                      child: TextButton(
                        onPressed: () {
                          downloadFile('assets/assets/pdf.pdf');
                        },
                        child: Text(
                          ' Download Report ',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.montserrat(
                              fontSize: 64,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Container(
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
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const PDFPage(),
                            ),
                          );
                        },
                        child: Text(
                          ' View Report ',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.montserrat(
                              fontSize: 64,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

downloadFile(url) {
  AnchorElement anchorElement = new AnchorElement(href: url);
  anchorElement.download = 'EI_3807_2023.pdf';
  anchorElement.click();
}

void download(
  List<int> bytes, {
  String? downloadName,
}) {
  debugPrint(bytes.toString());
  // Encode our file in base64
  final _base64 = base64Encode(bytes);
  // Create the link with the file
  final anchor =
      AnchorElement(href: 'data:application/octet-stream;base64,$_base64')
        ..target = 'blank';
  // add the name
  if (downloadName != null) {
    anchor.download = downloadName;
  }
  // trigger download
  document.body?.append(anchor);
  anchor.click();
  anchor.remove();
  return;
}
