import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ImageSliderPage extends StatelessWidget {
  ImageSliderPage({Key? key}) : super(key: key);

  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return 
      Column(
      children: [
//Page Change in a Container

        SizedBox(
          height: 135,
          child: PageView(
            controller: _controller,
            allowImplicitScrolling: true,
            pageSnapping: true,
            children: const <Widget>[

              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                child:  Image(
                    image: NetworkImage(
                        'https://in.bmscdn.com/offers/tncbanner/brahmastra-bm350.jpg?14072022142251'),
                    fit: BoxFit.scaleDown,
                  ),

              ),
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                child: Image(
                  image: NetworkImage(
                      'https://www.federalbank.co.in/documents/10180/85638912/KSEB-BillPayment.jpg/bb9d866d-b002-090d-5f04-ac861dc461ad?t=1648461797212 '),
                  fit: BoxFit.fitWidth,
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                child: Image(
                  image: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJUmU0oCorQ5M2obe8zbR0yMDWpG9UhfOlMw&usqp=CAU'),
                  fit: BoxFit.fitWidth,
                ),
              ),
            ],
          ),
        ),
//Dots for page change

        SizedBox(
            height: 10,
            child: SmoothPageIndicator(
              count: 3,
              controller: _controller,
              effect:
//https://pub.dev/packages/smooth_page_indicator/example
                  const JumpingDotEffect(
                activeDotColor: Colors.black54,
                dotColor: Colors.grey,
                dotHeight: 5,
              ),
            )),
//   Slidable(
//     startActionPane: ActionPane(
//       motion: const StretchMotion(),
//       children: [
//         SlidableAction(onPressed: ((context){}),
//         icon: Icons.check,
//             backgroundColor: Colors.green,
//         ),
//         SlidableAction(onPressed: ((context){}),
//           icon: Icons.delete,
//           backgroundColor: Colors.red,
//         ),
//       ],
//     ),
//     child:Card(
//     child: Column(
//       mainAxisAlignment: MainAxisAlignment.start,
//       children: <Widget>[
//         Row(
//           mainAxisAlignment:
//           MainAxisAlignment.spaceBetween,
//           children: const [
//             Padding(
//               padding:
//               EdgeInsets.only(left: 10, top: 3),
//               child: Text(
//                 "UPI Money Transfer",
//                 style: TextStyle(
//                   fontSize: 20,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ],
//     ),
//   ),
// ),),
      ],
    );
  }
}
