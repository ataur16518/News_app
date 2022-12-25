import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import '../home_screen.dart';
import '../sign_in.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {
  Future<void>goScreen() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('token', '');
    String token = prefs.getString('token')!;
    if(token.isEmptyOrNull){
      await Future.delayed(const Duration(seconds: 2)).then((value) =>
          const SignIn().launch(context,isNewTask: true));
    }else{
      await Future.delayed(const Duration(seconds: 2)).then((value) =>
          const HomePage().launch(context,isNewTask: true));
    }
  }
@override
  void initState() {
   goScreen();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 100,
               child: Container(
                 width: double.infinity,
                 alignment: Alignment.center,
                 decoration:  BoxDecoration(
                     color: Colors.white,
                   borderRadius: BorderRadius.circular(40),
                   image: const DecorationImage(
                     image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQAkKIN5-E2remD_kUzWuXWoiK9EI0ozPsaKg&usqp=CAU'),fit: BoxFit.fill,
                   )
                 ),
               ),
            ),
          ],
        ),
      ),
      );
  }
}

