import 'package:flutter/material.dart';

//Defining counters for likes for each of the 9 options
int qiaolinCounter=0;
int athenasCounter=0;
int artopolisCounter=0;
int skydeckCounter=0;
int zooCounter=0;
int navypierCounter=0;
int trumpCounter=0;
int hiltonCounter=0;
int hyattCounter=0;


void main() {

  const String qiaolinTxt = "Huo Guo(火锅), or Hot Pot, is not just a dish, it is an experience for the taste buds and the soul. Hot pot is exotic, but not intimidating. It is local yet universal.That experience originates in the city of Chongqing — a city that sits 7419 miles from Chicago. Now, those unique flavors will be here for all just a few blocks south of the Loop, in Chinatown.";
  const String athenasTxt = "Inspired by the beauty and spirit of the Mediterranean, Athena embodies its lively atmosphere, fresh cuisine and warm hospitality. Our complete indoor and outdoor seating will transport you to the Greek Isles and can accommodate small and large parties for any occasion. ";
  const String artopolisTxt = "Mediterranean cafe serving baked goods & mains made in the wood-burning oven & open-air kitchen.";

  const String skyDeckTxt = "An all new, interactive 30-60 minute Chicago experience shares Chicago’s best and rich history prior to your 103rd floor Skydeck visit.";
  const String zooTxt = "Lincoln Park Zoo is a 35-acre zoo in Lincoln Park, Chicago, Illinois. The zoo was founded in 1868, making it the fourth oldest zoo in North America. It is also one of a few free admission zoos in the United States. The zoo is an accredited member of the Association of Zoos and Aquariums";
  const String navyPierTxt = "Navy Pier is a 3,300-foot-long pier on the shoreline of Lake Michigan, located in the Streeterville neighborhood of the Near North Side community area in Chicago, Illinois, United States";

  const String trumpTxt = "The fourth tallest building in the United States, Trump International Hotel & Tower® Chicago served as the inspiration for Dubai's Burj Khalifa, and has quickly become one of the best luxury hotels in Chicago and downtown's most enviable address. Proud to be recognized as a Forbes Travel Guide Four Star Hotel and amongst an elite group of hotels that are Sharecare VERIFIED. Our restaurant, Terrace 16, celebrates vibrant flavors borne of the land. ";
  const String hiltonTxt = "When Conrad Hilton opened the first hotel to bear the Hilton name in 1925, he aimed to operate the best hotel in Texas. As a result of his commitment, leadership, and innovation, today Hilton is one of the most respected brands in the world.";
  const String hyattTxt = "Hyatt's foundation in family goes back to 1957, when entrepreneur Jay Pritzker purchased the original Hyatt House motel. Pritzker and his brother, Donald, worked to grow the Hyatt brand, powered by their belief in the importance of family and care. As of December 31, 2021, Hyatt’s portfolio included more than 1,150 hotel and all-inclusive properties in 70 countries across six continents.";



  runApp(MaterialApp(
    debugShowCheckedModeBanner : false,
    title: "MaterialApp Title",

    initialRoute: '/',
    routes: {
      '/': (context) => const HomeScreen(),

      // const SecondPage(tag, title, text, image)
      '/qiaolin': (context)=> const SecondPage("qiaolin", "Qiaolin restaurant", qiaolinTxt, "images/qiaolinBuilding.jpeg"),
      '/athenas': (context)=> const SecondPage("athenas", "Athena Greek restaurant ", athenasTxt, "images/athenaBuilding.jpeg"),
      '/artopolis': (context)=> const SecondPage("artopolis", "Artopolis Cafe", artopolisTxt, "images/artopolisBuilding.jpeg"),
      '/skydeck': (context)=> const SecondPage("skydeck", "Sky Deck", skyDeckTxt, "images/skydeck.jpeg"),
      '/zoo': (context)=> const SecondPage("zoo", "Lincoln Zoo Park", zooTxt, "images/zoo.jpeg"),
      '/navypier': (context)=> const SecondPage("navypier", "Navy Pier", navyPierTxt, "images/navypierBuilding.jpeg"),
      '/trump': (context)=> const SecondPage("trump", "Trump Hotels", trumpTxt, "images/trumpHotel.jpeg"),
      '/hilton': (context)=> const SecondPage("hilton", "hilton", hiltonTxt, "images/hiltonBuil.jpeg"),
      '/hyatt': (context)=> const SecondPage("hyatt", "hyatt", hyattTxt, "images/hyattBuil.jpeg"),
    },

  )
  );
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _SampleState createState() => _SampleState();
}

class _SampleState extends State<HomeScreen> with SingleTickerProviderStateMixin{
   late TabController _tabController;

