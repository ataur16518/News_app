import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../sign_in.dart';
import 'message.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin:EdgeInsets.only(top: 30) ,
                height: 41,
                width: 41,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: Color(0xffE8ECF4)
                ),
                child: Center(child: InkWell(child: Icon(Icons.arrow_back_ios,color: Colors.black),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_)=> SignIn()));
                  },
                ),
                ),
              ),
              SizedBox(height: 28,),
              Container(
                margin: EdgeInsets.only(left: 20),
                height: 78,
                width: 300,
                child: Text('Forgot Password?',style: TextStyle(color: Colors.black,fontSize: 30),),
              ),
              Container (
                margin: EdgeInsets.only(left: 20),
                height: 48,
                width: 331,
                child: Text('Don\'t worry! It occurs. Please enter the email address linked with your account',style: TextStyle(color: Colors.grey,fontSize: 16),),
              ),
              SizedBox(height: 32,),
              Container(
                height: 56,
                width: 331,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white70,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7),
                    ),
                    hintText: ('Enter your Email..'),
                  ),
                ),
              ),
              SizedBox(height:36,),
              InkWell(
                child: Container(
                  height: 56,
                  width: 331,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: Colors.black
                  ),
                  child: Center(child: Text('Send Code ',style: TextStyle(color: Colors.white),
                  ),
                  ),
                ),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) => MessagePage()));
                },
              ),
              SizedBox(height: 300,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Remember Password?',style: TextStyle(fontSize: 15,color: Colors.grey),),

                  InkWell(
                    child: Text('Login',style: TextStyle(fontSize: 15,color: Colors.green),
                    ),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_) => SignIn()));
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
