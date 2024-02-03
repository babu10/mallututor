import 'package:flutter/material.dart';

class BtmNavBar1 extends StatefulWidget {
  const BtmNavBar1({super.key});

  @override
  State<BtmNavBar1> createState() => _BtmNavBar1State();
}

class _BtmNavBar1State extends State<BtmNavBar1> {
  
  var listItem=[
    "Call Records",
    "Recent Chats"
    
  ];
int indexOfList=0;

  changeBody(int index){
    setState(() {
      indexOfList=index;

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(listItem.elementAt(indexOfList),style: TextStyle(
          color: Colors.white
        ),),
      ),
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: indexOfList,
        onTap: changeBody,
        //onTap: (value) => changeBody(value),
        // onTap: (value) {
        //   changeBody(value);
        // },
        iconSize: 30,
       showSelectedLabels: false,
        showUnselectedLabels: false,
        items:  [
          BottomNavigationBarItem(icon: Icon(Icons.call), label: 'Calls'),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chats'),
        ],
      ),
    );
  }


}
