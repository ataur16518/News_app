import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
class NewsCard extends StatelessWidget {
  const NewsCard({
    Key? key,
    required this.titles,
    required this.images,
  }) : super(key: key);

  final String titles;
  final String images;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(titles,style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),maxLines: 3,overflow: TextOverflow.ellipsis),
                    SizedBox(height: 10.0),
                    Text(('2 days ago'),style: TextStyle(color: Colors.grey),),
                  ],
                ),
              ),
              SizedBox(width: 4.0),
              Expanded(flex:2,child: Image.network(images,height: 100,fit: BoxFit.fill,)),
            ],
          ),
          SizedBox(height: 8.0),
          Divider(color: Colors.black),
        ],
      ),
    );
  }
}

class FeaturesNewsCard extends StatelessWidget {
  const FeaturesNewsCard({
    Key? key,
    required this.images,
    required this.titles,
  }) : super(key: key);

  final String images;
  final String titles;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(images,height: 300,width: context.width(),fit: BoxFit.cover,),

        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(titles,style: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20.0),maxLines: 2,overflow: TextOverflow.ellipsis),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 10.0,right: 14.0),
          child: Divider(color: Colors.black,),
        ),
      ],
    );
  }
}