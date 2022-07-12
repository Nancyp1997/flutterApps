import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class third extends StatelessWidget{

  final String imageURL;
  final String title;
  final String imDBURL;
  final String director;
  final List<String> cast ;
  final List<String> ratings;
  final String wikiURL;

  third(this.imageURL, this.title, this.director, this.cast, this.ratings, this.wikiURL, this.imDBURL);

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

            child: Column(
              children: <Widget>[
                Container(
                  height: 300,
                  width: 300,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(

                      borderRadius: const BorderRadius.all(Radius.circular(50)),
                      color: Colors.red,
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


                buildCard("DIRECTOR",[director]),
                buildCard("CAST",cast),
                buildCard("RATINGS",ratings),


              ],
            ),
          ),

        ),

    );
  }


  Card buildCard(String key, List<String> val){
    return Card(
      color: Colors.white,

      shadowColor: Colors.yellowAccent,
      shape: const RoundedRectangleBorder(

        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      margin: const EdgeInsets.all(10),
      child: Container(
        
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
        height: 75,
        padding: const EdgeInsets.all(10),

        child: SizedBox(

          width: 300,

          child: Row(

            children: <Widget>[
              // Expanded(child:Container(),flex: 1,),
              Text(
                key,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                    color: Colors.orange,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,

                ),
              ),
              Expanded(child:Container(),flex: 1,),
              Text(
                val.join(", "),
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                    color: Colors.purple,
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),
              ),
            ],
          ),
        ),
      ),

      elevation: 10,
    );
  }

}
