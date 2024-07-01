import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instrumentosmusicais/components/instrument_tile.dart';
import '../models/instruments_db.dart';
import '../models/instrument.dart';

class InstrumentsPage extends StatefulWidget {
  final String familiaAtual;
  const InstrumentsPage({super.key, required this.familiaAtual});


  @override
  State<InstrumentsPage> createState() => _InstrumentsPageState();
}

class _InstrumentsPageState extends State<InstrumentsPage> {


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
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 18),
              child: Text('Descubra os instrumentos musicais',
                  style: TextStyle(color: Colors.white, fontSize: 20)),
            ),

            const Padding(
              padding: EdgeInsets.all(12),
              child: Divider(
                color: Colors.white,
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    widget.familiaAtual.toUpperCase(),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.pushNamed(context, '/homepage'),
                    child: Text(
                      'Famílias',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 10),

//list of shoes for sale
            Expanded(
                child: ListView.builder(

                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    List<Instrument> familia = Family().getFamilia(widget.familiaAtual);
                    Instrument instrument = familia[index];
                    return InstrumentTile(
                      instrument: instrument,
                    );
                  },
                  itemCount: Family().getTamanhoDaFamilia(widget.familiaAtual),
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








