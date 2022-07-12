import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class detailedView extends StatelessWidget{

  final String imageURL;
  final String title;
  final String description;
  final String imDBURL;

  detailedView(this.imageURL, this.description, this.title, this.imDBURL);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: <Color>[Color.fromRGBO(171,98,131, 0.8),
            Color.fromRGBO(197, 168, 206, 0.8),
            Color.fromRGBO(221,173,31, 0.8),
          ],
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
            await launchUrl(Uri.parse(imDBURL));
          },
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(30),
                height: 400,
                decoration: BoxDecoration(

                    borderRadius: const BorderRadius.all(Radius.circular(50)),
                    color: Colors.yellow,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white54.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 5,
                        offset: Offset(3, 3),  // changes position of shadow
                      ),],

                    image: DecorationImage(
                      image: AssetImage(imageURL),
                      fit: BoxFit.fill,
                    )
                ),
              ),
              Container(
                decoration:  BoxDecoration(
                  border: Border.all(width: 1 ,color: Colors.grey), //color is transparent so that it does not blend with the actual color specified
                  borderRadius: const BorderRadius.all(Radius.circular(20.0)),

                  gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: <Color>[
                      Color.fromRGBO(217,208,212, 1),
                      Color.fromRGBO(200, 214, 195, 0.8),

                      Color.fromRGBO(149, 188, 197, 0.8)],
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white54.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 5,
                      offset: Offset(3, 3), // changes position of shadow
                    ),],
                ),
                margin: EdgeInsets.only(left: 45, right:45, bottom: 10, top:10),
                padding: EdgeInsets.all(10),
                child: Text(description
                  ,style: TextStyle(
                      color: Colors.blueGrey
                  ),),
              ),
            ],
          ),


        ),

      ),
    ),
    );
  }

}