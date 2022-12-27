import 'package:flutter/material.dart';
import 'package:shop_app/register.dart';

import 'login_page.dart';

void main() => runApp(const LoginPage());

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    const appTitle = 'Login Account';

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(appTitle),
        ),
        body: const MyCustomForm(),
      ),
    );
  }
}

// Create a Form widget.
class MyCustomForm extends StatefulWidget {
  const MyCustomForm({super.key});

  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

// Create a corresponding State class.
// This class holds data related to the form.
class MyCustomFormState extends State<MyCustomForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();
  final _name = TextEditingController();
  final _pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child:ListView(
        children:<Widget> [
          Container(
            padding: EdgeInsets.only(top: 20.0) ,
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('img/shop.jpg',width: 100,),
                Text('Discover Shop',style: TextStyle(fontSize:25.0 ,backgroundColor:Colors.grey.shade200 ),),
              ],
            ) ,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextFormField(
              controller: _name,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                icon: Icon(Icons.person),
                hintText: 'Your Account',
                labelText: 'Name *',
              ),

              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter Name';
                }
                return null;
              },

            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextFormField(
              controller: _pass,
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                icon: Icon(Icons.password),
                hintText: 'Your Password',
                labelText: 'Password *',
              ),

              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter Password';
                }
                return null;
              },
            ),
          ),
          Container(
            child:TextButton (

              child: Text('Forgot Password'),

              onPressed: () {
              },

            ),
          ),

          Center(
            child:ElevatedButton(
              onPressed: () {
                if (_name.text==("Khorn") && _pass.text==("123")) {
                 Navigator.push(context,MaterialPageRoute(builder: (context)=>MyHomePage()));
                  // Navigator.push(context,MaterialPageRoute(builder: (context)=>MyHomePage()));
                }
                else if(_name.text==("Khorn") && _pass.text!=("123")){
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar( content: Text('Password Wrong !!!')),
                  );
                }
                else if(_name.text!=("Khorn") && _pass.text==("123")){
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Name Wrong!!!')),
                  );
                }
                else{
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('You  Name & Password Wrong !!!')),
                  );
                }
              },
              child: const Text('Login'),
            ) ,
          ),
          Container(

            child:Center(

              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text('OR Register',style: TextStyle(color: Colors.blue),),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 2.0 ),
            child: Center(

              child: ElevatedButton(
                onPressed:(){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>RegisterPage()) );
                },
                child:Container(
                  width:150.0 , height: 30.0,
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:<Widget> [
                      Icon(Icons.app_registration),
                      Text('Register'),
                    ],

                  ) ,
                ),

              ),
            ),
          ),

        ],

      ),
    );
  }
}