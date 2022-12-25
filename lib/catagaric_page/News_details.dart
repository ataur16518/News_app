import 'package:flutter/material.dart';
import 'News_card_widget.dart';
class NewsDetails extends StatefulWidget {
  const NewsDetails({Key? key, required this.imageUrl, required this.titleUrl}) : super(key: key);

  final String imageUrl;
  final String titleUrl;
  @override
  State<NewsDetails> createState() => _NewsDetailsState();
}
class _NewsDetailsState extends State<NewsDetails> {
  String descripction = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor'
      ' incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. '
      'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, '
      'sunt in culpa qui officia deserunt mollit anim id est laborum.It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.'
      ' The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using , making it look like readable English.';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            FeaturesNewsCard(
                images: widget.imageUrl,
                titles: widget.titleUrl),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(descripction,style: const TextStyle(color: Colors.black,fontSize: 15),),
            ),
          ],
        ),
      ),
    );
  }
}


