import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../components/group_tile.dart';
import '../models/group.dart';
import '../models/group_db.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  void irParaInstrumento (String familia){
    Navigator.pushNamed(context, '/$familia');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFAA8479),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Builder(
              builder: (context) {
                return IconButton(
                  icon: const Padding(
                    padding: EdgeInsets.only(left: 12.0),
                    child: Icon(Icons.menu, color: Color(0xFF67332D),
                    ),
                  ),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                );
              }
          ),
        ),
        drawer: Drawer(
          backgroundColor: const Color(0xFF67332D),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  //logo
                  DrawerHeader(
                    child: Image.asset(
                      'lib/resources/images/icon.jpeg',
                    ),
                  ),

                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Divider(
                        color: Colors.grey[800],
                      )
                  ),

                  Padding(
                    padding: EdgeInsets.only(left: 25),
                    child: GestureDetector(
                      onTap: () => Navigator.pushNamed(context, '/homepage'),
                      child: ListTile(
                          leading: Icon(Icons.group, color:Colors.white),
                          title: Text(
                            'Famílias',
                            style: TextStyle(color: Colors.white),
                          )
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 45),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        GestureDetector(
                          onTap: () => Navigator.pushNamed(context, '/METAIS'),
                          child: ListTile(
                            minTileHeight: 20,
                              leading: Text('🎺'),
                              title: Text(
                                'Metais',
                                style: TextStyle(color: Colors.white),
                              )
                          ),
                        ),
                        GestureDetector(
                          onTap: () => Navigator.pushNamed(context, '/MADEIRAS'),
                          child: ListTile(
                              leading: Text('🎷'),
                              title: Text(
                                'Madeiras',
                                style: TextStyle(color: Colors.white),
                              )
                          ),
                        ),
                        GestureDetector(
                          onTap: () => Navigator.pushNamed(context, '/CORDAS'),
                          child: ListTile(
                              leading: Text('🎻'),
                              title: Text(
                                'Cordas',
                                style: TextStyle(color: Colors.white),
                              )
                          ),
                        ),
                        GestureDetector(
                          onTap: () => Navigator.pushNamed(context, '/TECLADOS'),
                          child: ListTile(
                              leading: Text('🎹'),
                              title: Text(
                                'Teclados',
                                style: TextStyle(color: Colors.white),
                              )
                          ),
                        ),
                        GestureDetector(
                          onTap: () => Navigator.pushNamed(context, '/PERCUSSAO'),
                          child: ListTile(
                              leading: Text('🥁'),
                              title: Text(
                                'Percussão',
                                style: TextStyle(color: Colors.white),
                              )
                          ),
                        ),
                        GestureDetector(
                          onTap: () => Navigator.pushNamed(context, '/VOZ'),
                          child: ListTile(
                              leading: Text('🎤'),
                              title: Text(
                                'Vozes',
                                style: TextStyle(color: Colors.white),
                              )
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),


            ],
          ),
        ),
        body: Column(
          children: [
            //message
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 6),
              child: Text('Famílias de instrumentos:',
                  style: TextStyle(color: Color(0xFF1A0B1E),
                      fontSize: 25)),
            ),

            const Padding(
              padding: EdgeInsets.all(12),
              child: Divider(
                color: Colors.white,
              ),
            ),



            const SizedBox(height: 10),


            Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisSpacing: 10,
                        crossAxisCount: 2),
                    itemCount: 6,

                    itemBuilder: (context, index) {
                      List<Group> grupos = Grupo().getGroup();
                      Group group = grupos[index];
                      return GroupTile(
                        group: group,
                        function: () => irParaInstrumento(group.name)
                          //

                      );
                    },
                  ),
                )
            ),


            const Padding(
              padding: EdgeInsets.all(12),
              child: Divider(
                color: Colors.white,
              ),
            )
          ],
        )
    );
  }


}
