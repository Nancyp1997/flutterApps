import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class thirdView extends StatelessWidget{

  final String imageURL;
  final String title;
  final String imDBURL;
  final String director;
  final List<String> cast ;
  final List<String> ratings;
  final String wikiURL;

  thirdView(this.imageURL, this.title, this.director, this.cast, this.ratings, this.wikiURL, this.imDBURL);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: <Color>[Color.fromRGBO(134,10,100, 1),
            Color.fromRGBO(0,0,0, 0.5),
            Color.fromRGBO(1, 1, 1, 1)],
        ),
      ),
      child:
      Scaffold(
        backgroundColor: Colors.transparent,

        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(100.0),
          child: AppBar(
            backgroundColor: Colors.transparent,
            toolbarHeight: 100,
            centerTitle: true,

            title: Text(title,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ),
        ),

        body: Center(
          child: GestureDetector(
            onTap: () async {
              const url = 'https://www.google.com';
              await launchUrl(Uri.parse(url));
            },
            child: Container(
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(30),
                    decoration: BoxDecoration(

                        borderRadius: const BorderRadius.all(Radius.circular(50)),
                        color: Colors.yellow,
                        boxShadow: [BoxShadow(
                          color: Colors.yellowAccent.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),],
                        image: DecorationImage(
                          image: AssetImage(imageURL),
                          fit: BoxFit.fill,
                        )
                    ),
                  ),
                  Text("data")
                ],
              ),


            ),
          ),

        ),
      ),
    );
  }

}
