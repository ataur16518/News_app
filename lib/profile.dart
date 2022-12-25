import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import 'Splash-Screen/splash_screen.dart';
import 'main.dart';
class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              width: double.infinity,
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Container(
                      width: 140,
                      height: 140,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('images/IMG_1.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text('Md : Ataur Rahman',style: KlargeTextStyle),
                  SizedBox(height: 15),
                  Text('UI/UX Designer | Daily UI',style:TextStyle(color: Colors.black38,fontSize:15,fontWeight: FontWeight.bold)),
                  SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              child:const Text('80',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black),),
                            ),
                            SizedBox(height: 5),
                            Container(
                              child:const Text('Post',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black54),),
                            ),
                          ],
                        ),
                        SizedBox(width: 15),
                        Column(
                          children: [
                            Container(
                              child:const Text('110',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black),),
                            ),
                            SizedBox(height: 5),
                            Container(
                              child:const Text('following',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black54),),
                            ),
                          ],
                        ),
                        SizedBox(width: 15),
                        Column(
                          children: [
                            Container(
                              child:Text('152',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black),),
                            ),
                            SizedBox(height: 5),
                            Container(
                              child:Text('follower',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black54),),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 15),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      children: [
                        Container(
                          height: 56,
                          width: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              border: Border.all(color: Colors.black)
                          ),
                          child: const Center(child:Text('Message',style: TextStyle(color: Colors.black),
                          ),
                          ),
                        ),
                        const SizedBox(width: 10,),
                        Container(
                          height: 56,
                          width: 150,
                          decoration: BoxDecoration(
                              color: Color(0xff0D22C3),
                              borderRadius: BorderRadius.circular(7),
                              border: Border.all(color: Colors.black)
                          ),
                          child: Center(child:const Text('Follow',style: TextStyle(color: Colors.grey),
                          ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      children: [
                        Container(
                          height: 100,
                          width: 90,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage('https://thumbs.dreamstime.com/b/fruit-vegetables-7134995.jpg'),
                                fit: BoxFit.cover
                            ),
                            borderRadius: BorderRadius.circular(7),
                          ),
                        ),
                        SizedBox(width: 15),
                        Container(
                          height: 100,
                          width: 90,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                                image: NetworkImage('https://thumbs.dreamstime.com/b/fruit-vegetables-7134953.jpg'),
                                fit: BoxFit.cover
                            ),
                            borderRadius: BorderRadius.circular(7),

                          ),
                        ),
                        SizedBox(width: 15),
                        Container(
                          height: 100,
                          width: 90,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: NetworkImage('https://thumbs.dreamstime.com/b/green-vegetables-set-different-seasonal-spread-out-composition-wooden-table-96783191.jpg'),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(7),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      children: [
                        Container(
                          height: 100,
                          width: 90,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                                image: NetworkImage('https://thumbs.dreamstime.com/b/incredibly-beautiful-sunset-sun-lake-sunrise-landscape-panorama-nature-sky-amazing-colorful-clouds-fantasy-design-115177001.jpg'),
                                fit: BoxFit.cover
                            ),
                            borderRadius: BorderRadius.circular(7),
                          ),
                        ),
                        SizedBox(width: 15),
                        Container(
                          height: 100,
                          width: 90,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                                image: NetworkImage('https://thumbs.dreamstime.com/b/scenic-nature-landscape-path-near-lake-forest-path-tunnel-trees-near-lake-scenic-nature-autumn-landscape-panorama-view-115358410.jpg'),
                                fit: BoxFit.cover
                            ),
                            borderRadius: BorderRadius.circular(7),

                          ),
                        ),
                        SizedBox(width: 15),
                        Container(
                          height: 100,
                          width: 90,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: NetworkImage('https://i.pinimg.com/originals/a4/96/c2/a496c2b6bc5d7cfe0e0674f6598c38ad.jpg'),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(7),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    height: 40,
                    width: 220,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue,
                    ),
                    child: Center(
                      child: const Text('Sign Out',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),
                      ).onTap(() async {
                        final prefs = await SharedPreferences.getInstance();
                        await prefs.setString('token', '');
                        const SplashScreen().launch(context);
                      }),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
