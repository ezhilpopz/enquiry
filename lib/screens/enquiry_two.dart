import 'package:enquiry/screens/enquiry_three.dart';
import 'package:enquiry/widgets/background.dart';
import 'package:enquiry/widgets/card.dart';
import 'package:flutter/material.dart';

class EnquiryTwo extends StatefulWidget {
  const EnquiryTwo({super.key});

  @override
  State<EnquiryTwo> createState() => _EnquiryTwoState();
}

class _EnquiryTwoState extends State<EnquiryTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      alignment: Alignment.center,
      children: [
        Expanded(
          child: BaseLayout(
            image: "assets/images/Rectangle 34624655 (1).png",
          ),
        ),
        CardLayout(
          foreground: "assets/images/rafiki2.png",
          background: "assets/images/Vector2.png",
          onClick: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => EnquiryThree()));
          },
        )
      ],
    ));
  }
}
