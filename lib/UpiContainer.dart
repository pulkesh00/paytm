import 'dart:core';
import 'dart:core';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:paytm_app/MessageWindow.dart';

class UpiContainer extends StatefulWidget {
  const UpiContainer({Key? key}) : super(key: key);
  @override
  State<UpiContainer> createState() => UpiContainerState();
}

class UpiContainerState extends State<UpiContainer>
{
  String scan=        'Scan & Pay';
  String toMobile=    'To Mobile';
  String toUpiId=     'To UPI Id';
  String toBank=      'To Bank A/C';
  String balance=     'Balance & History';
  String selfAc=      'To self Account';
  String refer=       'Refer & Earn7';


  String  scanImage = 'https://t4.ftcdn.net/jpg/04/32/55/23/360_F_432552366_rYFabKfwyX48Y1e5LDumECp7RuudbyTI.jpg';
  String  toMobileImage ='https://previews.123rf.com/images/nm09/nm092011/nm09201100032/158655625-mobile-money-icon-indian-rupee-sign-and-transfer-arrow-on-mobile-phone-financial-and-smartphone-paym.jpg';
  String  toUpiImage ='https://t4.ftcdn.net/jpg/04/80/90/99/360_F_480909924_U1t6OlSzIhptOPdj2TUqAPEFG0jhl2QU.jpg';
  String  toBankImage=  'https://png.pngtree.com/png-vector/20190927/ourlarge/pngtree-bank-icon-png-image_1757496.jpg';
  String  toBalanceImage='https://icons.veryicon.com/png/o/business/official-icon-of-qianjinding-supply-chain-2/balance-10.png';
  String  selfAcImage =  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQYfRj1frGU4fWgGv9rZFtq0iQmPgUCo7fBMA&usqp=CAU';
  String  referImage ='https://t4.ftcdn.net/jpg/03/76/22/13/360_F_376221393_BCtZD6rjPuXpPZiMPv2ybJyfyjje0Xv2.jpg';


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(30.0)),
        color: Colors.white,
      ),
      height: MediaQuery.of(context).size.height * 0.3,
      width: MediaQuery.of(context).size.width * 0.97,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(

              decoration:  BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(20.0)),
                border: Border.all( color: Color(0xff01064a)),
                  color: Colors.white,
                  boxShadow: const [BoxShadow(color: Colors.white),
              ]),
              height: 240,
              width: MediaQuery.of(context).size.width * 0.97,
              child: Padding
                (
                padding: const EdgeInsets.all(5.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(left: 10, top: 3),
                            child: Text(
                              "UPI Money Transfer \u20b9",
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ),

                        ],
                      ),
                      Flexible(
                        flex: 1,
                        fit: FlexFit.tight,
                        child: Container(
                          decoration: const BoxDecoration(),
                          height: MediaQuery.of(context).size.height * 0.15,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  InkWell(
                                    onTap:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>MessageWindow()));
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
                                          child:  Image(
                                            image: NetworkImage(
                                                  scanImage),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        const SizedBox(width: 10),
                                        Text(scan,
                                          style: TextStyle(fontSize: 10),
                                        )
                                      ],
                                    ),
                                  ),
                                  InkWell(
                                    onTap:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>MessageWindow()));
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
                                          child:  Image(
                                            image: NetworkImage(
                                              toMobileImage),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        const SizedBox(width: 10),
                                        Text(
                                        toMobile,
                                            style: TextStyle(fontSize: 10),
                                        )
                                      ],
                                    ),
                                  ),
                                  InkWell(
                                    onTap:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>MessageWindow()));
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
                                          child:  Image(
                                            image: NetworkImage(
                                          toUpiImage,),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        const SizedBox(width: 10),
                                         Text(
                                          toUpiId,style: TextStyle(fontSize: 10),
                                        )
                                      ],
                                    ),
                                  ),
                                  InkWell(
                                    onTap:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>MessageWindow()));
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
                                          child:  Image(
                                            image: NetworkImage(
                                             toBankImage),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        const SizedBox(width: 10),
                                         Text(
                                          toBank,
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
                                    onTap:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>MessageWindow()));
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
                                            toBalanceImage),
                                            fit: BoxFit.cover,
                                          ),

                                        ),
                                        const SizedBox(width: 10),
                                         Text(
                                              balance,
                                          style: TextStyle(fontSize: 10),
                                        )
                                      ],
                                    ),
                                  ),
                                  InkWell(
                                    onTap:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>MessageWindow()));
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
                                          child:  ClipRRect(
                                            borderRadius: BorderRadius.circular(100.0),
                                            child:Image(
                                            image: NetworkImage(
                                              selfAcImage),
                                            fit: BoxFit.cover,
                                          ),
                                          ),
                                        ),
                                        const SizedBox(width: 10),
                                         Text(
                                          selfAc,
                                          style: TextStyle(fontSize: 10),
                                        )
                                      ],
                                    ),
                                  ),
                                  InkWell(
                                    onTap:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>MessageWindow()));
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
                                          child:  ClipRRect(
                                            borderRadius: BorderRadius.circular(100.0),
                                            child: Image(
                                            image: NetworkImage(
                                            referImage),
                                            fit: BoxFit.cover,
                                          ),
                                          ),
                                        ),
                                        const SizedBox(width: 10),
                                         Text(
                                        refer,
                                          style: const TextStyle(fontSize: 10),
                                        )
                                      ],
                                    ),
                                  ),
                                  Column(
                                      children: [
                                        Container(
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                          ),
                                          height: 50,
                                          width: 50,
                                          margin: const EdgeInsets.all(15.0),
                                        ),
                                        const SizedBox(width: 10),
                                        const Text(
                                          ''
                                        )
                                      ],
                                    ),

                                ],
                              ),
                            ],
                          ),
                        ),

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
                      ),
                    ],
                  ),

              ),
            ),
          ],
        ),
      ),
    );
  }
}
