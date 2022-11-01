import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class UpiIdPage extends StatefulWidget
{
  @override
  State<UpiIdPage> createState() => UpiIdPageState();
}

class UpiIdPageState extends State<UpiIdPage>{
  String upiId ='8953734328@paytm';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height * 0.72,
          decoration: const BoxDecoration(color: Colors.white),
          child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: SingleChildScrollView(
                child: Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(mainAxisAlignment: MainAxisAlignment.end, children:[ IconButton(onPressed: (){Navigator.pop(context);}, icon: const Icon(Icons.close),),],),
                      Container(
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.blue,
                        ),
                        height: 60,
                        width: 60,
                        child: const Icon(
                          Icons.person,
                          size: 40,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Pulkesh Tiwari',
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            height: 30,
                            width: 30,
                            child: SvgPicture.asset(
                              'assets/images/varified.svg',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            upiId,
                            style: const TextStyle(fontSize: 13),
                          ),
                          TextButton(
                              onPressed: () {},
                              child: Text('Copy',
                                  style: const TextStyle(fontSize: 13)))
                        ],
                      ),
                      const Text(
                        'Paytm: 8953734328',
                        style: TextStyle(fontSize: 13),
                      ),
                      const SizedBox(
                          height: 300,
                          width: 300,
                          child: Image(
                            image: NetworkImage(
                                'https://www.investopedia.com/thmb/KfGSwVyV8mOdTHFxL1T0aS3xpE8=/1148x1148/smart/filters:no_upscale()/qr-code-bc94057f452f4806af70fd34540f72ad.png'),
                            fit: BoxFit.fitHeight,
                          )),
                      SizedBox(
                          height: 90,
                          width: MediaQuery.of(context).size.width * 0.77,
                          child: const Text(
                              'The payment information that you provide is secure. Since 2000, Paytm has processed credit card payments and Upi payment  Security Standard (PCI DSS) and Payment Application Data Security Standard (PA DSS)',
                              style: TextStyle(
                                fontSize: 13,
                              ),
                              textAlign: TextAlign.justify)),
                    ],
                  ),
                ),
              )),
        ),

      ),

    );
  }


}