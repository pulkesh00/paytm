import 'package:flutter/material.dart';
import 'package:paytm_app/MessageWindow.dart';
import 'HomePage.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({Key? key}) : super(key: key);
  @override
  State<MessagePage> createState() => MessagePageState();
}

class MessagePageState extends State<MessagePage> {
  bool shouldPop =true;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async { return shouldPop; },
    child:Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).maybePop();            },
            icon: const Icon(Icons.arrow_back)),
        title: const Text(
          'Message',
          style: TextStyle(fontSize: 25),
        ),
        backgroundColor: Colors.white,
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text(
              'New Chat',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          )
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  height: 60,
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(100.0)),


                    ),
                    margin: const EdgeInsets.all(6.0),
                    child: Center(
                      child:Card(
                        child: ListTile(
                        leading: IconButton(
                          icon: const Icon(Icons.search),
                          onPressed: () {
                            const TextField();
                          },
                        ),
                        title: const Padding(
                          padding: EdgeInsets.only(bottom: 8,),
                          child: TextField(
                          ),
                        ),
                      ),
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),

                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(

                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const MessageWindow()));

                        },
                        child:ListTile(

                          leading: Container(
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.blue,
                            ),
                            height: 40,
                            width: 40,
                            child:const Icon(Icons.person),
                          ),
                          title: const Text('Haldiram Sweets'),
                          subtitle: const Text('25rs. sent'),
                          trailing: const Text('Saturday'),
                        ),

                      ),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const MessageWindow()));

                        },
                        child:ListTile(
                          leading: Container(
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.blue,
                            ),
                            height: 40,
                            width: 40,
                            child:Image(image: const NetworkImage('https://lh3.googleusercontent.com/p/AF1QipMGXkgF5FOYBzAIE3UPanEsmCzCqUniyBj393nt=w1080-h608-p-no-v0'),fit: BoxFit.fill,),
                          ),
                          title: const Text('Nihal Sweets'),
                          subtitle: const Text('125rs. sent'),
                          trailing: const Text('Saturday'),
                        ),

                      ),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const MessageWindow()));

                        },
                        child:ListTile(
                          leading: Container(
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.blue,
                            ),
                            height: 40,
                            width: 40,
                            child:const Image(image: NetworkImage('https://res.cloudinary.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_508,h_320,c_fill/g0cgjd7msj1rz8jws9ia'),fit: BoxFit.fill),
                          ),
                          title: const Text('Vishnu Sweets'),
                          subtitle: const Text('575rs. sent'),
                          trailing: const Text('Saturday'),
                        ),

                      ),
                      InkWell(

                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const MessageWindow()));

                        },
                        child:ListTile(

                          leading: Container(
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.blue,
                            ),
                            height: 40,
                            width: 40,
                            child:const Icon(Icons.person),
                          ),
                          title: const Text('Haldiram Sweets'),
                          subtitle: const Text('25rs. sent'),
                          trailing: const Text('Saturday'),
                        ),

                      ),
                      InkWell(

                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const MessageWindow()));

                        },
                        child:ListTile(

                          leading: Container(
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.blue,
                            ),
                            height: 40,
                            width: 40,
                            child:const Icon(Icons.person),
                          ),
                          title: const Text('Haldiram Sweets'),
                          subtitle: const Text('25rs. sent'),
                          trailing: const Text('Saturday'),
                        ),

                      ),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const MessageWindow()));

                        },
                        child:ListTile(
                          leading: Container(
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.blue,
                            ),
                            height: 40,
                            width: 40,
                            child:Image(image: const NetworkImage('https://lh3.googleusercontent.com/p/AF1QipMGXkgF5FOYBzAIE3UPanEsmCzCqUniyBj393nt=w1080-h608-p-no-v0'),fit: BoxFit.fill,),
                          ),
                          title: const Text('Nihal Sweets'),
                          subtitle: const Text('125rs. sent'),
                          trailing: const Text('Saturday'),
                        ),

                      ),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const MessageWindow()));

                        },
                        child:ListTile(
                          leading: Container(
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.blue,
                            ),
                            height: 40,
                            width: 40,
                            child:const Image(image: NetworkImage('https://res.cloudinary.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_508,h_320,c_fill/g0cgjd7msj1rz8jws9ia'),fit: BoxFit.fill),
                          ),
                          title: const Text('Vishnu Sweets'),
                          subtitle: const Text('575rs. sent'),
                          trailing: const Text('Saturday'),
                        ),

                      ),
                      InkWell(

                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const MessageWindow()));

                        },
                        child:ListTile(

                          leading: Container(
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.blue,
                            ),
                            height: 40,
                            width: 40,
                            child:const Icon(Icons.person),
                          ),
                          title: const Text('Haldiram Sweets'),
                          subtitle: const Text('25rs. sent'),
                          trailing: const Text('Saturday'),
                        ),

                      ),
                      InkWell(

                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const MessageWindow()));

                        },
                        child:ListTile(

                          leading: Container(
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.blue,
                            ),
                            height: 40,
                            width: 40,
                            child:const Icon(Icons.person),
                          ),
                          title: const Text('Haldiram Sweets'),
                          subtitle: const Text('25rs. sent'),
                          trailing: const Text('Saturday'),
                        ),

                      ),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const MessageWindow()));

                        },
                        child:ListTile(
                          leading: Container(
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.blue,
                            ),
                            height: 40,
                            width: 40,
                            child:Image(image: const NetworkImage('https://lh3.googleusercontent.com/p/AF1QipMGXkgF5FOYBzAIE3UPanEsmCzCqUniyBj393nt=w1080-h608-p-no-v0'),fit: BoxFit.fill,),
                          ),
                          title: const Text('Nihal Sweets'),
                          subtitle: const Text('125rs. sent'),
                          trailing: const Text('Saturday'),
                        ),

                      ),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const MessageWindow()));

                        },
                        child:ListTile(
                          leading: Container(
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.blue,
                            ),
                            height: 40,
                            width: 40,
                            child:const Image(image: NetworkImage('https://res.cloudinary.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_508,h_320,c_fill/g0cgjd7msj1rz8jws9ia'),fit: BoxFit.fill),
                          ),
                          title: const Text('Vishnu Sweets'),
                          subtitle: const Text('575rs. sent'),
                          trailing: const Text('Saturday'),
                        ),

                      ),
                      InkWell(

                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const MessageWindow()));

                        },
                        child:ListTile(

                          leading: Container(
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.blue,
                            ),
                            height: 40,
                            width: 40,
                            child:const Icon(Icons.person),
                          ),
                          title: const Text('Haldiram Sweets'),
                          subtitle: const Text('25rs. sent'),
                          trailing: const Text('Saturday'),
                        ),

                      ),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const MessageWindow()));

                        },
                        child:ListTile(
                          leading: Container(
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.blue,
                            ),
                            height: 40,
                            width: 40,
                            child:Image(image: const NetworkImage('https://lh3.googleusercontent.com/p/AF1QipMGXkgF5FOYBzAIE3UPanEsmCzCqUniyBj393nt=w1080-h608-p-no-v0'),fit: BoxFit.fill,),
                          ),
                          title: const Text('Nihal Sweets'),
                          subtitle: const Text('125rs. sent'),
                          trailing: const Text('Saturday'),
                        ),

                      ),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const MessageWindow()));

                        },
                        child:ListTile(
                          leading: Container(
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.blue,
                            ),
                            height: 40,
                            width: 40,
                            child:const Image(image: NetworkImage('https://res.cloudinary.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_508,h_320,c_fill/g0cgjd7msj1rz8jws9ia'),fit: BoxFit.fill),
                          ),
                          title: const Text('Vishnu Sweets'),
                          subtitle: const Text('575rs. sent'),
                          trailing: const Text('Saturday'),
                        ),

                      ),



                ],),
                ),
              ],
        ),
          )
        ],
      ),
    ),
    );
  }
}
