import 'package:flutter/material.dart';
import 'package:first_app/main.dart';
import 'package:video_player/video_player.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
void main()
{
  return runApp(Myapp());
}
class Myapp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "my flutter app",
      theme:ThemeData( primaryColor: Colors.pink,
        accentColor: Colors.purple,),
      home: Myhomepage(),
    );

  }
}
class Myhomepage  extends StatefulWidget
{
  _myapp createState() => _myapp();
}
class _myapp extends State<Myhomepage>
{
  double _scale = 1.0;
  @override
  Widget  build(BuildContext context)
  {
    return Scaffold(

        body : Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.black, Colors.black],
              ),
            ),
            child:Column(

              children: <Widget>[

                Center(child: Container(
                    height: 250,
                    width: 250,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.red[900].withOpacity(0.7),
                            blurRadius: 35,
                            spreadRadius: 20,
                          )
                        ]
                    ), margin: EdgeInsets.fromLTRB(0.0, 190.0, 0.0,0.0),
                    child:ClipRRect(borderRadius: BorderRadius.circular(200.0),child:
                    Image.asset("assets/fin.png",fit:BoxFit.fill,height:200,width:200))

                )

                ) ,
                Center(child: Container(margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 60.0),
                    height: 200, width:100 ,alignment:Alignment.center,


                    child:IconButton(onPressed: ()
                    {Navigator.push(context, MaterialPageRoute(builder: (context)=> app_main(),));},
                      icon: Icon(Icons.play_arrow_outlined),alignment: Alignment.center,iconSize: 100.0,
                      color: Colors.red[900],)

                ))],
            )
        )
    );


  }
  void _handleTapDown(TapDownDetails details) {
    setState(() {
      _scale = 1.8;
    });
  }

  void _handleTapUp(TapUpDetails details) {
    setState(() {
      _scale = 1.0;
    });
  }
}







class app_main extends StatelessWidget{
  Widget  build(BuildContext context)
  {
    return Scaffold(appBar:  AppBar(
        elevation: 2.0, backgroundColor:Colors.red[900],
        title:Text("HOME PAGE",textAlign: TextAlign.center),
        actions: [ IconButton(onPressed: () {Navigator.push(context,
            MaterialPageRoute(builder: (context)=> LoginSignupPage(),));},
            icon: Icon(Icons.person_add_alt_1))]),
        bottomNavigationBar: BottomNavigationBar(
          elevation: 1.0,
          backgroundColor: Colors.red[900],
          items:  <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: IconButton(icon:Icon(Icons.home,color: Colors.white,size: 34), onPressed: () {},),
                label: "Home"
            ),
            BottomNavigationBarItem(
                icon: IconButton(icon:Icon(Icons.qr_code_scanner,color: Colors.white,size: 34), onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context)=> MyApp(),));},),
                label: 'scanner'
            ),
            BottomNavigationBarItem(
              icon:IconButton(icon:Icon(Icons.person,color: Colors.white,size: 34), onPressed: () {},),
              label: 'profile',

            ),
          ],
        ),

        body:Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.black, Colors.black],
              ),
            ),
            child: Column
              (
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Center(child: Container( height:145,width: 110,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.redAccent.withOpacity(0.9),
                            blurRadius: 25,
                            spreadRadius: 7,
                          )
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          color: Colors.red
                          [700],
                          width: 3.0,
                        ),
                      ),
                      child: GestureDetector( onTap:() {Navigator.push(context,
                          MaterialPageRoute(builder: (context)=> electronics_(),));},
                        child:Image.asset('assets/elecc.png',height:70,width:80)
                        ,)
                  )
                  )


                  ,
                  Center(child: Container(height: 145,width: 110,
                      decoration:BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.redAccent.withOpacity(0.9),
                              blurRadius: 23,
                              spreadRadius: 6,
                            )
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            color: Colors.red
                            [700],
                            width: 3.0,
                          )
                      ) ,
                      child: GestureDetector( onTap: (){Navigator.push(context,
                          MaterialPageRoute(builder: (context)=> data_structure(),));},
                        child:Image.asset('assets/dsl.png',height:70,width:80)
                        ,)
                  ),
                  ),

                  Center(
                    child: Container( height:145,width: 110,

                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.redAccent.withOpacity(0.9),
                              blurRadius: 23,
                              spreadRadius: 6,
                            )
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            color: Colors.red
                            [700],
                            width: 3.0,
                          ),
                        ),
                        child: GestureDetector( onTap: (){Navigator.push(context,
                            MaterialPageRoute(builder: (context)=> Pp(),));},
                            child:Image.asset('assets/basic.png',height:70,width:90)
                        )
                    ),
                  )


                ]
            )
        )

    );
  }
}
class data_structure extends StatelessWidget{

  @override
  Widget  build(BuildContext context)
  {
    return Scaffold(
        appBar: AppBar(backgroundColor: Colors.red[900],title: Text("Data Structure"),),

        body: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: [Colors.black, Colors.black],
              ),
            ),
            child:Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[

                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        decoration: BoxDecoration(

                            border: Border.all(

                            ),
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.redAccent.withOpacity(1),
                                blurRadius: 23,
                                spreadRadius: 7,
                              )
                            ]

                        ),
                        height: 110,
                        width:170,
                        child: GestureDetector( onTap: (){Navigator.push(context,
                            MaterialPageRoute(builder: (context)=> Akshat_(),));},
                            child:Image.asset('assets/single.png',height:100,width:100)
                        )
                    ),
                    Container(
                      margin:EdgeInsets.fromLTRB(0, 20, 0, 10),
                      child: Text(
                        "Singly Linked List",
                        style: TextStyle(
                          color: Colors.white,
                            fontSize: 14   ,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1
                        ),
                      ),
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(

                          ),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [BoxShadow(
                              color: Colors.red.withOpacity(1),
                              blurRadius: 23,
                              spreadRadius: 7
                          )]
                      ),
                      height: 120,
                      width:170,
                      child: GestureDetector( onTap: (){Navigator.push(context,
                          MaterialPageRoute(builder: (context)=> Akshra_(),));},
                          child:Image.asset('assets/double.png',fit:BoxFit.contain)
                      )
                    ),
                    Container(
                   margin:EdgeInsets.fromLTRB(0, 20, 0, 10),
                      child: Text(
                        "Doubly Linked List",
                        style: TextStyle(
                          color:Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1
                        ),
                      ),
                    )
                  ],
                ), Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          boxShadow: [BoxShadow(
                              blurRadius: 23,
                              spreadRadius: 7,
                              color: Colors.redAccent.withOpacity(1)
                          )],
                          border: Border.all(

                          ),
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white
                      ),
                      height: 110,
                      width:170,
                      child: GestureDetector( onTap: (){Navigator.push(context,
                          MaterialPageRoute(builder: (context)=> Bst(),));},
                      child: Image.asset('assets/binary.png',fit:BoxFit.fill),
                      )
                    ),
                    Container(
                      margin:EdgeInsets.fromLTRB(0, 20, 0, 10),
                      child: Text(
                        "Binary Search Tree",
                        style: TextStyle(
                          color:Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                        ),
                      ),
                    )

                  ],
                )
                ,
                Row(),
              ],
            )
        )

    );
  }
}

