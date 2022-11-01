import 'package:flutter/material.dart';

class MessageWindow extends StatefulWidget
{
  const MessageWindow({Key? key}) :super(key: key);
  @override
  State<MessageWindow> createState() => MessageWindowState();
}


class MessageWindowState extends State<MessageWindow>
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){Navigator.pop(context);}, icon:const Icon(Icons.arrow_back_ios)),


        title:Row(
          mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue,
                ),
                height: 40,
                width: 40,
                child:const ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(100.0)),
                child: Image(image: NetworkImage('https://lh3.googleusercontent.com/p/AF1QipMGXkgF5FOYBzAIE3UPanEsmCzCqUniyBj393nt=w1080-h608-p-no-v0'),fit: BoxFit.fill,),
              ),),
              const SizedBox(width: 10),
              const Center(child:Text('Nihal Sweets',style: TextStyle(fontSize: 20,))),
            ],
          ),
      ),
       floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {  },
        backgroundColor: const Color(0xff01064a),
        label: const Text('Pay',style: TextStyle(color: Colors.white, fontSize: 15),),
        icon: const Icon(Icons.currency_rupee,color: Colors.white,),
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
        decoration: const BoxDecoration(
          color: Color(0xE7EAE7DD),

        ),
        width: MediaQuery.of(context).size.width*0.999,
        height: 640,
        child:
        SingleChildScrollView(
        child:Column(
          children:  [
            const Center(
              child: Card(
                child:Padding(padding: EdgeInsets.all(4.0),child: Text('28 September 2021'),),
              ),
            ),
           Container(
                height: 80,
                width: 200,
                margin: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.5),
                child: const Card(
                  color: Color(0xffbaf2a5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30.0),
                      bottomRight:Radius.circular(50.0) ,
                      topLeft: Radius.circular(50.0),),

                  ),

                child: Padding(padding: EdgeInsets.all(15.0),
                  child:FittedBox(
                  fit: BoxFit.contain,
                  child:Text('150 \u20b9 sent.',style: TextStyle(fontSize: 40, fontWeight: FontWeight.w400),),),
                  ),
                ),
                ),
           Container(
                height: 80,
                width: 200,
             margin: EdgeInsets.only(right: MediaQuery.of(context).size.width*0.5),

             child:const Card(
                  color: Color(0xfffcb8b8),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(70.0),
                          bottomRight:Radius.circular(50.0) ,
                          topRight: Radius.circular(80.0)),

                  ),
                  child:Padding(padding: EdgeInsets.all(4.0),
                    child:FittedBox(
                      fit: BoxFit.contain,
                    child:Text('50 \u20b9 received.',style: TextStyle(fontSize: 40, fontWeight: FontWeight.w400),),),
                ),
             ),
              ),
            Container(
              height: 80,
              width: 200,
              margin: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.5),
              child: const Card(
                color: Color(0xffbaf2a5),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30.0),
                    bottomRight:Radius.circular(50.0) ,
                    topLeft: Radius.circular(50.0),),

                ),

                child: Padding(padding: EdgeInsets.all(15.0),
                  child:FittedBox(
                    fit: BoxFit.contain,
                    child:Text('150 \u20b9 sent.',style: TextStyle(fontSize: 40, fontWeight: FontWeight.w400),),),
                ),
              ),
            ),
            Container(
              height: 80,
              width: 200,
              margin: EdgeInsets.only(right: MediaQuery.of(context).size.width*0.5),

              child:const Card(
                color: Color(0xfffcb8b8),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(70.0),
                      bottomRight:Radius.circular(50.0) ,
                      topRight: Radius.circular(80.0)),

                ),
                child:Padding(padding: EdgeInsets.all(4.0),
                  child:FittedBox(
                    fit: BoxFit.contain,
                    child:Text('50 \u20b9 received.',style: TextStyle(fontSize: 40, fontWeight: FontWeight.w400),),),
                ),
              ),
            ),
            Container(
              height: 80,
              width: 200,
              margin: EdgeInsets.only(right: MediaQuery.of(context).size.width*0.5),

              child:const Card(
                color: Color(0xfffcb8b8),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(70.0),
                      bottomRight:Radius.circular(50.0) ,
                      topRight: Radius.circular(80.0)),

                ),
                child:Padding(padding: EdgeInsets.all(4.0),
                  child:FittedBox(
                    fit: BoxFit.contain,
                    child:Text('50 \u20b9 received.',style: TextStyle(fontSize: 40, fontWeight: FontWeight.w400),),),
                ),
              ),
            ),

            const Center(
              child: Card(
                child:Padding(padding: EdgeInsets.all(4.0),child:Text('16 September 2021'),),
              ),
            ),
            Container(
              height: 80,
              width: 200,
              margin: EdgeInsets.only(right: MediaQuery.of(context).size.width*0.5),

              child:const Card(
                color: Color(0xfffcb8b8),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(70.0),
                      bottomRight:Radius.circular(50.0) ,
                      topRight: Radius.circular(80.0)),

                ),
                child:Padding(padding: EdgeInsets.all(4.0),
                  child:FittedBox(
                    fit: BoxFit.contain,
                    child:Text('50 \u20b9 received.',style: TextStyle(fontSize: 40, fontWeight: FontWeight.w400),),),
                ),
              ),
            ),
            Container(
              height: 80,
              width: 200,
              margin: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.5),
              child: const Card(
                color: Color(0xffbaf2a5),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30.0),
                    bottomRight:Radius.circular(50.0) ,
                    topLeft: Radius.circular(50.0),),

                ),

                child: Padding(padding: EdgeInsets.all(15.0),
                  child:FittedBox(
                    fit: BoxFit.contain,
                    child:Text('150 \u20b9 sent.',style: TextStyle(fontSize: 40, fontWeight: FontWeight.w400),),),
                ),
              ),
            ),
            Container(
              height: 80,
              width: 200,
              margin: EdgeInsets.only(right: MediaQuery.of(context).size.width*0.5),

              child:const Card(
                color: Color(0xfffcb8b8),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(70.0),
                      bottomRight:Radius.circular(50.0) ,
                      topRight: Radius.circular(80.0)),

                ),
                child:Padding(padding: EdgeInsets.all(4.0),
                  child:FittedBox(
                    fit: BoxFit.contain,
                    child:Text('50 \u20b9 received.',style: TextStyle(fontSize: 40, fontWeight: FontWeight.w400),),),
                ),
              ),
            ),
            Container(
              height: 80,
              width: 200,
              margin: EdgeInsets.only(right: MediaQuery.of(context).size.width*0.5),

              child:const Card(
                color: Color(0xfffcb8b8),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(70.0),
                      bottomRight:Radius.circular(50.0) ,
                      topRight: Radius.circular(80.0)),

                ),
                child:Padding(padding: EdgeInsets.all(4.0),
                  child:FittedBox(
                    fit: BoxFit.contain,
                    child:Text('50 \u20b9 received.',style: TextStyle(fontSize: 40, fontWeight: FontWeight.w400),),),
                ),
              ),
            ),
            const Center(
              child: Card(
                child:Padding(padding: EdgeInsets.all(4.0),child: Text('11 September 2021'),),
              ),
            ),
            Container(
              height: 80,
              width: 200,
              margin: EdgeInsets.only(right: MediaQuery.of(context).size.width*0.5),

              child:const Card(
                color: Color(0xfffcb8b8),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(70.0),
                      bottomRight:Radius.circular(50.0) ,
                      topRight: Radius.circular(80.0)),

                ),
                child:Padding(padding: EdgeInsets.all(4.0),
                  child:FittedBox(
                    fit: BoxFit.contain,
                    child:Text('50 \u20b9 received.',style: TextStyle(fontSize: 40, fontWeight: FontWeight.w400),),),
                ),
              ),
            ),
            Container(
              height: 80,
              width: 200,
              margin: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.5),
              child: const Card(
                color: Color(0xffbaf2a5),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30.0),
                    bottomRight:Radius.circular(50.0) ,
                    topLeft: Radius.circular(50.0),),

                ),

                child: Padding(padding: EdgeInsets.all(15.0),
                  child:FittedBox(
                    fit: BoxFit.contain,
                    child:Text('150 \u20b9 sent.',style: TextStyle(fontSize: 40, fontWeight: FontWeight.w400),),),
                ),
              ),
            ),
            Container(
              height: 80,
              width: 200,
              margin: EdgeInsets.only(right: MediaQuery.of(context).size.width*0.5),

              child:const Card(
                color: Color(0xfffcb8b8),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(70.0),
                      bottomRight:Radius.circular(50.0) ,
                      topRight: Radius.circular(80.0)),

                ),
                child:Padding(padding: EdgeInsets.all(4.0),
                  child:FittedBox(
                    fit: BoxFit.contain,
                    child:Text('50 \u20b9 received.',style: TextStyle(fontSize: 40, fontWeight: FontWeight.w400),),),
                ),
              ),
            ),
            Container(
              height: 80,
              width: 200,
              margin: EdgeInsets.only(right: MediaQuery.of(context).size.width*0.5),

              child:const Card(
                color: Color(0xfffcb8b8),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(70.0),
                      bottomRight:Radius.circular(50.0) ,
                      topRight: Radius.circular(80.0)),

                ),
                child:Padding(padding: EdgeInsets.all(4.0),
                  child:FittedBox(
                    fit: BoxFit.contain,
                    child:Text('50 \u20b9 received.',style: TextStyle(fontSize: 40, fontWeight: FontWeight.w400),),),
                ),
              ),
            ),
          ],
        ),
        ),
        ),
      ),
    );
  }

}