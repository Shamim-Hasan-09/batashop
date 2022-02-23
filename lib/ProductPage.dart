import 'package:flutter/material.dart';
class ProductPage extends StatefulWidget {
  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff4ecf8),
      appBar: AppBar(
        brightness: Brightness.light,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: (){Navigator.pop(context);},
          icon: Icon(
            Icons.arrow_back,
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
                          color: Colors.white,
                          width: 3
                      )
                  ),
                ),
              )
            ],
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 300,
                    width: MediaQuery.of(context).size.width,
                    child: Stack(
                      children: <Widget>[
                        Container(
                          height: 300,
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.only(top: 20),
                          child: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            child: Stack(
                              children: <Widget>[
                                Container(
                                  height: 300,
                                  width: MediaQuery.of(context).size.width,
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
                                  child: Text('air', style: TextStyle(
                                    fontSize: 140,
                                    color: Colors.black.withOpacity(.15),
                                  ),),
                                ),
                                Positioned(
                                  bottom: -30,
                                  left: -10,
                                  child: Text('spa', style: TextStyle(
                                    fontSize: 140,
                                    color: Colors.black.withOpacity(.15),
                                  ),),
                                ),
                                Positioned(
                                  left: 15,
                                  bottom: 15,
                                  child: Text("Bata ispa air", style: TextStyle(
                                      fontSize: 30,
                                      color: Colors.white
                                  ),),
                                ),
                                Positioned(
                                  top: 0,
                                  left: 0,
                                  right: 0,
                                  child: Container(
                                    height: 230,
                                    width: 230,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage('asset/images/sho1.jpg'),
                                            fit: BoxFit.contain
                                        )
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                  SizedBox(height: 30,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Container(
                        child: Text('Bata ispa air Max 720', style: TextStyle(
                            fontSize: 30
                        ),),
                      ),
                      Container(
                        child: Row(
                          children: <Widget>[
                            Container(
                              width: 25,
                              child: IconButton(
                                icon: Icon(
                                  Icons.star,
                                  color: Colors.purple,
                                ),
                              ),
                            ),
                            Container(
                              width: 25,
                              child: IconButton(
                                icon: Icon(
                                  Icons.star,
                                  color: Colors.purple,
                                ),
                              ),
                            ),
                            Container(
                              width: 25,
                              child: IconButton(
                                icon: Icon(
                                  Icons.star,
                                  color: Colors.purple,
                                ),
                              ),
                            ),
                            Container(
                              width: 25,
                              child: IconButton(
                                icon: Icon(
                                  Icons.star_border,
                                  color: Colors.purple,
                                ),
                              ),
                            ),
                            Container(
                              width: 25,
                              child: IconButton(
                                icon: Icon(
                                  Icons.star_border,
                                  color: Colors.purple,
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 10,),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text('\$187', style: TextStyle(
                        color: Colors.blue,
                        fontSize: 30
                    ),),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text("Bata Corporation is a Czech multinational footwear and fashion accessory manufacturer and retailer founded in Zlín, today in the Czech Republic. After World War II, its factories in socialist states were nationalized, while its branches in capitalist states remained family-owned", style: TextStyle(
                        color: Colors.black54,
                        fontSize: 15
                    ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text('Colors', style: TextStyle(
                        fontSize: 30
                    ),),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: <Widget>[
                        Container(
                          height: 50,
                          width: 50,
                          margin: EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.black,
                              border: Border.all(
                                  color: Colors.white,
                                  width: 4
                              ),
                              boxShadow: [BoxShadow(
                                  color: Colors.black,
                                  spreadRadius: 0.5,
                                  blurRadius: 5
                              )]
                          ),
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          margin: EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.blueAccent
                          ),
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          margin: EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.orange
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 100,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.white
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    height: 70,
                    width: MediaQuery.of(context).size.width*0.4,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(7)),
                        color: Colors.grey.withOpacity(.5)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          height: 50,
                          width: 10,
                          child: IconButton(
                            icon: Icon(
                              Icons.shopping_cart,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Text('Add to cart', style: TextStyle(
                            fontSize: 20
                        ),)
                      ],
                    ),
                  ),
                  Container(
                    height: 70,
                    width: MediaQuery.of(context).size.width*0.4,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(7)),
                        gradient: LinearGradient(
                            colors: [Color(0xffae6cca), Color(0xff5837d2)]
                        )
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          height: 50,
                          width: 10,
                          child: IconButton(
                            icon: Icon(
                              Icons.shopping_basket,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Text('Buy Now', style: TextStyle(
                            fontSize: 20,
                            color: Colors.white
                        ),)
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