class Pp extends StatelessWidget{

  @override
  Widget  build(BuildContext context)
  {
    return Scaffold(
        appBar: AppBar(backgroundColor:Colors.red[900],
            title: Text("Programming Paradigms"),),

        body: Container(

            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: [Colors.black, Colors.black],
              ),
            ),
            child:Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[

                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        decoration: BoxDecoration(

                            border: Border.all(

                            ),
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.redAccent.withOpacity(1),
                                blurRadius: 23,
                                spreadRadius: 7,
                              )
                            ]

                        ),
                        height: 120,
                        width:170,
                        child: GestureDetector( onTap: (){Navigator.push(context,
                            MaterialPageRoute(builder: (context)=> Java(),));},
                            child:Image.asset('assets/Javal.png',height:100,width:100)
                        )
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 20, 0, 10),
                      child: Text(
                        "Java",
                        style: TextStyle(
                          color:Colors.white,
                            fontSize: 14   ,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1
                        ),
                      ),
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(

                            ),
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [BoxShadow(
                                color: Colors.redAccent.withOpacity(1),
                                blurRadius: 23,
                                spreadRadius: 7
                            )]
                        ),
                        height: 120,
                        width:170,
                        child: GestureDetector( onTap: (){Navigator.push(context,
                            MaterialPageRoute(builder: (context)=> Cp(),));},
                            child:Image.asset('assets/c.png',fit:BoxFit.contain)
                        )
                    ),
                    Container(
                      margin:EdgeInsets.fromLTRB(0, 20, 0, 10),
                      child: Text(
                        "C Programming",
                        style: TextStyle(
                          color:Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1
                        ),
                      ),
                    )
                  ],
                ),
                Row(),
              ],
            )
        )

    );
  }
}
class electronics_ extends StatefulWidget {


  @override
  State<electronics_> createState() => _electronics_State();
}

class _electronics_State extends State<electronics_> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: Colors.red[900],title: Text("Logic Gates"),),

        body: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: [Colors.black, Colors.black],
              ),
            ),
            child:Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[

                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        decoration: BoxDecoration(

                            border: Border.all(

                            ),
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.redAccent.withOpacity(1),
                                blurRadius: 23,
                                spreadRadius: 7,
                              )
                            ]

                        ),
                        height: 100,
                        width:170,
                        child: GestureDetector( onTap: (){Navigator.push(context,
                            MaterialPageRoute(builder: (context)=> Logic(),));},
                            child:Image.asset('assets/logic.png',height:100,width:100)
                        )
                    ),
                    Container(
                      margin:EdgeInsets.fromLTRB(0, 20, 0, 10),
                      child: Text(
                        "Logic Gates",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14   ,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1
                        ),
                      ),
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(

                            ),
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [BoxShadow(
                                color: Colors.red.withOpacity(1),
                                blurRadius: 23,
                                spreadRadius: 7
                            )]
                        ),
                        height: 120,
                        width:170,
                        child: GestureDetector( onTap: (){Navigator.push(context,
                            MaterialPageRoute(builder: (context)=> Adders(),));},
                            child:Image.asset('assets/adder.png',fit:BoxFit.contain)
                        )
                    ),
                    Container(
                      margin:EdgeInsets.fromLTRB(0, 20, 0, 10),
                      child: Text(
                        "Adders",
                        style: TextStyle(
                            color:Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1
                        ),
                      ),
                    )
                  ],
                ), Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        decoration: BoxDecoration(
                            boxShadow: [BoxShadow(
                                blurRadius: 23,
                                spreadRadius: 7,
                                color: Colors.redAccent.withOpacity(1)
                            )],
                            border: Border.all(

                            ),
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white
                        ),
                        height: 100,
                        width:170,
                        child: GestureDetector( onTap: (){Navigator.push(context,
                            MaterialPageRoute(builder: (context)=> Mux(),));},
                          child: Image.asset('assets/mux.png',fit:BoxFit.fill),
                        )
                    ),
                    Container(
                      margin:EdgeInsets.fromLTRB(0, 20, 0, 10),
                      child: Text(
                        "Mux - Demux",
                        style: TextStyle(
                          color:Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                        ),
                      ),
                    )

                  ],
                )
                ,
                Row(),
              ],
            )
        )

    );
  }
}
class LogicVid extends StatefulWidget {
  @override
  _VideoPla createState() => _VideoPla();
}

class _VideoPla extends State<LogicVid> {
  VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(
        'assets/and.mp4')
      ..initialize().then((_) {
        setState(() {});
        _controller.play();
      });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Video Player Demo',
        home: Scaffold(
            appBar: AppBar(
              title: Text("And Logic Gate"),
            ),
            body:
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.bottomRight,
                      colors: [Colors.indigo[800],Colors.lightBlue]
                  )),
              child:Column(
                  children: [

                    Container(
                      height: 350,
                      width: MediaQuery.of(context).size.width,


                      child: _controller.value.isInitialized
                          ? AspectRatio(
                        aspectRatio: _controller.value.aspectRatio,
                        child: VideoPlayer(_controller),
                      )
                          : CircularProgressIndicator(),
                    ),
                  ]),
            )
        )
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
class AdderVid extends StatefulWidget {
  @override
  _VideoPlu createState() => _VideoPlu();
}

