import 'package:flutter/material.dart';

class BottomView extends StatefulWidget {
  const BottomView({super.key});
  @override
  State<BottomView> createState() => _BottomViewState();
}
class _BottomViewState extends State<BottomView> {
  int selectedIndex = 0;
  static final  List<Widget> _widgetOptions=<Widget>[
    const Text('11111'),
    const Text('22222'),
    const Text('33333'),
    const Text('44444'),
    const Text('55555'),
  ];

  void onScreenTap(int index){
    setState(() {
      selectedIndex=index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: const Text('genius snap'),),


            body: Center(
                child: _widgetOptions[selectedIndex],
            ),


            bottomNavigationBar: BottomNavigationBar(
              onTap: onScreenTap,
              backgroundColor: Colors.white,
              elevation: 15,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              selectedItemColor: Colors.grey.shade500,
              unselectedItemColor: Colors.black,
              type: BottomNavigationBarType.fixed,
              items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.black26,),label: 'search'),
              BottomNavigationBarItem(icon: Icon(Icons.card_giftcard_rounded,color: Colors.black26,),label: 'search'),
              BottomNavigationBarItem(icon: Icon(Icons.camera_alt,color: Colors.black26,),label: 'search'),
              BottomNavigationBarItem(icon: Icon(Icons.pie_chart_rounded,color: Colors.black26,),label: 'search'),
              BottomNavigationBarItem(icon: Icon(Icons.person,color: Colors.black26,),label: 'search'),
      ],),
      );
  }
}
