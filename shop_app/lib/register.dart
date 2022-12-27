import 'package:flutter/material.dart';

void main(){
  runApp(const RegisterPage());
}


class RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
     return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          centerTitle: true,
          title: Text('Register Account'),

        ),
        body: const RegisterPage(),
      ) ,
    );
  }
}
class  RegisterPage extends StatefulWidget {
  const  RegisterPage({Key? key}) : super(key: key);
  @override
  State<RegisterPage> createState() {
      return RegisterPageState();}
}

