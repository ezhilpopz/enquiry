import 'package:enquiry/screens/enquiry_one.dart';
import 'package:enquiry/widgets/card.dart';
import 'package:flutter/material.dart';

import '../widgets/background.dart';

class EnquiryThree extends StatefulWidget {
  const EnquiryThree({super.key});

  @override
  State<EnquiryThree> createState() => _EnquiryThreeState();
}

class _EnquiryThreeState extends State<EnquiryThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      alignment: Alignment.center,
      children: [
        Expanded(
          child: BaseLayout(
            image: "assets/images/Rectangle 34624655 (2).png",
          ),
        ),
        CardLayout(
          foreground: "assets/images/rafiki3.png",
          background: "assets/images/Vector3.png",
          onClick: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => EnquiryOne()));
          },
        )
      ],
    ));
  }
}
