import 'package:enquiry/screens/enquiry_two.dart';
import 'package:enquiry/widgets/background.dart';
import 'package:enquiry/widgets/card.dart';
import 'package:flutter/material.dart';

class EnquiryOne extends StatefulWidget {
  const EnquiryOne({super.key});

  @override
  State<EnquiryOne> createState() => _EnquiryOneState();
}

class _EnquiryOneState extends State<EnquiryOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      alignment: Alignment.center,
      children: [
        Expanded(
          child: BaseLayout(
            image: "assets/images/Rectangle 34624655.png",
          ),
        ),
        CardLayout(
          foreground: "assets/images/rafiki.png",
          background: "assets/images/Vector1.png",
          onClick: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => EnquiryTwo()));
          },
        )
      ],
    ));
  }
}
