import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

class DrawerItems extends StatefulWidget {
  const DrawerItems({Key? key}) : super(key: key);

  @override
  State<DrawerItems> createState() => DrawerItemsState();
}

class DrawerItemsState extends State<DrawerItems> {
  String upiId = 'UPI ID: 8953734328@paytm';

  Widget text_copied() {
    Clipboard.setData(ClipboardData(text: upiId));
    return const SnackBar(content: Text('TextCopied'));
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(3.0),
      children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height * 0.72,
          decoration: const BoxDecoration(color: Colors.white),
          child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: SingleChildScrollView(
                child: Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10),
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
        Container (
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: const BorderRadius.all(Radius.circular(10.0)),
          ),
          child: Column(
            children: [
              Card(
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: InkWell(
                      onTap: () {},
                      splashColor: Colors.blue.shade900,
                      child: const ListTile(
                        leading: Icon(
                          Icons.safety_check,
                        ),
                        title: Text('24X7 Help & Support'),
                        subtitle: Text(
                            'Customer support, Your Queries, Frequently asked questions'),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          size: 15,
                        ),
                      )),
                ),
              ),
              Card(
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: InkWell(
                    onTap: () {},
                    splashColor: Colors.blue.shade900,
                    child: const ListTile(
                        dense: true,
                        visualDensity: VisualDensity(vertical: -3),
                        leading: Icon(
                          Icons.currency_exchange_rounded,
                        ),
                        title: Text(' UPI & Payment Setting'),
                        subtitle: Text(
                            'Change UPI PIN , Linked Bank Accounts, Automatic Payment, Payments & Subscription, Other Accounts'),
                        trailing: Padding(
                          padding: EdgeInsets.only(bottom: 15),
                          child: Icon(
                            Icons.arrow_forward_ios,
                            size: 15,
                          ),
                        )),
                  ),
                ),
              ),
              Card(
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: InkWell(
                      onTap: () {},
                      splashColor: Colors.blue.shade900,
                      child: const ListTile(
                        leading: Icon(Icons.shopping_bag_outlined),
                        title: Text('Orders & Booking'),
                        subtitle: Text(
                            'Recharge, Bill Payment, Shopping, Movies, Travel & others '),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          size: 15,
                        ),
                      )),
                ),
              ),
              Card(
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: InkWell(
                      onTap: () {},
                      splashColor: Colors.blue.shade900,
                      child: const ListTile(
                        leading: Icon(
                          Icons.card_giftcard,
                        ),
                        title: Text('Cashback & Offer'),
                        subtitle: Text(
                            'Scratchcards, Cashback Points, Vouchers and Offers '),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          size: 15,
                        ),
                      )),
                ),
              ),
              Card(
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: InkWell(
                      onTap: () {},
                      splashColor: Colors.blue.shade900,
                      child: const ListTile(
                        leading: Icon(
                          Icons.person_pin_rounded,
                        ),
                        title: Text('Profile Setting'),
                        subtitle: Text(
                            'Profile, Addresses, Security & Privacy, Notification, Languages '),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          size: 15,
                        ),
                      )),
                ),
              ),
              Card(
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: InkWell(
                      onTap: () {},
                      splashColor: Colors.blue.shade900,
                      child: const ListTile(
                        leading: Icon(
                          Icons.credit_card,
                        ),
                        title: Text('Paytm CITI Credit Card'),
                        subtitle: Text(
                            'Apply now and get 5% cashback on all spends '),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          size: 15,
                        ),
                      )),
                ),
              ),
              Card(
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: InkWell(
                      onTap: () {},
                      splashColor: Colors.blue.shade900,
                      child: const ListTile(
                        leading: Icon(
                          Icons.currency_rupee_outlined,
                        ),
                        title: Text('Instant Personal Loan'),
                        subtitle:
                            Text('\u20B9 3Lakh tak, bus 2min mein, Now get '),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          size: 15,
                        ),
                      )),
                ),
              ),
              Card(
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: InkWell(
                      onTap: () {},
                      splashColor: Colors.blue.shade900,
                      child: const ListTile(
                        leading: Icon(
                          Icons.escalator_warning,
                        ),
                        title: Text('Refer & Earn'),
                        subtitle: Text(
                            'Earn 100 \u20B9 cashback every time a friend makes their 1st payment from Bank A/C on paytm'),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          size: 15,
                        ),
                      )),
                ),
              ),
              Card(
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: InkWell(
                      onTap: () {},
                      splashColor: Colors.blue.shade900,
                      child: const ListTile(
                        leading: Icon(
                          Icons.punch_clock,
                        ),
                        title: Text('Digi Locker'),
                        subtitle: Text(
                            'Access 1000+ documents like PAN, Aadhar, Dl instantly on DigiLocker '),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          size: 15,
                        ),
                      )),
                ),
              ),
              Card(
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: InkWell(
                      onTap: () {},
                      splashColor: Colors.blue.shade900,
                      child: const ListTile(
                        leading: Icon(
                          Icons.policy,
                        ),
                        title: Text('Policies'),
                        subtitle: Text(
                            'Terms & condition, Privacy Policy, Grievance Redressal Mechanism'),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          size: 15,
                        ),
                      )),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const Image(
          image: NetworkImage(
              'https://www.braintreepayments.com/images/features/payment-methods/payment-methods.png'),
        ),
        SizedBox(
          height: 40,
        ),
        const Center(
          child: Text(
            'Version 1.0.0',
            style: TextStyle(color: Colors.pink, fontSize: 15),
          ),
        ),
        SizedBox(
          height: 40,
        ),
      ],
    );
  }
}