class _VideoPlu extends State<AdderVid> {
  VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(
        'assets/adders.mp4')
      ..initialize().then((_) {
        setState(() {});
        _controller.play();
      });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Video Player Demo',
        home: Scaffold(
            appBar: AppBar(
              title: Text("Adders"),
            ),
            body:
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.bottomRight,
                      colors: [Colors.indigo[800],Colors.lightBlue]
                  )),
              child:Column(
                  children: [

                    Container(
                      height: 350,
                      width: MediaQuery.of(context).size.width,


                      child: _controller.value.isInitialized
                          ? AspectRatio(
                        aspectRatio: _controller.value.aspectRatio,
                        child: VideoPlayer(_controller),
                      )
                          : CircularProgressIndicator(),
                    ),
                  ]),
            )
        )
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
class LogicContent extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Logic gates"),),
      body: Container(
          child: WebView(
            initialUrl: 'https://byjus.com/jee/basic-logic-gates/',
            javascriptMode: JavascriptMode.unrestricted,
          )
      ),
    );
  }
}
class MuxContent extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Mux DeMux"),),
      body: Container(
          child: WebView(
            initialUrl: 'https://byjus.com/gate/difference-between-multiplexer-and-demultiplexer/',
            javascriptMode: JavascriptMode.unrestricted,
          )
      ),
    );
  }
}
class AdderContent extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Adders"),),
      body: Container(
          child: WebView(
            initialUrl: 'https://www.geeksforgeeks.org/full-adder-in-digital-logic/',
            javascriptMode: JavascriptMode.unrestricted,
          )
      ),
    );
  }
}
class Muxvid extends StatefulWidget {
  @override
  _VideoPlaiy createState() => _VideoPlaiy();
}

