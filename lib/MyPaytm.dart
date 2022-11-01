import 'dart:core';

import 'package:flutter/material.dart';
import 'package:paytm_app/MessageWindow.dart';
import 'package:paytm_app/UpiIdPage.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MyPaytm extends StatefulWidget {
  const MyPaytm({Key? key}) : super(key: key);
  @override
  State<MyPaytm> createState() => MyPaytmState();
}

class MyPaytmState extends State<MyPaytm> {
  String wallet = 'Paytm Wallet';
  String paytmBank = 'Paytm Bank';
  String personalLoan = 'Personal Loan';
  String postPaid = 'Paytm PostPaid';
  String creditCard = 'CreditCard';
  String cashbackOffers = "Cashback & Offers";
  String govtServices = 'Govt. Services';
  String allServices = 'All Services';

  String scanImage =
      'https://t4.ftcdn.net/jpg/04/32/55/23/360_F_432552366_rYFabKfwyX48Y1e5LDumECp7RuudbyTI.jpg';
  String toMobileImage =
      'https://previews.123rf.com/images/nm09/nm092011/nm09201100032/158655625-mobile-money-icon-indian-rupee-sign-and-transfer-arrow-on-mobile-phone-financial-and-smartphone-paym.jpg';
  String toUpiImage =
      'https://t4.ftcdn.net/jpg/04/80/90/99/360_F_480909924_U1t6OlSzIhptOPdj2TUqAPEFG0jhl2QU.jpg';
  String toBankImage =
      'https://png.pngtree.com/png-vector/20190927/ourlarge/pngtree-bank-icon-png-image_1757496.jpg';
  String toBalanceImage =
      'https://icons.veryicon.com/png/o/business/official-icon-of-qianjinding-supply-chain-2/balance-10.png';
  String selfAcImage =
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQYfRj1frGU4fWgGv9rZFtq0iQmPgUCo7fBMA&usqp=CAU';
  String referImage =
      'https://t4.ftcdn.net/jpg/03/76/22/13/360_F_376221393_BCtZD6rjPuXpPZiMPv2ybJyfyjje0Xv2.jpg';

  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:  BoxDecoration(
          borderRadius: const  BorderRadius.all(Radius.circular(20.0)),
          border: Border.all(color: const Color(0xff01064a)),
          boxShadow: const [
            BoxShadow(color: Colors.white),
          ]),

      height: MediaQuery.of(context).size.height * 0.22,
      width: MediaQuery.of(context).size.width * 0.97,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 15, top: 3),
                  child: Text(
                    "My Paytm",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                OutlinedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => UpiIdPage()));
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(3.0),
                    child: Text(
                      '8953734328@paytm',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
            ],
            ),
            Container(
             height: 100,
              width: MediaQuery.of(context).size.width * 0.97,
              child: PageView(
                controller: _controller,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MessageWindow()));
                        },
                        child: Column(
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              height: 50,
                              width: 50,
                              margin: const EdgeInsets.all(15.0),
                              child: Image(
                                image: NetworkImage(scanImage),
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(width: 10),
                            Text(
                              wallet,
                              style: TextStyle(fontSize: 10),
                            )
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MessageWindow()));
                        },
                        child: Column(
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              height: 50,
                              width: 50,
                              margin: const EdgeInsets.all(15.0),
                              child: Image(
                                image: NetworkImage(toMobileImage),
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(width: 10),
                            Text(
                              paytmBank,
                              style: TextStyle(fontSize: 10),
                            )
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MessageWindow()));
                        },
                        child: Column(
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              height: 50,
                              width: 50,
                              margin: const EdgeInsets.all(15.0),
                              child: Image(
                                image: NetworkImage(
                                  toUpiImage,
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(width: 10),
                            Text(
                              personalLoan,
                              style: TextStyle(fontSize: 10),
                            )
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MessageWindow()));
                        },
                        child: Column(
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              height: 50,
                              width: 50,
                              margin: const EdgeInsets.all(15.0),
                              child: Image(
                                image: NetworkImage(toBankImage),
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(width: 10),
                            Text(
                              postPaid,
                              style: TextStyle(fontSize: 10),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MessageWindow()));
                        },
                        child: Column(
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              height: 50,
                              width: 50,
                              margin: const EdgeInsets.all(15.0),
                              child: Image(
                                image: NetworkImage(toBalanceImage),
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(width: 10),
                            Text(
                              creditCard,
                              style: TextStyle(fontSize: 10),
                            )
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MessageWindow()));
                        },
                        child: Column(
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              height: 50,
                              width: 50,
                              margin: const EdgeInsets.all(15.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(100.0),
                                child: Image(
                                  image: NetworkImage(selfAcImage),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            Text(
                              cashbackOffers,
                              style: TextStyle(fontSize: 10),
                            )
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MessageWindow()));
                        },
                        child: Column(
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              height: 50,
                              width: 50,
                              margin: const EdgeInsets.all(15.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(100.0),
                                child: Image(
                                  image: NetworkImage(referImage),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            Text(
                              govtServices,
                              style: const TextStyle(fontSize: 10),
                            )
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MessageWindow()));
                        },
                        child: Column(
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              height: 50,
                              width: 50,
                              margin: const EdgeInsets.all(15.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(100.0),
                                child: Image(
                                  image: NetworkImage(referImage),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            Text(
                              allServices,
                              style: const TextStyle(fontSize: 10),
                            )
                          ],
                        ),
                      ),

                    ],
                  ),
                ],
              ),

            ),
            SizedBox(
              height: 10,
              child: SmoothPageIndicator(
                count: 2,
                controller: _controller,
                effect: const WormEffect(
                  activeDotColor: Color(0xf010114f),
                  dotColor: Colors.grey,
                  dotHeight: 16,
                ),




              ),
            )

            //ListView

            // child: ListView.builder(
            //     scrollDirection: Axis.horizontal,
            //     itemCount: iconName.length,
            //     itemBuilder: (context, int index) {
            //       return Row(
            //         mainAxisAlignment:
            //         MainAxisAlignment
            //             .spaceBetween,
            //         children: [
            //           SingleChildScrollView(
            //               child:Column(
            //                   mainAxisAlignment:
            //                   MainAxisAlignment.start,
            //                   children: <Widget>[
            //                     Container(
            //                       decoration:
            //                       const BoxDecoration(
            //                         shape:
            //                         BoxShape.circle,
            //                       ),
            //                       height: 50,
            //                       width: 50,
            //                       margin: const EdgeInsets
            //                           .all(15.0),
            //                       child: Image(
            //                         image: NetworkImage(
            //                             iconImage[index]),
            //                         fit: BoxFit.cover,
            //                       ),
            //                     ),
            //                     const SizedBox(width: 10),
            //                     Text(
            //                       iconName[index],
            //                       style: const TextStyle(
            //                           fontSize: 10),
            //                     )
            //                   ])
            //           ),
            //         ],
            //       );
            //     })),
          ],
        ),
      ),
    );
  }
}
