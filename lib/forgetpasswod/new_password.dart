import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_api_project1/forgetpasswod/success.dart';

import 'message.dart';

class CreatenewPassword extends StatefulWidget {
  const CreatenewPassword({Key? key}) : super(key: key);

  @override
  State<CreatenewPassword> createState() => _CreatenewPasswordState();
}

class _CreatenewPasswordState extends State<CreatenewPassword> {
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
                    Navigator.push(context, MaterialPageRoute(builder: (_)=> MessagePage()));
                  },
                ),
                ),
              ),
              SizedBox(height: 28,),
              Text('Create new password',style: TextStyle(fontSize: 30,color: Colors.black,fontWeight: FontWeight.bold),),
              SizedBox(height: 10,),
              Text('Your new password must be unique from those previously used.',style: TextStyle(fontSize: 16,color: Colors.grey),),
              SizedBox(height: 32),
              Container(
                child: TextField(
                  decoration: InputDecoration(
                    fillColor: Colors.white54,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7),
                    ),
                    hintText: ("New PassWord"),
                  ),
                ),
              ),
              SizedBox(height: 15,),
              Container(
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white54,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7),
                    ),
                    hintText: ('Confirm Password'),
                  ),
                ),
              ),
              SizedBox(height: 57,),
              InkWell(
                child: Container(
                  height: 56,
                  width: 331,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: Colors.black,
                  ),
                  child: Center(child: Text('Reset Password',style: TextStyle(fontSize: 15,color: Colors.white),)),
                ),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_)=> SuccessPage()));
                },
              ),

            ],
          ),
        ),
      ),
    );
  }
}
