import 'package:flutter/material.dart';
import 'package:movies_app/detailedView.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:movies_app/third.dart';


List<List<String>> avengers = [
  ['Avengers',"When Thor's evil brother, Loki (Tom Hiddleston), gains access to the unlimited power of the energy cube called the Tesseract, Nick Fury (Samuel L. Jackson), director of S.H.I.E.L.D., initiates a superhero recruitment effort to defeat the unprecedented threat to Earth. ",'Joss Whedon','assets/images/av0.jpeg','https://www.imdb.com/title/tt0848228/','https://en.wikipedia.org/wiki/The_Avengers_(2012_film)'],
  ['Avengers 2',"When Tony Stark jump-starts a dormant peacekeeping program, things go terribly awry, forcing him, Thor, the Incredible Hulk (Mark Ruffalo) and the rest of the Avengers to reassemble.",'Joss Whedon','assets/images/av1.jpg','https://www.imdb.com/title/tt2395427/','https://en.wikipedia.org/wiki/Avengers:_Age_of_Ultron'],
  ['Infinity war','Iron Man, Thor, the Hulk and the rest of the Avengers unite to battle their most powerful enemy yet -- the evil Thanos. On a mission to collect all six Infinity Stones, Thanos plans to use the artifacts to inflict his twisted will on reality.','Joe Russo','assets/images/av3.jpg','https://www.youtube.com/watch?v=QwievZ1Tx-8','https://en.wikipedia.org/wiki/Avengers:_Infinity_War'],
  ['End game','Adrift in space with no food or water, Tony Stark sends a message to Pepper Potts as his oxygen supply starts to dwindle. ','Joe Russo','assets/images/av4.jpeg','https://en.wikipedia.org/wiki/Avengers:_Endgame','https://en.wikipedia.org/wiki/Avengers:_Endgame']
];

List<List<String>> romcom = [
  ['Bridesmaids',"Annie is a single woman whose own life is a mess, but when she learns that her lifelong best friend, Lillian, is engaged, she has no choice but to serve as the maid of honor. ",'Paul Feig','assets/images/romcom/bridesmaids.jpeg','https://www.imdb.com/title/tt1478338/','https://en.wikipedia.org/wiki/Bridesmaids_(2011_film)'],
  ['The notebook',"In 1940s South Carolina, mill worker Noah Calhoun  and rich girl Allie are desperately in love.",'Nick Cassavetes','assets/images/romcom/thenotebook.jpeg','https://www.imdb.com/title/tt0332280/','https://en.wikipedia.org/wiki/The_Notebook'],
  ["Isn't it Romantic","Natalie is a New York architect who works hard to get noticed at her job, but is more likely to deliver coffee and bagels than design the city's next skyscraper.",'Todd','assets/images/romcom/isntromantic.jpeg','https://www.imdb.com/title/tt2452244/','https://en.wikipedia.org/wiki/Isn%27t_It_Romantic_(2019_film)'],
  ['Shallow Hal',"The story revolves around Hal (Jack Black) who, taking his dying father's advice, dates only the embodiments of female physical perfection. But that all changes after Hal has an unexpected run-in with self-help guru Tony Robbins.",'Peter','assets/images/romcom/shallowhal.jpeg','https://www.imdb.com/title/tt0256380/','https://en.wikipedia.org/wiki/Shallow_Hal']
];

