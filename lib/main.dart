import 'package:flutter/material.dart';
import 'package:luxaries/Page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: <Widget>[
      Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
      ),
      Container(
        height: 320,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Colors.blueGrey[700],gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Colors.blue, Colors.red,Colors.pink])),
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              IconButton(
                splashColor: Colors.cyanAccent,
                icon: Icon(
                  Icons.dashboard,
                  size: 34,
                  color: Colors.white,
                ),
                onPressed: () {
                  print('test1');
                },
              ),
              IconButton(
                splashColor: Colors.cyanAccent,
                icon: Icon(
                  Icons.search,
                  size: 34,
                  color: Colors.white,
                ),
                onPressed: () {
                  print('test2');
                },
              ),
            ],
          ),
        ),
      ),
      Positioned(
        top: 90,
        left: 50,
        child: Text(
          'Hello, Annie',
          style: TextStyle(
              color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold),
        ),
      ),
      Positioned(
        top: 120,
        left: 50,
        child: Text(
          'Luxury',
          style: TextStyle(
              color: Colors.white, fontSize: 50, fontWeight: FontWeight.bold),
        ),
      ),
      Positioned(
        top: 180,
        left: 50,
        child: Text(
          'Manager',
          style: TextStyle(
              color: Colors.white,
              fontSize: 34,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic),
        ),
      ),
      Positioned(
        top: 250,
        left: 22,
        child: Container(
          height: 120,
          width: 370,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25), color: Colors.brown),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 25, right: 155),
                      child: Text(
                        'Your renting\n History',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 26,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
              IconButton(
                icon: Icon(
                  Icons.arrow_forward,
                  size: 35,
                  color: Colors.white,
                ),
                onPressed: () {
                  print('test3');
                },
                splashColor: Colors.cyanAccent,
              )
            ],
          ),
        ),
      ),
      Positioned(
        top: 380,
        left: 22,
        child: Container(
          height: 120,
          width: 170,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25), color: Colors.grey[200]),
          child: ListTile(
            title: Image.network(
              'https://www.searchpng.com/wp-content/uploads/2019/03/Diamond-Icon-PNG-715x715.png',
              height: 75,
              width: 75,
            ),
            subtitle: Text(
              '         Jewellery',
              style: TextStyle(
                  color: Colors.brown[300],
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
      Positioned(
        top: 380,
        left: 215,
        child: Container(
          height: 120,
          width: 170,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25), color: Colors.grey[200]),
          child: ListTile(
            title: Image.network(
              'https://cdn3.iconfinder.com/data/icons/clothes-products/512/jacket-512.png',
              height: 75,
              width: 75,
            ),
            subtitle: Text(
              '          Clothing',
              style: TextStyle(
                  color: Colors.brown[300],
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
      Positioned(
          top: 510,
          left: 25,
          child: Text(
            "Ready to Rent",
            style: TextStyle(
                fontSize: 24,
                color: Colors.brown[300],
                fontWeight: FontWeight.bold),
          )),
      Positioned(
          top: 540,
          left: 25,
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width-20,
          color: Colors.white,
          child: ListView(
            children: <Widget>[
              ListTile(onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Page()));
              },
                leading: Image.network('https://4.imimg.com/data4/EW/YU/MY-11616214/diamond-ring-500x500.jpg',height: 50,width: 50,),
                title: Text('7 Carat \n Diamond Ring',style: TextStyle(fontSize: 26,color: Colors.grey[600],fontWeight: FontWeight.bold),),
                trailing: Text('\$ 125/hr',style: TextStyle(color: Colors.brown,fontSize: 26,fontWeight: FontWeight.bold),),
              ),
              ListTile(
                leading: Image.network('https://4.imimg.com/data4/VX/SN/MY-3520335/diamond-necklace-500x500.jpg',height: 50,width: 50,),
                title: Text('7 Carat \n Diamond Nackless',style: TextStyle(fontSize: 26,color: Colors.grey[600],fontWeight: FontWeight.bold),),
                trailing: Text('\$ 225/hr',style: TextStyle(color: Colors.brown,fontSize: 26,fontWeight: FontWeight.bold),),
              ),
              ListTile(
                leading: Image.network('https://cdn11.bigcommerce.com/s-y73h7mn55y/images/stencil/1280x1280/products/95322/34040/c14622%20front__29422.1540583892.jpg?c=2&imbypass=on',height: 50,width: 50,),
                title: Text('7 Carat \n Diamond Pendent',style: TextStyle(fontSize: 26,color: Colors.grey[600],fontWeight: FontWeight.bold),),
                trailing: Text('\$ 175/hr',style: TextStyle(color: Colors.brown,fontSize: 26,fontWeight: FontWeight.bold),),
              )
            ],
          ),
        ),
         )
    ]));
  }
}
