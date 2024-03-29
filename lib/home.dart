import 'package:flutter/material.dart';
import 'card1.dart';
import 'card2.dart';
import 'card3.dart';


class Home extends StatefulWidget{
  const Home({super.key});

  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
   //7
    int _selectedIndex = 0;
//8
    static List<Widget> pages = <Widget>[
        const Card1(),
        const Card2(),
        const Card3()
        ];
    //9

    void _onItemTapped(int index){
      setState(() {
        _selectedIndex = index;
      });
    }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text(
            'Fooderlich',
            // 2
            style: Theme.of(context).textTheme.headline6,
        ),
    ),
        body: pages[_selectedIndex],
            bottomNavigationBar: BottomNavigationBar(
              selectedItemColor: 
              Theme.of(context).textSelectionTheme.selectionColor,
              
              currentIndex: _selectedIndex,
              onTap: _onItemTapped,

              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.card_giftcard),
                label: 'Card'),
                BottomNavigationBarItem(icon: Icon(Icons.card_giftcard,),
                label: 'Card2'),
                BottomNavigationBarItem(icon: Icon(Icons.card_giftcard),
                label: 'Card3')
              ],
            ),
      );
    }
}