class _VideoPlaiy extends State<Muxvid> {
  VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(
        'assets/mux.mp4')
      ..initialize().then((_) {
        setState(() {});
        _controller.play();
      });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Video Player Demo',
        home: Scaffold(
            appBar: AppBar(
              title: Text("Mux"),
            ),
            body:
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.bottomRight,
                      colors: [Colors.indigo[800],Colors.lightBlue]
                  )),
              child:Column(
                  children: [

                    Container(
                      height: 350,
                      width: MediaQuery.of(context).size.width,


                      child: _controller.value.isInitialized
                          ? AspectRatio(
                        aspectRatio: _controller.value.aspectRatio,
                        child: VideoPlayer(_controller),
                      )
                          : CircularProgressIndicator(),
                    ),
                  ]),
            )
        )
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
class Mux extends StatefulWidget {
  @override
  State<Mux> createState() => Mu();
}
class Mu extends  State<Mux>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: Colors.red[900],title: Text("Mux-DeMux"),),
        body:Container(
            color: Colors.black,
            child:Column(
              children: <Widget>[
                Container(
                    margin: EdgeInsets.fromLTRB(20, 29, 15, 90),
                    padding: EdgeInsets.symmetric(vertical: 5,horizontal: 7),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(7),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.red.withOpacity(0.8),
                          spreadRadius: 2,
                          blurRadius: 20,
                          offset: Offset(0, 0),
                        ),
                      ],
                    ),
                    height: 320,
                    width: 350,
                    child:SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      child: Text("A multiplexer makes it possible for several input signals to share one device or resource, for example, one analog-to-digital converter[3] or one communications transmission medium, instead of having one device per input signal. Multiplexers can also be used to implement Boolean functions of multiple variables.\nConversely, a demultiplexer (or demux) is a device taking a single input and selecting signals of the output of the compatible mux, which is connected to the single input, and a shared selection line. A multiplexer is often used with a complementary demultiplexer on the receiving end.[1]\nAn electronic multiplexer can be considered as a multiple-input, single-output switch, and a demultiplexer as a single-input, multiple-output switch.[4] The schematic symbol for a multiplexer is an isosceles trapezoid with the longer parallel side containing the input pins and the short parallel side containing the output pin.[5] The schematic on the right shows a 2-to-1 multiplexer on the left and an equivalent switch on the right. The\n�\n�\n�\nsel wire connects the desired input to the output. Mux",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w600),),
                    )
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 10),
                          width: 100,
                          height: 100,
                          decoration:BoxDecoration(
                              boxShadow: [BoxShadow(
                                  blurRadius: 30,
                                  spreadRadius: 1,
                                  color: Colors.redAccent
                              )],
                              color: Colors.white30,
                              borderRadius: BorderRadius.circular(50)
                          ) ,
                          child: GestureDetector( onTap: (){Navigator.push(context,
                              MaterialPageRoute(builder: (context)=> MuxContent(),));},
                            child:ClipOval(
                              child: Image.asset(
                                'assets/threed.png',
                                fit: BoxFit.cover,
                                width: 100,
                                height: 100,
                              ),
                            ) ,
                          ) ,
                        ),
                        Text("3D Model",style: TextStyle(color: Colors.white,fontSize: 20,letterSpacing: 1,fontWeight: FontWeight.w500))
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 10),
                          width: 100,
                          height: 100,
                          decoration:BoxDecoration(
                              boxShadow: [BoxShadow(
                                  blurRadius: 30,
                                  spreadRadius: 1,
                                  color: Colors.redAccent
                              )],
                              color: Colors.white30,
                              borderRadius: BorderRadius.circular(50)
                          ) ,
                          child: GestureDetector( onTap: (){Navigator.push(context,
                              MaterialPageRoute(builder: (context)=> Muxvid(),));},
                            child:ClipOval(
                              child: Image.asset(
                                'assets/vid.png',
                                fit: BoxFit.cover,
                                width: 100,
                                height: 100,
                              ),
                            ) ,
                          ) ,
                        ),
                        Text("Animation",style: TextStyle(color: Colors.white,fontSize: 20,letterSpacing: 1,fontWeight: FontWeight.w500))
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                            margin: EdgeInsets.symmetric(vertical: 10),
                            width: 100,
                            height: 100,
                            decoration:BoxDecoration(
                                boxShadow: [BoxShadow(
                                    blurRadius: 30,
                                    spreadRadius: 1,
                                    color: Colors.redAccent
                                )],
                                color: Colors.white30,
                                borderRadius: BorderRadius.circular(50)
                            ) ,
                            child: GestureDetector( onTap: (){Navigator.push(context,
                                MaterialPageRoute(builder: (context)=> MuxContent(),));},
                              child:ClipOval(
                                child: Image.asset(
                                  'assets/content.png',
                                  fit: BoxFit.cover,
                                  width: 100,
                                  height: 100,
                                ),
                              ) ,
                            )

                        ),
                        Text("Content",style: TextStyle(color: Colors.white,fontSize: 20,letterSpacing: 1,fontWeight: FontWeight.w500))
                      ],
                    ),

                  ],
                )


              ],
            )
        )


    );
  }
}
class Adders extends StatefulWidget {
  @override
  State<Adders> createState() => Ad();
}
class Ad extends  State<Adders>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: Colors.red[900],title: Text("Adders"),),
        body:Container(
            color: Colors.black,
            child:Column(
              children: <Widget>[
                Container(
                    margin: EdgeInsets.fromLTRB(20, 29, 15, 90),
                    padding: EdgeInsets.symmetric(vertical: 5,horizontal: 7),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(7),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.red.withOpacity(0.8),
                          spreadRadius: 2,
                          blurRadius: 20,
                          offset: Offset(0, 0),
                        ),
                      ],
                    ),
                    height: 320,
                    width: 350,
                    child:SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      child: Text("An adder, or summer,[1] is a digital circuit that performs addition of numbers. In many computers and other kinds of processors adders are used in the arithmetic logic units (ALUs). They are also used in other parts of the processor, where they are used to calculate addresses, table indices, increment and decrement operators and similar operations.\nAlthough adders can be constructed for many number representations, such as binary-coded decimal or excess-3, the most common adders operate on binary numbers. In cases where two's complement or ones' complement is being used to represent negative numbers, it is trivial to modify an adder into an adder–subtractor. Other signed number representations require more logic around the basic adder.",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w600),),
                    )
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 10),
                          width: 100,
                          height: 100,
                          decoration:BoxDecoration(
                              boxShadow: [BoxShadow(
                                  blurRadius: 30,
                                  spreadRadius: 1,
                                  color: Colors.redAccent
                              )],
                              color: Colors.white30,
                              borderRadius: BorderRadius.circular(50)
                          ) ,
                          child: GestureDetector( onTap: (){Navigator.push(context,
                              MaterialPageRoute(builder: (context)=> AdderContent(),));},
                            child:ClipOval(
                              child: Image.asset(
                                'assets/threed.png',
                                fit: BoxFit.cover,
                                width: 100,
                                height: 100,
                              ),
                            ) ,
                          ) ,
                        ),
                        Text("3D Model",style: TextStyle(color: Colors.white,fontSize: 20,letterSpacing: 1,fontWeight: FontWeight.w500))
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 10),
                          width: 100,
                          height: 100,
                          decoration:BoxDecoration(
                              boxShadow: [BoxShadow(
                                  blurRadius: 30,
                                  spreadRadius: 1,
                                  color: Colors.redAccent
                              )],
                              color: Colors.white30,
                              borderRadius: BorderRadius.circular(50)
                          ) ,
                          child: GestureDetector( onTap: (){Navigator.push(context,
                              MaterialPageRoute(builder: (context)=> AdderVid(),));},
                            child:ClipOval(
                              child: Image.asset(
                                'assets/vid.png',
                                fit: BoxFit.cover,
                                width: 100,
                                height: 100,
                              ),
                            ) ,
                          ) ,
                        ),
                        Text("Animation",style: TextStyle(color: Colors.white,fontSize: 20,letterSpacing: 1,fontWeight: FontWeight.w500))
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                            margin: EdgeInsets.symmetric(vertical: 10),
                            width: 100,
                            height: 100,
                            decoration:BoxDecoration(
                                boxShadow: [BoxShadow(
                                    blurRadius: 30,
                                    spreadRadius: 1,
                                    color: Colors.redAccent
                                )],
                                color: Colors.white30,
                                borderRadius: BorderRadius.circular(50)
                            ) ,
                            child: GestureDetector( onTap: (){Navigator.push(context,
                                MaterialPageRoute(builder: (context)=> AdderContent(),));},
                              child:ClipOval(
                                child: Image.asset(
                                  'assets/content.png',
                                  fit: BoxFit.cover,
                                  width: 100,
                                  height: 100,
                                ),
                              ) ,
                            )

                        ),
                        Text("Content",style: TextStyle(color: Colors.white,fontSize: 20,letterSpacing: 1,fontWeight: FontWeight.w500))
                      ],
                    ),

                  ],
                )


              ],
            )
        )


    );
  }
}
class Logic extends StatefulWidget {
  @override
  State<Logic> createState() => Lo();
}
class Lo extends  State<Logic>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: Colors.red[900],title: Text("Logic Gates"),),
        body:Container(
            color: Colors.black,
            child:Column(
              children: <Widget>[
                Container(
                    margin: EdgeInsets.fromLTRB(20, 29, 15, 90),
                    padding: EdgeInsets.symmetric(vertical: 5,horizontal: 7),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(7),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.red.withOpacity(0.8),
                          spreadRadius: 2,
                          blurRadius: 20,
                          offset: Offset(0, 0),
                        ),
                      ],
                    ),
                    height: 320,
                    width: 350,
                    child:SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      child: Text("Logic gates play an important role in circuit design and digital systems. It is a building block of a digital system and an electronic circuit that always have only one output. These gates can have one input or more than one input, but most of the gates have two inputs. On the basis of the relationship between the input and the output, these gates are named as AND gate, OR gate, NOT gate, etc.\nThere are different types of gates which are as follows:\nThis gate works in the same way as the logical operator 'and'. The AND gate is a circuit that performs the AND operation of the inputs. This gate has a minimum of 2 input values and an output value.\nY=A AND B AND C AND D……N\n Y=A.B.C.D……N\n Y=ABCD……N",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w600),),
                    )
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 10),
                          width: 100,
                          height: 100,
                          decoration:BoxDecoration(
                              boxShadow: [BoxShadow(
                                  blurRadius: 30,
                                  spreadRadius: 1,
                                  color: Colors.redAccent
                              )],
                              color: Colors.white30,
                              borderRadius: BorderRadius.circular(50)
                          ) ,
                          child: GestureDetector( onTap: (){Navigator.push(context,
                              MaterialPageRoute(builder: (context)=> LogicContent(),));},
                            child:ClipOval(
                              child: Image.asset(
                                'assets/threed.png',
                                fit: BoxFit.cover,
                                width: 100,
                                height: 100,
                              ),
                            ) ,
                          ) ,
                        ),
                        Text("3D Model",style: TextStyle(color: Colors.white,fontSize: 20,letterSpacing: 1,fontWeight: FontWeight.w500))
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 10),
                          width: 100,
                          height: 100,
                          decoration:BoxDecoration(
                              boxShadow: [BoxShadow(
                                  blurRadius: 30,
                                  spreadRadius: 1,
                                  color: Colors.redAccent
                              )],
                              color: Colors.white30,
                              borderRadius: BorderRadius.circular(50)
                          ) ,
                          child: GestureDetector( onTap: (){Navigator.push(context,
                              MaterialPageRoute(builder: (context)=> LogicVid(),));},
                            child:ClipOval(
                              child: Image.asset(
                                'assets/vid.png',
                                fit: BoxFit.cover,
                                width: 100,
                                height: 100,
                              ),
                            ) ,
                          ) ,
                        ),
                        Text("Animation",style: TextStyle(color: Colors.white,fontSize: 20,letterSpacing: 1,fontWeight: FontWeight.w500))
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                            margin: EdgeInsets.symmetric(vertical: 10),
                            width: 100,
                            height: 100,
                            decoration:BoxDecoration(
                                boxShadow: [BoxShadow(
                                    blurRadius: 30,
                                    spreadRadius: 1,
                                    color: Colors.redAccent
                                )],
                                color: Colors.white30,
                                borderRadius: BorderRadius.circular(50)
                            ) ,
                            child: GestureDetector( onTap: (){Navigator.push(context,
                                MaterialPageRoute(builder: (context)=> LogicContent(),));},
                              child:ClipOval(
                                child: Image.asset(
                                  'assets/content.png',
                                  fit: BoxFit.cover,
                                  width: 100,
                                  height: 100,
                                ),
                              ) ,
                            )

                        ),
                        Text("Content",style: TextStyle(color: Colors.white,fontSize: 20,letterSpacing: 1,fontWeight: FontWeight.w500))
                      ],
                    ),

                  ],
                )


              ],
            )
        )


    );
  }
}


