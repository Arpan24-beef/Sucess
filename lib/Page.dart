import 'package:flutter/material.dart';

class Page extends StatefulWidget {
  @override
  _PageState createState() => _PageState();
}

class _PageState extends State<Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 26,
          ),
        ),
        title: Text(
          'Diamon Ring',
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.bold, color: Colors.brown),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.person,
              color: Colors.black,
              size: 26,
            ),
          )
        ],
      ),
      body:Stack(
        children: <Widget>[
          Positioned(
            bottom: 0,
            child: Container(
              height: MediaQuery.of(context).size.height - 200,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(150),
                  topLeft: Radius.circular(150),
                ),
                color: Colors.grey[200],
              ),
            ),
          ),
          Positioned(
              top: 30,
              left: 85,
              child: CircleAvatar(
                radius: 120,
                backgroundColor: Colors.grey[200],
                backgroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRIIQiBtcC3yqdkTYeo2GsqNt1hjpE-8IfGTur6pxfxryWR3uF8'),
              )),
          Positioned(
            top: 290,
            left: 100,
            child: Text(
              'Eluria Diamond \n          Ring',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.brown),
            ),
          ),
          Positioned(
              top: 370,
//            left: 100,
              child: Container(
                height: 120,
                width: MediaQuery.of(context).size.width,
                color: Colors.transparent,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(children: <Widget>[
                      Icon(
                        Icons.spa,
                        size: 30,
                        color: Colors.brown,
                      ),
                      Text('18k',style: TextStyle(color: Colors.brown,fontSize: 30),)
                    ]),
                    Column(children: <Widget>[
                      Icon(
                        Icons.ac_unit,
                        size: 30,
                        color: Colors.brown,
                      ),
                      Text('24k',style: TextStyle(color: Colors.brown,fontSize: 30),)
                    ]),
                    Column(children: <Widget>[
                      Icon(
                        Icons.call_split,
                        size: 30,
                        color: Colors.brown,
                      ),
                      Text('3 Cm',style: TextStyle(color: Colors.brown,fontSize: 30),)
                    ]),
                  ],
                ),
              )),
          Positioned(
            top: 440,
            left: 22,
            child: Row(
              children: <Widget>[
                Container(
                  height: 80,
                  width: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  image: DecorationImage(
                    image: NetworkImage('https://www.forevermark.com/globalassets/editorial/guides/diamond-engagement-guide/finger/gallery1-1.jpg',),
                    fit: BoxFit.fill
                  )
                ),
                ),
                SizedBox(width: 10,),
                Container(
                  height: 80,
                  width: 220,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      image: DecorationImage(
                          image: NetworkImage('https://images-aka.peoplesjewellers.com/plp/p_plpmain_engagementRings_m.jpg',),
                          fit: BoxFit.fill
                      )
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom:15,
            left: 50,

            child: Text('\$210/hr',style: TextStyle(color: Colors.brown,fontSize: 34,fontWeight: FontWeight.bold),),
          ),

          Positioned(bottom: 8,right:10,child: Container(
            height: 60,
            width: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.brown,
            ),
            child:MaterialButton(onPressed: () {},child: Text('Rent',style: TextStyle(fontSize: 26,color: Colors.white,fontWeight: FontWeight.bold),),) ,
          )),

        ],
      ),
    );
  }
}
