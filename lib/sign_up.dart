import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:news_api_project1/home_screen.dart';
import 'package:news_api_project1/sign_in.dart';
import 'Repository/sign_in_authrepo.dart';
class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}
class _SignUpState extends State<SignUp> {

  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmpasswordController = TextEditingController();

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
            const Text('Sign Up',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 25),),
            const SizedBox(height: 50),
            AppTextField(
              textFieldType: TextFieldType.NAME,
              controller: nameController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                hintText: "Plasse enter your name",
                labelText: 'Name',
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            const SizedBox(height: 15),
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
            SizedBox(height: 15),
            AppTextField(
              textFieldType: TextFieldType.PHONE,
              controller: phoneController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                hintText: "Plasse enter your phone number",
                labelText: 'phone number',
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
            const SizedBox(height: 15),
            AppTextField(
              textFieldType: TextFieldType.PASSWORD,
              controller: confirmpasswordController,
                      decoration: InputDecoration(
                           border: OutlineInputBorder(
                               borderRadius: BorderRadius.circular(10.0),
                                       ),
                                  hintText: "Plasse enter Re-password",
                             labelText: 'confirm',
                           filled: true,
                        fillColor: Colors.white,
                      ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(child: const Text('Forget password',style: TextStyle(fontSize: 10,color: Colors.black54)),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_)=>const SignIn()));
                  },
                ),
              ],
            ),
            const SizedBox(height: 50),
            InkWell(
             onTap: (() async {
               if(emailController.text.isEmpty){
                 toast('Enter Your email');
               }else if(nameController.text.isEmpty){
                 toast('Enter Your Name');
               }else if(phoneController.text.isEmpty){
                 toast('Enter Your Phone NUmber');
               }else if(passwordController.text.isEmpty){
                 toast('please Enter YOur password');
               }else if(confirmpasswordController.text.isEmpty){
                 toast('please Enter Your confirm password');
               } else{
                 try{
                   EasyLoading.show(status: 'Signing Up....');
                   bool status = await AuthRepo().signUpWithEmail(nameController.text, emailController.text, phoneController.text, passwordController.text,confirmpasswordController.text);
                   if(status){
                     EasyLoading.showSuccess('');
                     const HomePage().launch(context);
                   }else{
                     EasyLoading.showError('Something Went wrong ! Please Try again');
                   }
                 }catch (e){
                   EasyLoading.showError(e.toString());
                 }
               }
              }
             ),
              child: Container(
                height: 45,
                width: 115,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue,
                ),
                child:const Center(
                  child: Text(
                    'Sign up',
                     style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
