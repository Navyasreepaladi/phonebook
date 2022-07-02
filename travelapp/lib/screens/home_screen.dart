import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travelapp/widgets/destination_carousel.dart';
import 'package:travelapp/widgets/hotel_carousel.dart';
import 'json.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController searchController = new TextEditingController();

  int _selectedIndex = 0;
  int _currentTab = 0;
  bool isSearching = false;
  List<IconData> _icons = [
    FontAwesomeIcons.plane,
    FontAwesomeIcons.train,
    FontAwesomeIcons.bus,
    FontAwesomeIcons.ship,
  ];

  Widget _buildIcon(int index) {
    return GestureDetector(
      onTap: () {
        if (index == 0) {
          openUrl();
        }
        if (index == 1) {
          openUrl1();
        }
        if (index == 2) {
          openUrl2();
        }
        if (index == 3) {
          openUrl3();
        }

        setState(() {
          _selectedIndex = index;
        });

        print(_selectedIndex);
      },
      child: Container(
        height: 60.0,
        width: 60.0,
        decoration: BoxDecoration(
          color: _selectedIndex == index
              ? Theme.of(context).accentColor
              : Color(0xFFE7BEE),
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Icon(
          _icons[index],
          size: 25.0,
          color: _selectedIndex == index
              ? Theme.of(context).primaryColor
              : Color(0xFFB4C1C4),
        ),
      ),
    );
  }

  openUrl() {
    String url1 = "https://www.cleartrip.com/";
    launch(url1);
  }

  openUrl1() {
    String url1 = "https://www.irctc.co.in/nget/train-search";
    launch(url1);
  }

  openUrl2() {
    String url1 = "https://www.redbus.com/";
    launch(url1);
  }

  openUrl3() {
    String url1 = "https://www.smartertravel.com/";
    launch(url1);
  }

  openUrl4() {
    String url1 = "https://www.weatheronline.in/";
    launch(url1);
  }

  openUrl5() {
    String url1 = "https://www.google.com/maps/search/india/";
    launch(url1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 30.0),
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 20.0, right: 120.0),
              child: Text(
                'WHERE WOULD U LIKE TO TRAVEL✈️?',
                style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: _icons
                  .asMap()
                  .entries
                  .map(
                    (MapEntry map) => _buildIcon(map.key),
                  )
                  .toList(),
            ),
            SizedBox(height: 20.0),
            DestinationCarousel(),
            SizedBox(height: 20.0),
            HotelCarousal(),
          ],
        ),
      ),
      /*: AppBar(
    
        title:! isSearching
        ? Text('All states')
        : TextField(
          style: TextStyle(color:Colors.white),
          decoration: InputDecoration(
          icon:Icon(Icons.search,color: Colors.white,),hintText:"Search State Here",
          hintStyle: TextStyle(color:Colors.white)
          ),),

      
        actions:<Widget>[
          isSearching ?
           IconButton(
            icon:Icon(
              Icons.cancel,
              size:30.0,
            ),
            onPressed: () {
            setState(() {
              this.isSearching = false; 
            });
            },
          
          ):
            IconButton(
            icon:Icon(
              Icons.search,
              size:30.0,
            ),
            onPressed: () {
            setState(() {
              this.isSearching = true; 
            });
            },
          
          )],),*/
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentTab,
        onTap: (int value) {
          if (value == 0) {
            openUrl4();
          }
          if (value == 1) {
            openUrl5();
          }
          setState(() {
            _currentTab = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.cloud,
              size: 30.0,
            ),
            title: SizedBox.shrink(),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.location_on,
              size: 30.0,
            ),
            title: SizedBox.shrink(),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint('clicked');

          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return jsonpage();
          }));
        },
        tooltip: 'add note',
        child: Icon(Icons.book),
        backgroundColor: Color(0xFFE7BEE),
        //0xFFAAECF7
        // child:Text("💡")
      ),
    );
  }
}