List<List<String>> highschool = [
  ['Mean girls',"Teenage Cady Heron (Lindsay Lohan) was educated in Africa by her scientist parents. When her family moves to the suburbs of Illinois, Cady finally gets to experience public school and gets a quick primer on the cruel, tacit laws of popularity that divide her fellow students into tightly knit cliques",'Mark Waters','assets/images/hs/meangirls.jpeg','https://www.imdb.com/title/tt0377092/','https://en.wikipedia.org/wiki/Mean_Girls'],
  ['Clueless',"Shallow, rich and socially successful Cher (Alicia Silverstone) is at the top of her Beverly Hills high school's pecking scale. Seeing herself as a matchmaker, Cher first coaxes two teachers into dating each other. ",'Amy Heckerling','assets/images/hs/clueless.jpeg','https://www.imdb.com/title/tt0112697/','https://en.wikipedia.org/wiki/Clueless'],
  ['Princess Diary',"Shy San Francisco teenager Mia Thermopolis (Anne Hathaway) is thrown for a loop when, from out of the blue, she learns the astonishing news that she's a real-life princess! As the heir apparent to the crown of the small European principality of Genovia",'Garry Marshall','assets/images/hs/pd.jpeg','https://www.imdb.com/title/tt0247638/','https://en.wikipedia.org/wiki/The_Princess_Diaries_(film)'],
  ['Election',"Jim McAllister (Matthew Broderick), a well-liked high school government teacher, can't help but notice that successful student Tracy Flick (Reese Witherspoon) uses less than ethical tactics to get what she wants. When Tracy runs for school president, Jim feels that she will be a poor influence ",'Alexander Payne','assets/images/hs/election.jpeg','https://www.imdb.com/title/tt0126886/','https://en.wikipedia.org/wiki/Election_(1999_film)'],
];
Map<String, List<List<String>>> movieVsRating = {
  'Avengers': [['3.5/5','6/10'],['Robert Downey Jr.']],
  'Avengers 2': [['7.3/10','76'],['Robert Downey Jr.']],
  'Infinity war':[['3.5/5','6/10'],['Robert Downey Jr.']],
  'End game': [['3.5/5','6/10'],['Robert Downey Jr.']],
  'Bridesmaids': [['6.8/10','90%'],['Kristen Wiig']],
  'The notebook': [['7.8/10','53%'],['Ryan Gosling']],
  "Isn't it Romantic": [['5.9/10','70%'],['Rebel Wilson']],
  "Shallow Hal": [['6/10','50%'],['Jack Black']],
  "Mean girls": [['7.1/10','84%'],['Rachel McAdams']],
  "Clueless": [['6.9/10','81%'],['Alicia']],
  "Princess Diary": [['6.3/10','49%'],['Anne Hathaway']],
  "Election": [['7.3/10','92%'],['Reese Witherspoon']],
};



String imgURL = '';
String title_next_page = '';
String imDB_next_page = '';
String desc_next_page = '';
String wikiURL_next_page = '';
List<String> cast_next_page = [];
List<String> ratings_next_page = [];
String director_next_page = '';

void main() {

  runApp(
    MaterialApp(

      initialRoute: '/',
      routes: {
        '/': (context)=> const Home(),
        '/detailedView': (context)=> detailedView(imgURL, desc_next_page, title_next_page, imDB_next_page),
        '/third': (context)=> third(imgURL, title_next_page, director_next_page, cast_next_page, ratings_next_page, wikiURL_next_page, imDB_next_page)
      },
    )
  );
}

class Home extends StatefulWidget{
  const Home({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }

}


class HomeState extends State<Home>{
  @override
  Widget build(BuildContext context) {
    return
      Container(
        decoration: const BoxDecoration(
        gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: <Color>[Color.fromRGBO(1,8,1, 0.8),
                  Color.fromRGBO(197, 168, 206, 0.8),
                  Color.fromRGBO(221,173,31, 0.8),
                ],
            ),
        ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: CustomScrollView(
          slivers: <Widget>[
            //Main App Bar
            SliverAppBar(
            expandedHeight: 200,
            collapsedHeight: 100,
            toolbarHeight: 0,
            elevation: 0,
            pinned: true,
            backgroundColor: Colors.yellow,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text(
                "MOVIES APP",
                style: TextStyle(
                    color: Colors.lightBlue,
                    fontSize: 25,
                    fontWeight: FontWeight.bold
                ),
              ),
              centerTitle: true,
              titlePadding: EdgeInsets.only(bottom: 40),
              background: Container(
                child: Image.asset("assets/images/cute.png", fit: BoxFit.fill,),
              ),
            ),
          ),
            //AppBar for genre 1
            const SliverAppBar(
              foregroundColor: Colors.white54,
              pinned: true,
            expandedHeight: 100,
            collapsedHeight: 50,
            toolbarHeight: 0,
            elevation: 0,
            backgroundColor: Colors.pinkAccent,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                "ROMCOM",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),
                
              ),
              centerTitle: true,
              titlePadding: EdgeInsets.only(bottom: 40),


            ),
          ),
            //Container for horizontal scrolling list view of genre 1
            SliverToBoxAdapter(

            child: Container(
              height: 200,
              // color: Colors.red,
              color: Colors.transparent,

              child: ListView.builder(
              scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context, index){
                  return Container(
                    color: Colors.transparent,
                    padding: EdgeInsets.all(10),
                    child: GestureDetector(
                      onTap: (){
                        imgURL = romcom[index][3];
                        title_next_page = romcom[index][0];
                        imDB_next_page = romcom[index][4];
                        desc_next_page = romcom[index][1];
                        Navigator.pushNamed(context, '/detailedView');
                      },
                      onLongPressStart: (LongPressStartDetails details){
                        imgURL = romcom[index][3];
                        title_next_page = romcom[index][0];
                        imDB_next_page = romcom[index][1];
                        wikiURL_next_page = romcom[index][5];
                        director_next_page = romcom[index][2];
                        ratings_next_page = movieVsRating[title_next_page]![0];
                        cast_next_page = movieVsRating[title_next_page]![1];
                        Offset off = details.globalPosition;
                        final screenSize = MediaQuery.of(context).size;
                        double left = off.dx;
                        double top = off.dy;
                        double right = screenSize.width-left;
                        double bottom = screenSize.height-top;
                        String wikiLink = romcom[index][5];
                        String movieLink = romcom[index][4];
                        //Show popup menu
                        showMenu(
                            context: context,
                            position: RelativeRect.fromLTRB(left, top, right, bottom),
                            items: [
                              PopupMenuItem(
                                child: const Text("More Info"),
                                onTap: ()=> Future(
                                  () =>Navigator.pushNamed(context, '/third')
                                ),
                              ),
                              PopupMenuItem(
                                child: const Text("Wiki"),
                                onTap: () async {
                                  await launchUrl(Uri.parse(wikiLink));
                                },
                              ),
                              PopupMenuItem(
                                child: const Text("IMDB Link"),
                                onTap: () async {
                                  await launchUrl(Uri.parse(movieLink));
                                },
                              ),
                            ]
                        );
                      },

                      child: buildCard(romcom[index]),
                    ),
                  );
                }
            ),
            ),
          ),

