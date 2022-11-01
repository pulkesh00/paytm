import 'package:flutter/material.dart';
import 'ImageSliderPage.dart';

class ImageSlider extends StatefulWidget  {
  const ImageSlider({Key? key}) : super(key: key);
  @override
  State<ImageSlider> createState() => ImageSliderState();
}

class ImageSliderState extends State<ImageSlider> {


  late final  _controller = PageController();


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(2.0)),
        color: Colors.white,
      ),
      height: MediaQuery.of(context).size.height * 0.20,
      width: MediaQuery.of(context).size.width * 0.97,
      child: SingleChildScrollView(

        child: Column(
          children: <Widget>[
            Container(
              decoration: const BoxDecoration(color: Colors.white38, boxShadow: [
                BoxShadow(color: Colors.white10),
              ]),
              height: MediaQuery.of(context).size.height * 0.25,
              width: MediaQuery.of(context).size.width * 0.97,
              child: ImageSliderPage(),
            ),
          ],
        ),
      ),
    );
  }
}
