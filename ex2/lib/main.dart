import 'package:flutter/material.dart';

void main() {
  runApp(NavBotton());
}

class NavBotton extends StatelessWidget {
  const NavBotton({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Navigator_screen(),
    );
  }
}

class Navigator_screen extends StatefulWidget {
  const Navigator_screen({super.key});

  @override
  State<Navigator_screen> createState() => _Navigator_screenState();

}

class _Navigator_screenState extends State<Navigator_screen> {
  int selectIndex =0; 
  static const TextStyle optionStyle =  TextStyle(fontSize: 30, fontWeight: FontWeight.bold); 
  static const List<Widget> _widgetOptions = <Widget>[   
    Brazil(),
    Germany(),
    Japan(),
    Russia()
    
    
  ];
  void onItemTapped(int index) {
    setState(() {
      selectIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:  Center(
        child: _widgetOptions.elementAt(selectIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.build_sharp),
            label: 'Brasil',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.nature),
            label: 'Alemanha',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.healing),
            label: 'Japão',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.attach_money),
            label: 'Russia',
            backgroundColor: Colors.blueAccent,
          ),
        ],
        currentIndex: selectIndex,
        selectedItemColor: Colors.white,
        onTap: onItemTapped,
      ),
    );
  }
}

class Brazil extends StatelessWidget {
  const Brazil({super.key});
 static const TextStyle styletext =  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Center(child: Text("Feijoada",style: styletext)),
          Center(child: Image.network("https://static.vecteezy.com/system/resources/previews/021/217/554/non_2x/purple-bean-feijoada-png.png"),)
        ],
      ),
    );
  }
}

class Germany extends StatelessWidget {
  const Germany({super.key});
 static const TextStyle styletext =  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Center(child: Text("Brezel",style: styletext)),
          Center(child: Image.network("https://images.vexels.com/media/users/3/153909/isolated/preview/0f1ad6cac5ee05d1cb88d1e5cd470164-ilustracao-de-pretzel-macio.png"),)
        ],
      ),
    );
  }
}

class Japan extends StatelessWidget {
  const Japan({super.key});
 static const TextStyle styletext =  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Center(child: Text("Sashimi",style: styletext)),
          Center(child: Image.network("https://static.vecteezy.com/system/resources/previews/026/773/814/non_2x/sashimi-with-ai-generated-free-png.png"),)
        ],
      ),
    );
  }
}
class Russia extends StatelessWidget {
  const Russia({super.key});
 static const TextStyle styletext =  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Center(child: Text("Borscht",style: styletext)),
          Center(child: Image.network("https://static.vecteezy.com/system/resources/previews/029/091/562/original/ukrainian-national-food-borscht-3d-render-icon-png.png")),
        ],
      ),
    );
  }
}