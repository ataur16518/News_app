import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:news_api_project1/Repository/sign_in_authrepo.dart';
import 'package:news_api_project1/bottom_navigation.dart';
import 'package:news_api_project1/sign_up.dart';

import 'Splash-Screen/splash_screen.dart';
import 'forgetpasswod/forget_password.dart';
class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Sign In',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 25),),
            const Padding(
              padding: EdgeInsets.only(left: 70.0,right: 70),
              child: Divider(color: Colors.black,height: 25,thickness: 5.0),
            ),
            const SizedBox(height: 50,),
            AppTextField(
              textFieldType: TextFieldType.EMAIL,
              controller: emailController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                hintText: "Plasse enter your Email",
                labelText: 'Email Address',
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            const SizedBox(height: 15),
            AppTextField(
              textFieldType: TextFieldType.PASSWORD,
              controller: passwordController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                hintText: "Plasse enter your password",
                labelText: 'password',
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(child: const Text('Forget password',style: TextStyle(fontSize: 10,color: Colors.black54)),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_)=>const ForgetPassword()));
                  },
                ),
              ],
            ),
            const SizedBox(height: 50),
            Row(
              children: [
                InkWell(
                  child: Container(
                    height: 40,
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue,
                    ),
                    child:const Center(
                        child: Text('Sign in',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),
                        ),
                    ),
                  ).onTap(() async {
                    try{
                      EasyLoading.show(status: 'Signing in');
                      bool status = await AuthRepo().signInWithEmail(emailController.text, passwordController.text);
                      if(status){
                        EasyLoading.showSuccess('Sign In Successful');
                        const Home().launch(context);
                        // Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (_)=>Home()), (route) => false);
                      }else{
                        EasyLoading.showError('Email or Password error');
                      }
                    }catch(e){
                    EasyLoading.showError(e.toString());
                    }
                  }),
                  // onTap: (){
                  //   Navigator.push(context, MaterialPageRoute(builder: (_)=>const Home()));
                  // },
                ),
                Spacer(),
                const Text('or',style: TextStyle(color: Colors.grey),),
                Spacer(),
                Center(child: InkWell(child: const Text('Sign Up',style: TextStyle(fontSize: 20,color: Colors.black,),),
                  onTap: ((){
                    Navigator.push(context, MaterialPageRoute(builder: (_)=>const SignUp()));
                  }),
                )
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
