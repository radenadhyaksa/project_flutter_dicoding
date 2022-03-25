import 'package:flutter/material.dart';
import 'package:project_flutter_dicoding/detail_screen.dart';
import 'package:project_flutter_dicoding/model/presiden_indonesia.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Presiden Indonesia'),
      ),

      //navigation bar
      // body: _pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        // currentIndex: currentIndex,
        items: const [
          BottomNavigationBarItem(
            label: 'Profile',
            icon: Icon(Icons.person_rounded),
          ),
          BottomNavigationBarItem(
            label: 'Berita',
            icon: Icon(Icons.newspaper),
          ),
        ],
        // onTap: (index) => setState(() => currentIndex = index),
      ),

      body: ListView.builder(
        itemBuilder: (context, index) {
          final PresidenIndonesia place = presidenList[index];
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailScreen(place: place);
              }));
            },
            child: Card(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Image.asset(place.imageAsset),
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            place.name,
                            style: TextStyle(fontSize: 16.0),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(place.period1),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
        itemCount: presidenList.length,
      ),
    );
  }
}
