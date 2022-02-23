import 'package:flutter/material.dart';
import 'package:batashop/ProductPage.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: 'Big Noodle'
      ),
      home: MyHomePage(),
      routes: {
        '/ProductPage' : (context)=>ProductPage(),
      },
    );
  }
}
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff4ecf8),
      appBar: AppBar(
        brightness: Brightness.light,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.black,
          ),
        ),
        title: Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('asset/images/logo.png'),
              )
          ),
        ),
        actions: <Widget>[
          Stack(
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.shopping_cart,
                  color: Colors.black,
                ),
              ),
              Positioned(
                top: 2,
                right: 2,
                child: Container(
                  height: 18,
                  width: 18,
                  decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      shape: BoxShape.circle,
                      border: Border.all(
                          color : Colors.white,
                          width: 3
                      )
                  ),
                ),
              )
            ],
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.white
              ),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        style: TextStyle(
                          fontSize: 30,
                        ),
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'SEARCH'
                        ),
                      ),
                    ),
                    Container(
                      width: 50,
                      padding: EdgeInsets.all(10),
                      child: IconButton(
                        icon: Icon(
                          Icons.search,
                          color: Colors.black,
                          size: 30,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 20,),
                    Container(
                      height: 310,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          createMainList('sho1.jpg', ' Bata is synonymous to shoes in Bangladesh \nmax 20', '\$189'),
                          createMainList('sho2.png', ' Bata is synonymous to shoes in Bangladesh \nmax 30', '\298'),
                          createMainList('sho3.jpg', ' Bata is synonymous to shoes in Bangladesh \nmax 68', '\$239'),
                        ],
                      ),
                    ),
                    SizedBox(height: 40,),
                    Text('Now Trending', style: TextStyle(
                      fontSize: 30,

                    ),),
                    SizedBox(height: 20,),
                    Container(
                      height: 230,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          nowTrending('show.jpg', '110', 'Bata ispa air max 260'),
                          nowTrending('sho1.jpg', '120', 'Bata ispa air max 97'),
                          nowTrending('sho2.png', '140', 'Bata ispa air max 160'),
                          nowTrending('sho3.jpg', '160', 'Bata ispa air max 260'),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
  Container createMainList(String img, String name, String price)
  {
    return Container(
      height: 310,
      width: 330,
      child: InkWell(
        onTap: openProductPage,
        child: Stack(
          children: <Widget>[
            Container(
              height: 300,
              width: 300,
              margin: EdgeInsets.only(top: 20, right: 20),
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                child: Stack(
                  children: <Widget>[
                    Container(
                      height: 300,
                      width: 300,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          gradient: LinearGradient(
                            colors: [Color(0xffae6cca), Color(0xff5837d2)],
                          )
                      ),
                    ),
                    Positioned(
                      top: -30,
                      right: -10,
                      child: Text("air", style: TextStyle(
                        fontSize: 140,
                        color: Colors.black.withOpacity(0.15),
                      ),),
                    ),
                    Positioned(
                      bottom: -30,
                      left: -10,
                      child: Text("spa", style: TextStyle(
                        fontSize: 140,
                        color: Colors.black.withOpacity(0.15),
                      ),),
                    ),
                    Positioned(
                      left: 15,
                      bottom: 15,
                      child: Text('$name', style: TextStyle(
                          fontSize: 30,
                          color: Colors.white
                      ),),
                    ),
                    Positioned(
                      right: 15,
                      bottom: 15,
                      child: Text('\$$price', style: TextStyle(
                          fontSize: 40,
                          color: Colors.white
                      ),),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              top: -40,
              right: 10,
              child: Container(
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('asset/images/$img.png'),
                        fit: BoxFit.contain
                    )
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
  Container nowTrending(String img, String price, String name)
  {
    return Container(
      width: 200,
      margin: EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: Colors.white
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 150,
            width: 200,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('asset/images/$img.png'),
                )
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('\$$price', style: TextStyle(
                    fontSize: 30,
                    color: Colors.purple
                ),),
                IconButton(
                  icon: Icon(
                    Icons.favorite_border,
                    color: Colors.purple,
                  ),
                )
              ],
            ),
          ),
          Center(
            child: Text('$name', style: TextStyle(
                fontSize: 20
            ),),
          ),
          SizedBox(height: 10,)
        ],
      ),
    );
  }
  void openProductPage()
  {
    Navigator.pushNamed(context, '/ProductPage');
  }
}