class Model_ extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("3D Model"),),
      body: Container(
        child: WebView(
          initialUrl: 'https://app.vectary.com/p/4iYco0QpxKd9xAQn44V1k9',
          javascriptMode: JavascriptMode.unrestricted,
          )
      ),
    );
  }
}
_launchURLApp() async {
  var url = Uri.parse("https://webar-studio.com/da3194f04b/");
  if (await canLaunchUrl(url)) {
    await launchUrl(url , mode: LaunchMode.externalApplication);
  } else {
    throw 'Could not launch $url';
  }
}
class Akshat_ extends StatefulWidget {
  @override
  State<Akshat_> createState() => Akshat();
}
class Akshat extends  State<Akshat_>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: Colors.red[900],title: Text("Singly LinkList"),),
        body:Container(
          color: Colors.black,
          child:Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(20, 29, 15, 90),
                padding: EdgeInsets.symmetric(vertical: 5,horizontal: 7),
                decoration: BoxDecoration(
                color: Colors.white,
                    borderRadius: BorderRadius.circular(7),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.red.withOpacity(0.8),
                      spreadRadius: 2,
                      blurRadius: 20,
                      offset: Offset(0, 0),
                    ),
                  ],
                ),
                height: 320,
                width: 350,
                child:SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Text("A singly linked list is a type of data structure\n in computer science that is used to store and\n manage a collection of elements. It consists of a sequence of nodes,\n where each node contains a value and a reference to the next node\n in the sequence. The first node is called the head, and the last node is \ncalled the tail. Singly linked lists are often used in programming\n languages like C, Java, and Python to implement more complex data structures such as stacks, \nqueues, and hash tables.Here are some key features of a singly linked list:Nodes:\n Each node in a singly linked list contains two fields - the data (or value) of the node and a reference\n to the next node in the list.Head and tail: The head is the first node in the list, and the tail is the last node in the list.\n The tail node has a reference to null or None, indicating the end of the list.Traversal: To \ntraverse a singly linked list, you start at the head node and follow the references to each subsequent node \nuntil you reach the tail node.Operations: Some of the basic operations that can be performed on a singly linked list\n include adding a node, deleting a node, inserting a node at a specific position, and searching for a node.",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w600),),
            )
          ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 10),
                        width: 100,
                        height: 100,
                        decoration:BoxDecoration(
                            boxShadow: [BoxShadow(
                                blurRadius: 30,
                                spreadRadius: 1,
                                color: Colors.redAccent
                            )],
                            color: Colors.white30,
                            borderRadius: BorderRadius.circular(50)
                        ) ,
                        child: GestureDetector( onTap: (){Navigator.push(context,
                            MaterialPageRoute(builder: (context)=> singlyMod_(),));},
                          child:ClipOval(
                            child: Image.asset(
                              'assets/threed.png',
                              fit: BoxFit.cover,
                              width: 100,
                              height: 100,
                            ),
                          ) ,
                        ) ,
                      ),
                      Text("3D Model",style: TextStyle(color: Colors.white,fontSize: 20,letterSpacing: 1,fontWeight: FontWeight.w500))
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 10),
                        width: 100,
                        height: 100,
                        decoration:BoxDecoration(
                            boxShadow: [BoxShadow(
                                blurRadius: 30,
                                spreadRadius: 1,
                                color: Colors.redAccent
                            )],
                            color: Colors.white30,
                            borderRadius: BorderRadius.circular(50)
                        ) ,
                        child: GestureDetector( onTap: (){Navigator.push(context,
                            MaterialPageRoute(builder: (context)=> SinglyVid(),));},
                          child:ClipOval(
                            child: Image.asset(
                              'assets/vid.png',
                              fit: BoxFit.cover,
                              width: 100,
                              height: 100,
                            ),
                          ) ,
                        ) ,
                      ),
                      Text("Animation",style: TextStyle(color: Colors.white,fontSize: 20,letterSpacing: 1,fontWeight: FontWeight.w500))
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 10),
                        width: 100,
                        height: 100,
                        decoration:BoxDecoration(
                            boxShadow: [BoxShadow(
                                blurRadius: 30,
                                spreadRadius: 1,
                                color: Colors.redAccent
                            )],
                            color: Colors.white30,
                            borderRadius: BorderRadius.circular(50)
                        ) ,
                        child: GestureDetector( onTap: (){Navigator.push(context,
                        MaterialPageRoute(builder: (context)=> Akshu(),));},
                            child:ClipOval(
                              child: Image.asset(
                                'assets/content.png',
                                fit: BoxFit.cover,
                                width: 100,
                                height: 100,
                              ),
                            ) ,
                        )

                      ),
                      Text("Content",style: TextStyle(color: Colors.white,fontSize: 20,letterSpacing: 1,fontWeight: FontWeight.w500))
                    ],
                  ),

                ],
              )


              ],
    )
        )


    );
  }
}
class Akshra_ extends StatefulWidget {


