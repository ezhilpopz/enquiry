import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class CardLayout extends StatefulWidget {
  final String foreground;
  final String background;
  final Function? onClick;

  const CardLayout({
    super.key,
    required this.foreground,
    required this.background,
    required this.onClick,
  });

  @override
  State<CardLayout> createState() => _CardLayoutState();
}

class _CardLayoutState extends State<CardLayout> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Card(
      shadowColor: Color(0xff0000004D),
      elevation: 2,
      child: Container(
        height: size.height / 1.76,
        width: size.width / 1.2,
        decoration: BoxDecoration(
            color: Color(0xffFFFFFF),
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                  color: Color(0xff0000004D), blurRadius: 10, spreadRadius: 10),
            ]),
        child: Expanded(
            child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      widget.onClick!();
                    },
                    child: Image.asset(
                      "assets/images/cancel.png",
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Image.asset("assets/images/undo.png"),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Image.asset(
                widget.foreground,
                scale: 2.5,
              ),
              SizedBox(
                height: 10,
              ),
              Stack(
                alignment: Alignment.topCenter,
                children: [
                  Image.asset(widget.background),
                  Column(
                    children: [
                      GradientText(
                        "Thank You For Enquiry",
                        style: TextStyle(
                            fontSize: size.height / 30,
                            fontWeight: FontWeight.w800),
                        colors: [
                          Color(0xffAF3BD1),
                          Color(0xff671C7D),
                          Color(0xff3D114A),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Your inquiry has been submitted successfully. Our team will get back to you shortly. Thank you for your patience!",
                        maxLines: 3,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: size.height * 0.016,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "View FAQs",
                    style: TextStyle(
                        color: Color(0xff73208D),
                        fontSize: size.height * 0.016,
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline),
                  ),
                  Text(
                    "Contact Support",
                    style: TextStyle(
                        color: Color(0xff73208D),
                        fontSize: size.height * 0.016,
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline),
                  ),
                ],
              )
            ],
          ),
        )),
      ),
    );
  }
}