            const SliverAppBar(
              foregroundColor: Colors.white54,
              pinned: true,
              expandedHeight: 100,
              collapsedHeight: 50,
              toolbarHeight: 0,
              elevation: 0,
              backgroundColor: Colors.cyan,
              flexibleSpace: FlexibleSpaceBar(
                title: Text(
                  "HIGH SCHOOL DRAMA",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),
                ),
                centerTitle: true,
                titlePadding: EdgeInsets.only(bottom: 40),
              ),
            ),

            SliverToBoxAdapter(

              child: Container(
                height: 200,
                // color: Colors.red,
                color: Colors.transparent,

                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (context, index){
                      return Container(
                        color: Colors.transparent,
                        padding: EdgeInsets.all(10),
                        child: GestureDetector(
                          onTap: (){
                            imgURL = highschool[index][3];
                            title_next_page = highschool[index][0];
                            imDB_next_page = highschool[index][4];
                            desc_next_page = highschool[index][1];
                            Navigator.pushNamed(context, '/detailedView');
                          },
                          onLongPressStart: (LongPressStartDetails details){
                            imgURL = highschool[index][3];
                            title_next_page = highschool[index][0];
                            imDB_next_page = highschool[index][1];
                            wikiURL_next_page = highschool[index][5];
                            director_next_page = highschool[index][2];
                            ratings_next_page = movieVsRating[title_next_page]![0];
                            cast_next_page = movieVsRating[title_next_page]![1];
                            Offset off = details.globalPosition;
                            final screenSize = MediaQuery.of(context).size;
                            double left = off.dx;
                            double top = off.dy;
                            double right = screenSize.width-left;
                            double bottom = screenSize.height-top;
                            String wikiLink = highschool[index][5];
                            String movieLink = highschool[index][4];
                            //Show popup menu
                            showMenu(
                                context: context,
                                position: RelativeRect.fromLTRB(left, top, right, bottom),
                                items: [
                                  PopupMenuItem(
                                    child: const Text("More Info"),
                                    onTap: ()=> Future(
                                            () =>Navigator.pushNamed(context, '/third')
                                    ),
                                  ),
                                  PopupMenuItem(
                                    child: const Text("Wiki"),
                                    onTap: () async {
                                      await launchUrl(Uri.parse(wikiLink));
                                    },

                                  ),
                                  PopupMenuItem(
                                    child: const Text("IMDB Link"),
                                    onTap: () async {
                                      await launchUrl(Uri.parse(movieLink));
                                    },

                                  ),
                                ]
                            );
                          },
                          child: buildCard(highschool[index]),
                        ),
                      );
                    }
                ),
              ),
            ),
            const SliverAppBar(
              foregroundColor: Colors.white54,
              pinned: true,
              expandedHeight: 100,
              collapsedHeight: 50,
              toolbarHeight: 0,
              elevation: 0,
              backgroundColor: Colors.orange,
              flexibleSpace: FlexibleSpaceBar(
                title: Text(
                  "ACTION",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),
                ),
                centerTitle: true,
                titlePadding: EdgeInsets.only(bottom: 40),
              ),
            ),

            SliverToBoxAdapter(

              child: Container(
                height: 200,
                // color: Colors.red,
                color: Colors.transparent,

                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (context, index){
                      return Container(
                        color: Colors.transparent,
                        child: GestureDetector(
                          onTap: (){
                            imgURL = avengers[index][3];
                            title_next_page = avengers[index][0];
                            imDB_next_page = avengers[index][4];
                            desc_next_page = avengers[index][1];
                            Navigator.pushNamed(context, '/detailedView');
                          },
                          onLongPressStart: (LongPressStartDetails details){
                            imgURL = avengers[index][3];
                            title_next_page = avengers[index][0];
                            imDB_next_page = avengers[index][1];
                            wikiURL_next_page = avengers[index][5];
                            director_next_page = avengers[index][2];
                            ratings_next_page = movieVsRating[title_next_page]![0];
                            cast_next_page = movieVsRating[title_next_page]![1];
                            Offset off = details.globalPosition;
                            final screenSize = MediaQuery.of(context).size;
                            double left = off.dx;
                            double top = off.dy;
                            double right = screenSize.width-left;
                            double bottom = screenSize.height-top;
                            String wikiLink = avengers[index][5];
                            String movieLink = avengers[index][4];
                            //Show popup menu
                            showMenu(
                                context: context,
                                position: RelativeRect.fromLTRB(left, top, right, bottom),
                                items: [
                                  PopupMenuItem(
                                    child: const Text("More Info"),
                                    onTap: ()=> Future(
                                            () =>Navigator.pushNamed(context, '/third')
                                    ),
                                  ),
                                  PopupMenuItem(
                                    child: const Text("Wiki"),
                                    onTap: () async {
                                      await launchUrl(Uri.parse(wikiLink));
                                    },

                                  ),
                                  PopupMenuItem(
                                    child: const Text("Watch here"),
                                    onTap: () async {
                                      await launchUrl(Uri.parse(movieLink));
                                    },

                                  ),
                                ]
                            );
                          },
                          child: buildCard(avengers[index]),
                        ),
                      );
                    }
                ),
              ),
            ),


        ],
      ),

    ),
      );
  }

  void showPopUpMenu(){}

  Card buildCard(List<String> movieDetails){
    return Card(

      shadowColor: Colors.white54,
        shape: const RoundedRectangleBorder(
          // side: BorderSide(
          //   color: Theme.of(context).colorScheme.outline,
          // ),
          borderRadius: BorderRadius.all(Radius.circular(40)),
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: <Color>[
                Color.fromRGBO(197, 168, 206, 0.8),
                Color.fromRGBO(234,205,158, 0.8),
                Color.fromRGBO(148,210,219, 0.8),
              ],
            ),
              border: Border.all(width: 1 ,color: Colors.amberAccent), //color is transparent so that it does not blend with the actual color specified
              borderRadius: const BorderRadius.all(Radius.circular(40.0)),
          ),
          child: SizedBox(
            width: 300,
            child: Row(
              children: <Widget>[

                CircleAvatar(
                  backgroundImage: AssetImage(movieDetails[3]),
                  radius: 75,
                ),
                Expanded(child:Container(),flex: 1,),
                Column(
                  children: <Widget>[
                    Expanded(
                      child: Column(),
                      flex: 1,
                    ),
                    Expanded(
                      child:Text(
                        movieDetails[0],
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                      ),
                      flex: 1,
                    ),
                    Expanded(
                      child: Text(
                        movieDetails[2],

                        style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal),
                        maxLines: 4,
                      ),
                      flex: 1,
                    ),
                    Expanded(child:Container(),flex: 1,),
                  ],
                ),
                Expanded(child:Container(),flex: 1,),
              ],
            ),
          ),
        ),

      elevation: 10,
    );
  }
}

