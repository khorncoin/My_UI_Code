import 'package:flutter/material.dart';
import 'main.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(

      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage();

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade200,
        centerTitle:true ,

        title: Text(
          'Discoverry'
          ,style:TextStyle(color: Colors.black,fontWeight: FontWeight.bold ) ,
        ),

        actions: [
          IconButton(onPressed:null, icon:Icon(Icons.notification_add,color: Colors.white,)),
          IconButton(onPressed: null, icon:Icon(Icons.call,color: Colors.white,)),
          IconButton(onPressed: null, icon:Icon(Icons.qr_code_scanner,color: Colors.white,)),
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.blue.shade100,
        child: ListView(
          padding: EdgeInsets.all(0.0),
          children:<Widget> [
            DrawerHeader(
              margin:EdgeInsets.zero ,
              child:Row(
                children:<Widget> [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(right: 0.0),
                      child:CircleAvatar(
                        // backgroundColor: Colors.transparent,
                        // backgroundImage: AssetImage('img/shop.jpg'),
                        // radius:50.0 ,
                        radius: 50,
                        child: ClipOval(
                          child: Image(
                            image: AssetImage('img/shop.jpg'),
                          ),
                        ),
                      ) ,
                    ),
                  ),
                  Expanded(
                      child: Container(
                        padding: EdgeInsets.only(right:0.0 ),
                        child: Column(
                          mainAxisAlignment:MainAxisAlignment.center ,
                          children:<Widget> [
                            Text('Shop Discoverry',style:TextStyle(fontSize:18.0,color:Colors.black, ) ,),
                            SizedBox(width:20 , height: 50,),
                            Text('ID : 00000',style: TextStyle(color: Colors.black),),
                          ],
                        ),

                      )

                  ),
                ],
              ),
            ),
            ListTile(

              leading: Icon(Icons.home,color: Colors.blue,),
              title: Text('Home Page'),
              trailing: Icon(Icons.navigate_next),
            ),
            ListTile(
              leading: Icon(Icons.menu_book,color: Colors.blue,),
              title: Text('Check Book'),
              trailing: Icon(Icons.navigate_next),
            ),
            ListTile(
              leading: Icon(Icons.analytics,color: Colors.blue,),
              title: Text('Scheduled Payment'),
              trailing: Icon(Icons.navigate_next),
            ),
            ListTile(
              leading: Icon(Icons.save,color: Colors.blue,),
              title: Text('Save Messages'),
              trailing: Icon(Icons.navigate_next),
            ),
            ListTile(
              leading: Icon(Icons.call_rounded,color: Colors.blue,),
              title: Text('Recent Call'),
              trailing: Icon(Icons.navigate_next),
            ),
            ListTile(
              leading: Icon(Icons.devices_outlined,color: Colors.blue,),
              title: Text('Devices'),
              trailing: Icon(Icons.navigate_next),
            ),
            ListTile(
              leading: Icon(Icons.notifications_active,color: Colors.blue,),
              title: Text('Notifications'),
              trailing: Icon(Icons.navigate_next),
            ),
            ListTile(
              leading: Icon(Icons.lock,color: Colors.blue,),
              title: Text('Private and Security'),
              trailing: Icon(Icons.navigate_next),
            ),
            ListTile(
              leading: Icon(Icons.storage,color: Colors.blue,),
              title: Text('Data and Storage'),
              trailing: Icon(Icons.navigate_next),
            ),
            ListTile(
              leading: Icon(Icons.language,color: Colors.blue,),
              title: Text('Language'),
              trailing: Icon(Icons.navigate_next),
            ),
            ListTile(
              leading: Icon(Icons.settings,color: Colors.blue,),
              title: Text('Settings'),
              trailing: Icon(Icons.navigate_next),
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app,color: Colors.blue,),
              title: Text('Exit_to_app'),
              trailing: Icon(Icons.navigate_next),
            ),

          ],
        ),

      ),
      body: ListView(
        children:<Widget> [
          Container(
            padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 10.0),
            height: MediaQuery.of(context).size.height,
            color: Colors.grey.shade300,
            child: Column(
              children:<Widget> [
                Expanded(
                  child:Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children:<Widget>[
                      Expanded(
                        child: Container(
                          padding:EdgeInsets.only(top: 10.0),
                          child: Column(
                            children:<Widget> [
                              Image.network('data:image/png;base64,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',
                                height: 80.0,
                              ),
                              SizedBox(height: 5.0,),
                              Text('Fine Dining', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),),
                              SizedBox(height: 5.0,),
                              Text('45 Plce',
                                style: TextStyle(fontSize: 10.0),
                              ),
                            ],
                          ),
                          margin: EdgeInsets.only(
                            left: 10.0, top: 10.0, right: 10.0,bottom: 10.0,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(5),
                              topRight: Radius.circular(5),
                              bottomRight: Radius.circular(5),
                              bottomLeft: Radius.circular(5),
                            ),
                            boxShadow: [
                              BoxShadow(),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding:EdgeInsets.only(top: 10.0),
                          child: Column(
                            children:<Widget> [
                              Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7n5ApxR7KikaM0B8piICj-lqUsbzZdcR8ow&usqp=CAU', height: 80.0,
                              ),
                              SizedBox(height: 5.0,),
                              Text('Bars & Hotels', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),),
                              SizedBox(height: 5.0,),
                              Text('42 Plce',
                                style: TextStyle(fontSize: 10.0),
                              ),
                            ],
                          ),
                          margin: EdgeInsets.only(
                            left: 10.0, top: 10.0, right: 10.0,bottom: 10.0,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(5),
                              topRight: Radius.circular(5),
                              bottomRight: Radius.circular(5),
                              bottomLeft: Radius.circular(5),
                            ),
                            boxShadow: [
                              BoxShadow(),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child:Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children:<Widget>[
                      Expanded(
                        child: Container(
                          padding:EdgeInsets.only(top: 15.0),
                          child: Column(
                            children:<Widget> [
                              Image.network('data:image/png;base64,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', height: 80.0,
                              ),
                              SizedBox(height: 5.0,),
                              Text('Coffe', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),),
                              SizedBox(height: 5.0,),
                              Text('33 Place',
                                style: TextStyle(fontSize: 10.0),
                              ),
                            ],
                          ),
                          margin: EdgeInsets.only(
                            left: 10.0, top: 10.0, right: 10.0,bottom: 10.0,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(5),
                              topRight: Radius.circular(5),
                              bottomRight: Radius.circular(5),
                              bottomLeft: Radius.circular(5),
                            ),
                            boxShadow: [
                              BoxShadow(),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding:EdgeInsets.only(top: 15.0),
                          child: Column(
                            children:<Widget> [
                              Image.network('data:image/png;base64,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',
                                height: 80.0,
                              ),
                              SizedBox(height: 5.0,),
                              Text(' Fast & Foods ', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),),
                              SizedBox(height: 5.0,),
                              Text('12 Place',
                                style: TextStyle(fontSize: 10.0),
                              ),
                            ],
                          ),
                          margin: EdgeInsets.only(
                            left: 10.0, top: 10.0, right: 10.0,bottom: 10.0,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(5),
                              topRight: Radius.circular(5),
                              bottomRight: Radius.circular(5),
                              bottomLeft: Radius.circular(5),
                            ),
                            boxShadow: [
                              BoxShadow(),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child:Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children:<Widget>[
                      Expanded(
                        child: Container(
                          padding:EdgeInsets.only(top: 10.0),
                          child: Column(
                            children:<Widget> [
                              Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcScYxwVXUhIZdkSfDYMxD7nxnqswIUpmKhpQA&usqp=CAU',
                                height: 80.0,
                              ),
                              SizedBox(height: 5.0,),
                              Text('Drink', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),),
                              SizedBox(height: 5.0,),
                              Text('27 Place',
                                style: TextStyle(fontSize: 10.0),
                              ),
                            ],
                          ),
                          margin: EdgeInsets.only(
                            left: 10.0, top: 10.0, right: 10.0,bottom: 10.0,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(5),
                              topRight: Radius.circular(5),
                              bottomRight: Radius.circular(5),
                              bottomLeft: Radius.circular(5),
                            ),
                            boxShadow: [
                              BoxShadow(),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding:EdgeInsets.only(top: 10.0),
                          child: Column(
                            children:<Widget> [
                              Image.asset('img/map.png',height: 80.0,),
                              SizedBox(height: 5.0,),
                              Text('Nearby & Map', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),),
                              SizedBox(height: 5.0,),
                              Text('10 Place',
                                style: TextStyle(fontSize: 10.0),
                              ),
                            ],
                          ),
                          margin: EdgeInsets.only(
                            left: 10.0, top: 10.0, right: 10.0,bottom: 10.0,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(5),
                              topRight: Radius.circular(5),
                              bottomRight: Radius.circular(5),
                              bottomLeft: Radius.circular(5),
                            ),
                            boxShadow: [
                              BoxShadow(),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(

        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:<Widget> [
            IconButton(onPressed: null, icon:Icon(Icons.home,color: Colors.black,)),
            IconButton(onPressed: null, icon:Icon(Icons.maps_home_work,color: Colors.black,)),
            IconButton(onPressed: null, icon:Icon(Icons.star,color: Colors.black,)),
            IconButton(onPressed:(){
              setState(() {
                Navigator.push(context,MaterialPageRoute(builder:(context)=> LoginPage()) );

              });
            }, icon:Icon(Icons.portrait_rounded,color: Colors.black,)),
          ],
        ),
      ),
    );
  }
}
