import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'catagaric_page/catagaric.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
List<String>imageList=[

  'https://www.bd-pratidin.com/uk/assets/contents/2022/2022-03-03/pages/2022-03-03_1.jpg',
  'https://images.prothomalo.com/prothomalo-english%2Fimport%2Fmedia%2F2018%2F07%2F14%2F8476f86ece3b664b37d049ed136e262e-Untitled-1.jpg?auto=format%2Ccompress&format=webp&w=400&dpr=2.6',
  'https://agamirsomoy.com/wp-content/uploads/2018/09/1503730956.jpg',

];
  int _current=0;
  final CarouselController _controller = CarouselController();
  CarouselController buttonCarouselController = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:AppBar(
        centerTitle: true,
        title: const Text('News app',style: TextStyle(color: Colors.black,fontSize: 25),),
      ),
      body:Column(
        children: [
          CarouselSlider.builder(
              itemCount: imageList.length,
              carouselController: _controller,
              itemBuilder: ((context, index, realIndex) => Container(
                decoration: BoxDecoration(
                    image: DecorationImage(image:NetworkImage(imageList[index]))
                ),
              )),
              options: CarouselOptions(
                height: 300,
                autoPlayCurve: Curves.fastOutSlowIn,
                autoPlay: true,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: const Duration(microseconds: 800),
                viewportFraction: 0.8,
                aspectRatio: 2.0,
                onPageChanged: ((index, reason) {
                  setState(() {
                    _current=index;
                  });
                }),
                enlargeCenterPage: true,
              )),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: imageList.asMap().entries.map((entry) {
              return GestureDetector(
                onTap: () => _controller.animateToPage(entry.key),
                child: Container(
                  width: 12.0,
                  height: 12.0,
                  margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: (Theme.of(context).brightness == Brightness.dark
                          ? Colors.white
                          : Colors.black)
                          .withOpacity(_current == entry.key ? 0.9 : 0.4)),
                ),
              );
            }).toList(),
          ),
          SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: InkWell(
              child: Container(
                width: 315,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue,
                ),
                child: const Center(child: Text('Next Page',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),)),
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=>const CatagaricPage()));
              },
            ),
          )
          // const TextField(
          //   obscureText: true,
          //   decoration: InputDecoration(
          //     border: OutlineInputBorder(),
          //     labelText: 'Password',
          //   ),
          // )
        ],
      ) ,
    );
  }
}