  @override
  void initState(){
    super.initState();
    _tabController = TabController(vsync: this, length: 3);
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: <Color>[Color.fromRGBO(209,107,165, 1),
            Color.fromRGBO(134,168,231, 1),
          Color.fromRGBO(95, 251, 241, 1)],
        ),
      ),
      child:Scaffold(
backgroundColor: Colors.transparent,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(200.0),

          child: AppBar(
            backgroundColor: Colors.transparent,
            centerTitle: true,
            flexibleSpace: ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                  bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30)),
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/img.jpeg'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            title: Text("Welcome to Chicago"),
            shape: const RoundedRectangleBorder(

              borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(30),
                  top: Radius.circular(30)),

            ),
            bottom:  TabBar(
                controller: _tabController,
                labelColor: Colors.white,
                tabs: const [
                  Tab(
                    icon: Icon(Icons.fastfood),
                    text: "EAT",
                  ),
                  Tab(
                    icon: Icon(Icons.remove_red_eye_outlined),
                    text: "SEE",
                  ),
                  Tab(
                    icon: Icon(Icons.bed_outlined),
                    text: "SLEEP",
                  ),
                ]),
          ),
        ) ,
        body: TabBarView(
          controller: _tabController,
          children: const <Widget>[
            // FirstPage(firstRowText, firstRowImage, firstRowRoute, firstRowTag,
            //     secondRowText, secondRowImage, secondRowRoute, secondRowTag,
            //     thirdRowText, thirdRowImage, thirdRowRoute, thirdRowTag)
            FirstPage("QIAO LIN", "images/qiaolin.jpeg", "/qiaolin", "qiaolin",
                "ATHENAS", "images/athena.jpeg", "/athenas","athenas",
                "ARTOPOLIS CAFE", "images/artopolis.jpeg","/artopolis", "artopolis"),
            FirstPage("SKYDECK", "images/skydeck.jpeg", "/skydeck", "skydeck",
                "NAVY PIER", "images/navypier.jpeg", "/navypier","navypier",
                "LINCOLN ZOO", "images/zooBuil.jpeg","/zoo", "zoo"),
            FirstPage("HILTON", "images/hilton.jpeg", "/hilton", "hilton",
                "HYATT", "images/hyatt.jpeg", "/hyatt","hyatt",
                "TRUMP", "images/trumpBuilding.jpeg","/trump", "trump"),
          ],
        ),


      ),
    );

  }
}
class FirstPage extends StatefulWidget{
  final String firstRowTag;
  final String firstRowRoute;
  final String firstRowImage;
  final String firstRowText;

  final String secondRowTag;
  final String secondRowRoute;
  final String secondRowImage;
  final String secondRowText;

  final String thirdRowTag;
  final String thirdRowRoute;
  final String thirdRowImage;
  final String thirdRowText;

  const FirstPage(this.firstRowText, this.firstRowImage, this.firstRowRoute, this.firstRowTag,
      this.secondRowText, this.secondRowImage, this.secondRowRoute, this.secondRowTag,
      this.thirdRowText, this.thirdRowImage, this.thirdRowRoute, this.thirdRowTag, {Key? key}): super (key: key);

  @override
  _FirstPageState createState() => _FirstPageState();

}