  @override
  State<Akshra_> createState() => Aksh();
}
class Aksh extends  State<Akshra_>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: Colors.red[900],title: Text("Doubly LinkList"),),

        body:Container(
            color: Colors.black,
            child:Column(
              children: <Widget>[
                Container(
                    margin: EdgeInsets.fromLTRB(20, 29, 15, 90),
                    padding: EdgeInsets.symmetric(vertical: 5,horizontal: 7),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(7),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.red.withOpacity(0.8),
                          spreadRadius: 2,
                          blurRadius: 20,
                          offset: Offset(0, 0),
                        ),
                      ],
                    ),
                    height: 320,
                    width: 350,
                    child:SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      child: Text("A doubly linked list is a type of data structure commonly used in computer programming for storing and organizing collections of data In a doubly linked list, each node contains a reference to the next node in the list as well as a reference to the previous node in the list. This allows for efficient traversal of the list in both directions, which can be useful in certain types of algorithms and data manipulation tasks.The first node in the list is called the head, and the last node is called the tail. Each node contains a data element, which can be any type of value, such as a number, string, or object.One of the key advantages of a doubly linked list is that it allows for efficient insertion and deletion of elements in the middle of the list, since each node contains references to both its predecessor and successor. However, this comes at the cost of increased memory usage, since each node must store two pointers instead of one. Doubly linked lists are often used as a foundation for more complex data structures, such as hash tables, stacks, and queues, and are a fundamental concept in computer science and software engineering.",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w600),),
                    )
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 10),
                          width: 100,
                          height: 100,
                          decoration:BoxDecoration(
                              boxShadow: [BoxShadow(
                                  blurRadius: 30,
                                  spreadRadius: 1,
                                  color: Colors.redAccent
                              )],
                              color: Colors.white30,
                              borderRadius: BorderRadius.circular(50)
                          ) ,
                          child: GestureDetector( onTap: (){Navigator.push(context,
                              MaterialPageRoute(builder: (context)=> Doubly(),));},
                            child:ClipOval(
                              child: Image.asset(
                                'assets/threed.png',
                                fit: BoxFit.cover,
                                width: 100,
                                height: 100,
                              ),
                            ) ,
                          ) ,
                        ),
                        Text("3D Model",style: TextStyle(color: Colors.white,fontSize: 20,letterSpacing: 1,fontWeight: FontWeight.w500))
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 10),
                          width: 100,
                          height: 100,
                          decoration:BoxDecoration(
                              boxShadow: [BoxShadow(
                                  blurRadius: 30,
                                  spreadRadius: 1,
                                  color: Colors.redAccent
                              )],
                              color: Colors.white30,
                              borderRadius: BorderRadius.circular(50)
                          ) ,
                          child: GestureDetector( onTap: (){Navigator.push(context,
                              MaterialPageRoute(builder: (context)=> DoublyVid(),));},
                            child:ClipOval(
                              child: Image.asset(
                                'assets/vid.png',
                                fit: BoxFit.cover,
                                width: 100,
                                height: 100,
                              ),
                            ) ,
                          ) ,
                        ),
                        Text("Animation",style: TextStyle(color: Colors.white,fontSize: 20,letterSpacing: 1,fontWeight: FontWeight.w500))
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                            margin: EdgeInsets.symmetric(vertical: 10),
                            width: 100,
                            height: 100,
                            decoration:BoxDecoration(
                                boxShadow: [BoxShadow(
                                    blurRadius: 30,
                                    spreadRadius: 1,
                                    color: Colors.redAccent
                                )],
                                color: Colors.white30,
                                borderRadius: BorderRadius.circular(50)
                            ) ,
                            child: GestureDetector( onTap: (){Navigator.push(context,
                                MaterialPageRoute(builder: (context)=> Akshra(),));},
                              child:ClipOval(
                                child: Image.asset(
                                  'assets/content.png',
                                  fit: BoxFit.cover,
                                  width: 100,
                                  height: 100,
                                ),
                              ) ,
                            )

                        ),
                        Text("Content",style: TextStyle(color: Colors.white,fontSize: 20,letterSpacing: 1,fontWeight: FontWeight.w500))
                      ],
                    ),

                  ],
                )


              ],
            )
        )


    );
  }
}

class DoublyVid extends StatefulWidget {
  @override
  _VideoPl createState() => _VideoPl();
}

class _VideoPl extends State<DoublyVid> {
  VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(
        'assets/sll.mp4')
      ..initialize().then((_) {
        setState(() {});
        _controller.play();
      });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Video Player Demo',
        home: Scaffold(
            appBar: AppBar(
              title: Text("Binary Search Tree"),
            ),
            body:
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.bottomRight,
                      colors: [Colors.indigo[800],Colors.lightBlue]
                  )),
              child:Column(
                  children: [

                    Container(
                      height: 350,
                      width: MediaQuery.of(context).size.width,


                      child: _controller.value.isInitialized
                          ? AspectRatio(
                        aspectRatio: _controller.value.aspectRatio,
                        child: VideoPlayer(_controller),
                      )
                          : CircularProgressIndicator(),
                    ),
                  ]),
            )
        )
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}

class SinglyVid extends StatefulWidget {
  @override
  _VideoPlayerAp createState() => _VideoPlayerAp();
}

class _VideoPlayerAp extends State<SinglyVid> {
  VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(
        'assets/singly.mp4')
      ..initialize().then((_) {
        setState(() {});
        _controller.play();
      });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Video Player Demo',
        home: Scaffold(
            appBar: AppBar(
              title: Text("Binary Search Tree"),
            ),
            body:
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.bottomRight,
                      colors: [Colors.indigo[800],Colors.lightBlue]
                  )),
              child:Column(
                  children: [

                    Container(
                      height: 350,
                      width: MediaQuery.of(context).size.width,


                      child: _controller.value.isInitialized
                          ? AspectRatio(
                        aspectRatio: _controller.value.aspectRatio,
                        child: VideoPlayer(_controller),
                      )
                          : CircularProgressIndicator(),
                    ),
                  ]),
            )
        )
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
class BstVid extends StatefulWidget {
  @override
  _VideoPlayerAppSt createState() => _VideoPlayerAppSt();
}

