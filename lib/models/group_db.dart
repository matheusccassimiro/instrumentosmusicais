import 'group.dart';

class Grupo {

  //lista de instrumentos de metais
  List<Group> grupos = [
    Group(name: "METAIS",
      imagePath: "lib/resources/images/metais.jpeg",
    ),

    Group(name: "MADEIRAS",
      imagePath: "lib/resources/images/madeiras.jpeg",
    ),

    Group(name: "CORDAS",
      imagePath: "lib/resources/images/cordas.jpeg",
    ),

    Group(name: "TECLADOS",
      imagePath: "lib/resources/images/teclas.jpeg",
    ),

    Group(name: "PERCUSSAO",
      imagePath: "lib/resources/images/percussao.jpeg",
    ),
    Group(name: "VOZ",
      imagePath: "lib/resources/images/voz.jpeg",
    ),
  ];

  List<Group> getGroup(){
    return grupos;
  }
  }