import 'package:flutter/material.dart';
import 'package:paytm_app/MyPaytm.dart';
import 'MessagePage.dart';
import 'SearchBar.dart';
import 'UpiContainer.dart';

import 'ImageSlider.dart';

class FrontPage extends StatefulWidget {
  const FrontPage({Key? key}) : super(key: key);
  @override
  State<FrontPage> createState() => FrontPageState();
}

class FrontPageState extends State<FrontPage> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar (
          expandedHeight: 250,
          title: RichText(
            text: const TextSpan(
              children: [
                TextSpan(
                  text: 'Pay',
                  style: TextStyle(color: Colors.red, fontSize: 28),
                ),
                TextSpan(
                  text: 'tm',
                  style: TextStyle(color: Colors.blueAccent, fontSize: 28),
                ),
              ],
            ),
          ),
          backgroundColor: const Color(0xff01064a),
          actions: <Widget>[
            IconButton(onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context)=>const SearchBar()));},
                icon: const Icon(Icons.search)),
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MessagePage()));
                },
                icon: const Icon(Icons.messenger)),
          ],
          flexibleSpace: const FlexibleSpaceBar(
            background: Image(
              image: NetworkImage(
                  'https://www.financialexpress.com/wp-content/uploads/2022/08/bill-payment.png'),
              fit: BoxFit.cover,
            ),
          ),
          iconTheme: const IconThemeData(color: Colors.white),
        ),
        SliverToBoxAdapter(
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0)),
            ),
            width: MediaQuery.of(context).size.width * 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,

              children: const <Widget>[
                SizedBox(
                  height: 8,
                ),
                ImageSlider(),
                SizedBox(
                  height: 8,
                ),
                UpiContainer(),
                SizedBox(
                  height: 8,
                ),

                MyPaytm(),
                SizedBox(
                  height: 8,
                ),

                UpiContainer(),
                SizedBox(
                  height: 8,
                ),

                UpiContainer(),
                SizedBox(
                  height: 8,
                ),

                UpiContainer(),
                SizedBox(
                  height: 8,
                ),

                UpiContainer(),
                SizedBox(
                  height: 8,
                ),

                UpiContainer(),
                SizedBox(
                  height: 8,
                ),

                UpiContainer(),
                SizedBox(
                  height: 8,
                ),

              ],
            ),
          ),
        ),
      ],
    );
  }
}