class _VideoPlayerAppSt extends State<BstVid> {
  VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(
        'assets/btree.mp4')
      ..initialize().then((_) {
        setState(() {});
        _controller.play();
      });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Video Player Demo',
        home: Scaffold(
            appBar: AppBar(
              title: Text("Binary Search Tree"),
            ),
            body:
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.bottomRight,
                      colors: [Colors.indigo[800],Colors.lightBlue]
                  )),
              child:Column(
                  children: [

                    Container(
                      height: 350,
                      width: MediaQuery.of(context).size.width,


                      child: _controller.value.isInitialized
                          ? AspectRatio(
                        aspectRatio: _controller.value.aspectRatio,
                        child: VideoPlayer(_controller),
                      )
                          : CircularProgressIndicator(),
                    ),
                  ]),
            )
        )
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
class Bst extends StatefulWidget {


  @override
  State<Bst> createState() => Bst_();
}
class Bst_ extends  State<Bst>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: Colors.red[900],title: Text("Binary Search Tree"),),

        body:Container(
            color: Colors.black,
            child:Column(
              children: <Widget>[
                Container(
                    margin: EdgeInsets.fromLTRB(20, 29, 15, 90),
                    padding: EdgeInsets.symmetric(vertical: 5,horizontal: 7),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(7),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.red.withOpacity(0.8),
                          spreadRadius: 2,
                          blurRadius: 20,
                          offset: Offset(0, 0),
                        ),
                      ],
                    ),
                    height: 320,
                    width: 350,
                    child:SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      child: Text("A binary search tree (BST) is a type of data structure used in computer programming for organizing and storing collections of data. It is a binary tree, meaning that each node in the tree can have at most two children, a left child and a right child.\nIn a BST, the values of the nodes are organized such that the left subtree of each node contains only nodes with values less than the current node, and the right subtree contains only nodes with values greater than the current node. This makes it possible to perform fast searches, insertions, and deletions in the tree.\nThe key advantage of a BST is its efficiency. Because the values of the nodes are ordered, it is possible to perform search operations in O(log n) time, where n is the number of nodes in the tree. This makes BSTs useful for a wide variety of tasks, including sorting, searching, and data retrieval.\nHowever, one of the potential drawbacks of a BST is that it can become unbalanced if the nodes are added in a non-random order. An unbalanced tree can cause search operations to take longer, reducing the efficiency of the data structure. To address this issue, various algorithms have been developed to balance the tree, such as the AVL tree and the red-black tree.\nBSTs are a fundamental concept in computer science and software engineering, and are widely used in various programming languages and environments.",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w600),),
                    )
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 10),
                          width: 100,
                          height: 100,
                          decoration:BoxDecoration(
                              boxShadow: [BoxShadow(
                                  blurRadius: 30,
                                  spreadRadius: 1,
                                  color: Colors.redAccent
                              )],
                              color: Colors.white30,
                              borderRadius: BorderRadius.circular(50)
                          ) ,
                          child: GestureDetector( onTap: (){Navigator.push(context,
                              MaterialPageRoute(builder: (context)=> Tree(),));},
                            child:ClipOval(
                              child: Image.asset(
                                'assets/threed.png',
                                fit: BoxFit.cover,
                                width: 100,
                                height: 100,
                              ),
                            ) ,
                          ) ,
                        ),
                        Text("3D Model",style: TextStyle(color: Colors.white,fontSize: 20,letterSpacing: 1,fontWeight: FontWeight.w500))
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 10),
                          width: 100,
                          height: 100,
                          decoration:BoxDecoration(
                              boxShadow: [BoxShadow(
                                  blurRadius: 30,
                                  spreadRadius: 1,
                                  color: Colors.redAccent
                              )],
                              color: Colors.white30,
                              borderRadius: BorderRadius.circular(50)
                          ) ,
                          child: GestureDetector( onTap: (){Navigator.push(context,
                              MaterialPageRoute(builder: (context)=> BstVid(),));},
                            child:ClipOval(
                              child: Image.asset(
                                'assets/vid.png',
                                fit: BoxFit.cover,
                                width: 100,
                                height: 100,
                              ),
                            ) ,
                          ) ,
                        ),
                        Text("Animation",style: TextStyle(color: Colors.white,fontSize: 20,letterSpacing: 1,fontWeight: FontWeight.w500))
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                            margin: EdgeInsets.symmetric(vertical: 10),
                            width: 100,
                            height: 100,
                            decoration:BoxDecoration(
                                boxShadow: [BoxShadow(
                                    blurRadius: 30,
                                    spreadRadius: 1,
                                    color: Colors.redAccent
                                )],
                                color: Colors.white30,
                                borderRadius: BorderRadius.circular(50)
                            ) ,
                            child: GestureDetector( onTap: (){Navigator.push(context,
                                MaterialPageRoute(builder: (context)=> BstVid(),));},
                              child:ClipOval(
                                child: Image.asset(
                                  'assets/content.png',
                                  fit: BoxFit.cover,
                                  width: 100,
                                  height: 100,
                                ),
                              ) ,
                            )

                        ),
                        Text("Content",style: TextStyle(color: Colors.white,fontSize: 20,letterSpacing: 1,fontWeight: FontWeight.w500))
                      ],
                    ),

                  ],
                )


              ],
            )
        )


    );
  }
}
class singlyMod_ extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("3D Model"),),
      body: Container(
          child: WebView(
            initialUrl: 'https://app.vectary.com/p/4YQSJqmKEfLUu6RsXHNI1K',
            javascriptMode: JavascriptMode.unrestricted,
          )
      ),
    );
  }
}


class Doubly extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("3D Model"),),
      body: Container(
          child: WebView(
            initialUrl: 'https://app.vectary.com/p/1nv8btQHRKKLYNs2znUN8m',
            javascriptMode: JavascriptMode.unrestricted,
          )
      ),
    );
  }
}
class Akshra extends StatefulWidget {
  @override
  _VideoPlayerAppSta createState() => _VideoPlayerAppSta();
}

class _VideoPlayerAppSta extends State<Akshra> {
  VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(
        'assets/doubly.mp4')
      ..initialize().then((_) {
        setState(() {});
        _controller.play();
      });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Video Player Demo',
        home: Scaffold(
            appBar: AppBar(
              title: Text("Doubly link list"),
            ),
            body:
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.bottomRight,
                      colors: [Colors.indigo[800],Colors.lightBlue]
                  )),
              child:Column(
                  children: [

                    Container(
                      height: 350,
                      width: MediaQuery.of(context).size.width,


                      child: _controller.value.isInitialized
                          ? AspectRatio(
                        aspectRatio: _controller.value.aspectRatio,
                        child: VideoPlayer(_controller),
                      )
                          : CircularProgressIndicator(),
                    ),
                  ]),
            )
        )
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
class Tree extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("3D Model"),),
      body: Container(
          child: WebView(
            initialUrl: 'https://app.vectary.com/p/31qAze6nYChT57sTG182CU',
            javascriptMode: JavascriptMode.unrestricted,
          )
      ),
    );
  }
}
class Akshu extends StatefulWidget {
  @override
  _VideoPlayer createState() => _VideoPlayer();
}

