import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'forget_password.dart';
import 'new_password.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({Key? key}) : super(key: key);

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
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
                    Navigator.push(context, MaterialPageRoute(builder: (_)=> ForgetPassword()));
                  },
                ),
                ),
              ),
              SizedBox(height: 28,),
              Text('OTP Verification',style: TextStyle(fontSize: 30),),
              SizedBox(height: 10,),
              Text('Enter the verification code we just sent on your email address.',style: TextStyle(fontSize:16 ,color: Color(0xff838BA1)),),
              SizedBox(height: 32,),
              Row(
                children: [
                  Container(
                    height:60,
                    width:70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.blue),
                      color: Colors.white,
                    ),
                    child: Center(child: const Text('5',style: TextStyle(fontSize: 22,color: Colors.black),)),
                  ),
                  SizedBox(width: 17,),
                  Container(
                    height:60,
                    width:70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.blue),
                      color: Colors.white,
                    ),
                    child: Center(child: const Text('3',style: TextStyle(fontSize: 22,color: Colors.black),)),
                  ),
                  SizedBox(width: 17,),
                  Container(
                    height:60,
                    width:70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.blue),
                      color: Colors.white,
                    ),
                    child: Center(child: const Text('1',style: TextStyle(fontSize: 22,color: Colors.black),)),

                  ),
                  SizedBox(width: 17,),
                  Container(
                    height:60,
                    width:70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.blue),
                      color: Colors.white,
                    ),
                    child: Center(child: const Text(' ',style: TextStyle(fontSize: 22,color: Colors.black),)),

                  ),
                ],
              ),
              SizedBox(height:38 ,),
              InkWell(
                child: Container(
                  height: 56,
                  width: 331,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: Color(0xff1E232C),
                  ),
                  child: Center(child: const Text('Verify',style: TextStyle(color: Colors.white,fontSize: 15),)),
                ),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder:(_)=> CreatenewPassword()));
                },
              ),
              SizedBox(height: 357,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Didn’t received code?',style: TextStyle(fontSize: 15,color: Colors.grey),),

                  InkWell(
                      child: Text('Resend',style: TextStyle(fontSize: 15,color: Color(0xff35C2C1)),

                      ),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (_) => const CreatenewPassword()));
                      }
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