class _FirstPageState extends State<FirstPage>{
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          colors: <Color>[Color.fromRGBO(209,107,165, 1),
            Color.fromRGBO(134,168,231, 1),
            Color.fromRGBO(95, 251, 241, 1)],
            // colors: [Colors.purple, Colors.orange]
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: Container(
              child: Column(
                children: <Widget>[
                  const Padding(padding: EdgeInsets.all(25)),
                  Row(
                    children: <Widget>[
                      const Padding(padding: EdgeInsets.only(left: 20),),
                      Hero(
                        tag: widget.firstRowTag,
                        child: GestureDetector(
                          onTap: () => Navigator.pushNamed(context, widget.firstRowRoute),
                          child: Container(
                            width:100,
                            height:100,

                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.blueGrey.withOpacity(0.5),
                                  spreadRadius: 7,
                                  blurRadius: 5,
                                  offset: Offset(2, 0), // changes position of shadow
                                ),
                              ],
                              shape: BoxShape.circle,
                              // border: Border.all(color: Colors.grey, width: 3),
                              image: DecorationImage(image: AssetImage(widget.firstRowImage), fit: BoxFit.cover),
                            ),
                          ),
                        ),
                      ),
                      const Padding(padding: EdgeInsets.all(15)),
                      Text(widget.firstRowText, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Colors.white)),
                    ],
                  ),
                  const Padding(padding: EdgeInsets.all(25)),
                  Row(

                    children: <Widget>[
                      const Padding(padding: EdgeInsets.only(left: 20),),
                      Hero(
                        tag: widget.secondRowTag,
                        child: GestureDetector(
                          onTap: () => Navigator.pushNamed(context, widget.secondRowRoute),
                          child: Container(
                            width:100,
                            height:100,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.blueGrey.withOpacity(0.5),
                                  spreadRadius: 7,
                                  blurRadius: 5,
                                  offset: Offset(2, 0), // changes position of shadow
                                ),
                              ],
                              shape: BoxShape.circle,
                              // border: Border.all(color: Colors.orange, width: 3),
                              image: DecorationImage(image: AssetImage(widget.secondRowImage), fit: BoxFit.cover),
                            ),
                          ),
                        ),
                      ),
                      const Padding(padding: EdgeInsets.all(15)),
                      Text(widget.secondRowText, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Colors.white)),
                    ],
                  ),
                  const Padding(padding: EdgeInsets.all(25)),
                  Row(

                    children: <Widget>[
                      const Padding(padding: EdgeInsets.only(left: 20),),
                      Hero(
                        tag: widget.thirdRowTag,
                        child: GestureDetector(
                          onTap: () => Navigator.pushNamed(context, widget.thirdRowRoute),
                          child: Container(
                            width:100,
                            height:100,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.blueGrey.withOpacity(0.5),
                                  spreadRadius: 7,
                                  blurRadius: 5,
                                  offset: Offset(2, 0), // changes position of shadow
                                ),
                              ],
                              shape: BoxShape.circle,
                              // border: Border.all(color: Colors.orange, width: 3),
                              image: DecorationImage(image: AssetImage(widget.thirdRowImage), fit: BoxFit.cover),
                            ),
                          ),
                        ),
                      ),
                      const Padding(padding: EdgeInsets.all(15)),
                      Text(widget.thirdRowText, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Colors.white)),
                    ],
                  ),

                ],
              ),
            ),
          ),
        ),
    );

  }

}

class SecondPage extends StatefulWidget{
  final String tag;
  final String title;
  final String text;
  final String image;

  const SecondPage(this.tag, this.title, this.text, this.image, {Key? key}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage>{
  int numLikes = 0;

  void incrementLikes(){
    setState(() {
      switch(widget.tag){
        case 'qiaolin': {
          numLikes = ++ qiaolinCounter;
        }
        break;
        case 'athenas': {
          numLikes = ++athenasCounter;
        }
        break;
        case 'artopolis': {
          numLikes = ++artopolisCounter;
        }
        break;
        case 'skydeck': {
          numLikes = ++skydeckCounter;
        }
        break;
        case 'zoo': {
          numLikes = ++zooCounter;
        }
        break;
        case 'navypier': {
          numLikes = ++navypierCounter;
        }
        break;
        case 'trump': {
          numLikes = ++trumpCounter;
        }
        break;
        case 'hyatt': {
          numLikes = ++hyattCounter;
        }
        break;
        case 'hilton': {
          numLikes = ++hiltonCounter;
        }
        break;
      }

      final snackBar = SnackBar(
        duration: const Duration(seconds: 2),
        content: Text(widget.title + " likes" + "$numLikes"+ " likes"),
        action: SnackBarAction(
          label: 'x',
          onPressed: () {},
        ),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
        gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [Colors.orangeAccent, Colors.indigo]
    ),
    ),
      child: Scaffold(
      backgroundColor: Colors.transparent,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(150.0),

        child: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          flexibleSpace: ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
                bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30)),
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/img.jpeg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          title: Text(widget.title),
          shape: const RoundedRectangleBorder(

            borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(30),
                top: Radius.circular(30)),
          ),
        ),
      ) ,
      body: Center(
        child: Column(
          children: <Widget>[
            const Padding(padding: EdgeInsets.all(15.0)),
            Hero(
                tag: widget.tag,
                child: Container (
                    width: 250,
                    height: 250,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white30.withOpacity(0.3),
                          spreadRadius: 7,
                          blurRadius: 5,
                          offset: Offset(2, 0), // changes position of shadow
                        ),
                      ],
                      shape: BoxShape.circle,
                      image: DecorationImage(image: AssetImage(widget.image), fit: BoxFit.cover),
                      // boxShadow: const [BoxShadow(color: Colors.black, offset: Offset(5.0, 5.0), blurRadius: 4.0, spreadRadius: 15.0)]
                    )
                )
            ),
            const Padding(padding: EdgeInsets.all(15)),
            Container (
              padding:  EdgeInsets.only(left: 25,top:5,right:25,bottom: 5) ,
                child: Text(widget.text, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white), textAlign: TextAlign.center)
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: incrementLikes,
          tooltip: 'Like',
          backgroundColor: Colors.white,
          child: Icon(Icons.thumb_up_alt,color: Colors.green)

      ),
    ),
    );
  }

}