class _VideoPlayer extends State<Akshu> {
  VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(
        'assets/single.mp4')
      ..initialize().then((_) {
        setState(() {});
        _controller.play();
      });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Video Player Demo',
        home: Scaffold(
            appBar: AppBar(backgroundColor: Colors.red[900],
              title: Text("Singly LinkList"),
            ),
            body:
            Container(
              decoration: BoxDecoration(
                color: Colors.black
              ),
              child:Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 80,horizontal: 8.5),
                      height: 450,
                      width: 367,

                      child: _controller.value.isInitialized
                          ? AspectRatio(
                        aspectRatio: _controller.value.aspectRatio,
                        child: VideoPlayer(_controller),
                      )
                          : CircularProgressIndicator(),
                    ),

                  ]),
            )
        )
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}

class Cp extends StatefulWidget {
  @override
  _Video createState() => _Video();
}

class _Video extends State<Cp> {
  VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(
        'assets/Cvid.mp4')
      ..initialize().then((_) {
        setState(() {});
        _controller.play();
      });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Intro to C',
        home: Scaffold(
            appBar: AppBar(
              title: Text("Intro to C"),
            ),
            body:
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.bottomRight,
                      colors: [Colors.indigo[800],Colors.lightBlue]
                  )),
              child:Column(
                  children: [

                    Container(
                      margin: EdgeInsets.symmetric(vertical:150,horizontal: 0),
                      height:400,
                      width: MediaQuery.of(context).size.width,


                      child: _controller.value.isInitialized
                          ? AspectRatio(
                        aspectRatio: _controller.value.aspectRatio,
                        child: VideoPlayer(_controller),
                      )
                          : CircularProgressIndicator(),
                    ),
                  ]),
            )
        )
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
class Java extends StatefulWidget {
  @override
  _Vid createState() => _Vid();
}

class _Vid extends State<Java> {
  VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(
        'assets/java.mp4')
      ..initialize().then((_) {
        setState(() {});
        _controller.play();
      });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Intro to C',
        home: Scaffold(
            appBar: AppBar(
              title: Text("Intro to C"),
            ),
            body:
            Container(

              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.bottomRight,
                      colors: [Colors.indigo[800],Colors.lightBlue]
                  )),
              child:Column(
                  children: [

                    Container(
                      margin: EdgeInsets.symmetric(vertical:100,horizontal: 0),
                      height:450,
                      width: MediaQuery.of(context).size.width,


                      child: _controller.value.isInitialized
                          ? AspectRatio(
                        aspectRatio: _controller.value.aspectRatio,
                        child: VideoPlayer(_controller),
                      )
                          : CircularProgressIndicator(),
                    ),
                  ]),
            )
        )
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}


class scanner_ extends StatelessWidget{
  Widget  build(BuildContext context)
  {
    return Scaffold();
  }
}
class profile_ extends StatelessWidget{
  Widget  build(BuildContext context)
  {
    return Scaffold();
  }
}


class LoginSignupPage extends StatefulWidget {
  @override
  _LoginSignupPageState createState() => _LoginSignupPageState();
}

class _LoginSignupPageState extends State<LoginSignupPage> {
  bool _isLoginForm = true;

  // Text editing controllers
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _noController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_isLoginForm ? 'Login' : 'Signup'),
      ),
      body: Container(
        height:800,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.lightBlueAccent, Colors.cyan[100]],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter
          ),
        ),
        padding: EdgeInsets.all(16.0),
        child: Form(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: buildInputs() + buildButtons(),
            ),
          ),
        ),
      ),
    );
  }

  List<Widget> buildInputs() {
    return [
      TextFormField(
        controller: _emailController,
        decoration: InputDecoration(labelText: 'Email',labelStyle:
        TextStyle(fontWeight: FontWeight.bold)),
        validator: (value) => value.isEmpty ? 'Email can\'t be empty' : null,
      ),
      TextFormField(
        controller: _passwordController,
        decoration: InputDecoration(labelText: 'Password',labelStyle:
        TextStyle(fontWeight: FontWeight.bold)),
        obscureText: true,
        validator: (value) => value.isEmpty ? 'Password can\'t be empty' : null,
      ),
      if (!_isLoginForm)
        TextFormField(
          controller: _confirmPasswordController,
          decoration: InputDecoration(labelText: 'Confirm Password',labelStyle:
          TextStyle(fontWeight: FontWeight.bold)),
          obscureText: true,
          validator: (value) {
            if (value.isEmpty) {
              return 'Confirm Password can\'t be empty';
            } else if (value != _passwordController.text) {
              return 'Passwords do not match';
            }
            return null;
          },
        ),
      if (!_isLoginForm)
        TextFormField(
          controller: _nameController,
          decoration: InputDecoration(labelText: 'Full Name',labelStyle:
          TextStyle(fontWeight: FontWeight.bold)),
          validator: (value) => value.isEmpty ? 'Name can\'t be empty' : null,
        ),
      if (!_isLoginForm)
        TextFormField(
          controller: _noController,
          decoration: InputDecoration(labelText: 'Mobile Number',labelStyle:
          TextStyle(fontWeight: FontWeight.bold)),
          validator: (value) => value.isEmpty ? 'Mobile no. can\'t be empty' : null,
        )


    ];
  }

  List<Widget> buildButtons() {
    if (_isLoginForm) {
      return [
        ElevatedButton(
          child: Text('Login'),
          onPressed: () {},
        ),
        ElevatedButton(
          child: Text('Don\'t have an account? Signup'),
          onPressed: () {
            setState(() {
              _isLoginForm = false;
            });
          },
        ),
      ];
    } else {
      return [
        ElevatedButton(
          child: Text('Signup'),
          onPressed: () {},
        ),
        ElevatedButton(
          child: Text('Already have an account? Login'),
          onPressed: () {
            setState(() {
              _isLoginForm = true;
            });
          },
        ),
      ];
    }
  }
}





