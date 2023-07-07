import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
// import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

// import 'package:pdfx/pdfx.dart';

class PDFPage extends StatefulWidget {
  const PDFPage({
    super.key,
  });

  @override
  State<PDFPage> createState() => _PDFPageState();
}

class _PDFPageState extends State<PDFPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width / 2,
            child: Center(
              child: SfPdfViewer.asset(
                'assets/pdf.pdf',
                initialZoomLevel: 1,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
