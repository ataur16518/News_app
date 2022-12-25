import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import 'News_card_widget.dart';
import 'News_details.dart';
class CatagaricPage extends StatefulWidget {
  const CatagaricPage({Key? key}) : super(key: key);
  @override
  State<CatagaricPage> createState() => _CatagaricPageState();
}
class _CatagaricPageState extends State<CatagaricPage> {
  List<String>titles = [
    'Taina Blue Retreat is a Converted Tower on the Greek Coast',
    'Reating a vision for the future: how technology will revolutionise the business finance function',
    'Entertainment partners chill at home with a few must-see movies or head out for',
    'With the thrills of a casino, the excitement of live harness racing and the delight of fine food and spirits, you can kick back',
    'Amazon has 143 billion reasons to keep Strech lining hemline above knee burgundy glossy silk complete hid zip little catches rayon',
    'Bolsonaro’s new alliance for brazil is a lesson in the politics of loyalty and campaign finance  For over three decades, Bolsonaro used different',
    'Official press statement an historic moment time and a new journey to begin. Shirley Chisholm was the first African American woman elected to Congress',
    'Green-party success Is reshaping global politics are increasingly shaping the debate in countries around the world',
    'Computer technology.generation new computer technology Stock Our managed it and it monitoring services allow you to focus',
    'Two georgian silver medallists were told to leave the olympic games for taking a sightseeing trip in tokyo .is the world\'s largest city',
  ];
  List<String>images = [
    'http://maannews.maantechnology.com/public/uploads/images/newsimages/maannewsimage23032022_050521_Taina-Blue-Retreat-is-a-Converted-Tower-on-the-Greek-Coast.png',
    'http://maannews.maantechnology.com/public/uploads/images/newsimages/maannewsimage23102021_115552_Chinese-Fan-Dance.jpg',
    'http://maannews.maantechnology.com/public/uploads/images/newsimages/maannewsimage24102021_050111_maannewsimage19102021_094212_remote_work3_190515-800x450.jpg',
    'http://maannews.maantechnology.com/public/uploads/images/newsimages/maannewsimage24102021_050503_politics.jpg',
    'http://maannews.maantechnology.com/public/uploads/images/newsimages/maannewsimage23102021_072605_amazon.jpg',
    'http://maannews.maantechnology.com/public/uploads/images/newsimages/maannewsimage30012022_034317_politics_3.jpg',
    'http://maannews.maantechnology.com/public/uploads/images/newsimages/maannewsimage30012022_034246_politics_2.jpg',
    'http://maannews.maantechnology.com/public/uploads/images/newsimages/maannewsimage23102021_060444_politics.jpg',
    'http://maannews.maantechnology.com/public/uploads/images/newsimages/maannewsimage23102021_114415_techno.jpg',
    'http://maannews.maantechnology.com/public/uploads/images/newsimages/maannewsimage30012022_034427_basket_ball.jpg',

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: titles.length,
          itemBuilder: (_,index){
            return Column(
              children: [
                FeaturesNewsCard(images: images[index], titles: titles[index]).visible(index==0),
                NewsCard(titles: titles[index], images: images[index]).visible(index!=0),
              ],
            ).onTap(()=>NewsDetails(imageUrl: images[index], titleUrl: titles[index],).launch(context));
          }),
    );
  }
}
