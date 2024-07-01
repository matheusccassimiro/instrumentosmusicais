import 'instrument.dart';

class Family {

  //lista de instrumentos de metais
  List<Instrument> metais = [
    Instrument(name: "TROMPETE",
      soundPath: "lib/resources/sound/trompete.mp3",
      imagePath: "lib/resources/images/trompete.jpg",
      description: "Brilhante e poderoso, o trompete é a voz da festa, capaz de levantar multidões e anunciar grandes momentos.",
    ),

    Instrument(name: "TROMBONE",
      soundPath: "lib/resources/sound/trombone.mp3",
      imagePath: "lib/resources/images/trombone.jpg",
      description: "Versátil e expressivo, o trombone pode ser suave como uma brisa ou explosivo como um trovão, sempre com um toque de humor e irreverência.",
    ),

    Instrument(name: "TROMPA",
      soundPath: "lib/resources/sound/trompa.mp3",
      imagePath: "lib/resources/images/trompa.jpg",
      description: "Com um som nobre e envolvente, a trompa evoca paisagens majestosas e sentimentos profundos, como a nostalgia e a esperança.",
    ),

    Instrument(name: "TUBA",
      soundPath: "lib/resources/sound/tuba.mp3",
      imagePath: "lib/resources/images/tuba.jpg",
      description: "Grave e imponente, a tuba é a base da orquestra, a voz da sabedoria e da experiência, que nos guia e nos protege.",
    ),
  ];

  List<Instrument> madeiras = [
    Instrument(name: "FLAUTA",
      soundPath: "lib/resources/sound/flauta.mp3",
      imagePath: "lib/resources/images/flauta.jpg",
      description: "Leve e ágil, a flauta encanta com seu timbre doce e melodioso, evocando a natureza e a beleza da vida.",
    ),

    Instrument(name: "CLARINETE",
      soundPath: "lib/resources/sound/clarinete.mp3",
      imagePath: "lib/resources/images/clarinete.jpg",
      description: "Versátil e expressivo, o clarinete pode ser suave e melancólico ou alegre e vibrante, sempre com um toque de mistério e sedução.",
    ),

    Instrument(name: "OBOÉ",
      soundPath: "lib/resources/sound/oboe.mp3",
      imagePath: "lib/resources/images/oboe.jpg",
      description: "Com um timbre penetrante e expressivo, o oboé é a voz da alma, capaz de transmitir as mais diversas emoções, da alegria à tristeza, do amor à dor.",
    ),

    Instrument(name: "FAGOTE",
      soundPath: "lib/resources/sound/fagote.mp3",
      imagePath: "lib/resources/images/fagote.jpg",
      description: "Grave e caloroso, o fagote é a voz da sabedoria e da experiência, que nos guia e nos aconselha, nos fazendo sentir seguros e protegidos.",
    ),
  ];

  List<Instrument> cordas = [
    Instrument(name: "VIOLINO",
      soundPath: "lib/resources/sound/violino.mp3",
      imagePath: "lib/resources/images/violino.jpg",
      description: "Ágil e apaixonado, o violino é a voz da alma, capaz de expressar as mais diversas emoções, da alegria à tristeza, do amor à raiva.",
    ),

    Instrument(name: "VIOLA",
      soundPath: "lib/resources/sound/viola.mp3",
      imagePath: "lib/resources/images/viola.jpg",
      description: "Com um timbre aveludado e melancólico, a viola nos convida à reflexão e à introspecção, nos transportando para um mundo de sonhos e memórias.",
    ),

    Instrument(name: "VIOLONCELO",
      soundPath: "lib/resources/sound/violoncelo.mp3",
      imagePath: "lib/resources/images/violoncelo.jpg",
      description: "Profundo e caloroso, o violoncelo é a voz do coração, que nos abraça e nos consola, nos fazendo sentir amados e compreendidos.",
    ),

    Instrument(name: "CONTRABAIXO",
      soundPath: "lib/resources/sound/contrabaixo.mp3",
      imagePath: "lib/resources/images/contrabaixo.jpg",
      description: "Firme e pulsante, o baixo é a voz da terra, que nos conecta com a natureza e nos dá a energia para seguir em frente.",
    ),
  ];

  List<Instrument> teclados = [
    Instrument(name: "PIANO",
      soundPath: "lib/resources/sound/piano.mp3",
      imagePath: "lib/resources/images/piano.jpg",
      description: "Versátil e expressivo, o piano é uma orquestra em si mesmo, capaz de criar melodias delicadas, acordes poderosos e ritmos envolventes.",
    ),

    Instrument(name: "CRAVO",
      soundPath: "lib/resources/sound/cravo.mp3",
      imagePath: "lib/resources/images/cravo.jpg",
      description: "Com um timbre cristalino e elegante, o cravo nos transporta para a época barroca, com suas danças refinadas e melodias ornamentadas.",
    ),

    Instrument(name: "ÓRGÃO",
      soundPath: "lib/resources/sound/orgao.mp3",
      imagePath: "lib/resources/images/orgao.jpg",
      description: "Majestoso e imponente, o órgão enche catedrais e igrejas com sua sonoridade rica e poderosa, capaz de inspirar reverência e espiritualidade.",
    ),

  ];

  List<Instrument> vozes = [
    Instrument(name: "SOPRANO",
      soundPath: "lib/resources/sound/soprano.mp3",
      imagePath: "lib/resources/images/fsinger.png",
      description: "A voz feminina mais aguda, límpida e radiante. É a voz que te encanta, te transporta para outro mundo e te faz acreditar na magia.",
    ),

    Instrument(name: "ALTO",
      soundPath: "lib/resources/sound/alto.mp3",
      imagePath: "lib/resources/images/fsinger.png",
      description: "A voz feminina mais grave, rica e calorosa. É a voz que te acolhe, te conforta e te faz sentir em casa.",
    ),

    Instrument(name: "TENOR",
      soundPath: "lib/resources/sound/tenor.mp3",
      imagePath: "lib/resources/images/msinger.png",
      description: "A voz masculina mais aguda, brilhante e emocionante. É a voz que te leva às alturas, te faz sonhar e te inspira a alcançar o impossível.",
    ),

    Instrument(name: "BARITONO",
      soundPath: "lib/resources/sound/baritone.mp3",
      imagePath: "lib/resources/images/msinger.png",
      description: "A voz masculina intermediária, versátil e expressiva. É a voz que te conta uma história, seja ela de amor, aventura ou mistério.",
    ),

    Instrument(name: "BAIXO",
      soundPath: "lib/resources/sound/bass.mp3",
      imagePath: "lib/resources/images/msinger.png",
      description: "A voz mais grave e poderosa, capaz de gerar uma base sólida para qualquer música. É a voz que te faz sentir a vibração no peito.",
    ),
  ];

  List<Instrument> percussao = [
    Instrument(name: "BUMBO",
      soundPath: "lib/resources/sound/bumbo.mp3",
      imagePath: "lib/resources/images/bumbo.jpg",
      description: "O bumbo marca o pulso fundamental da música, com seu som baixo e ressonante.",
    ),

    Instrument(name: "CAIXA",
      soundPath: "lib/resources/sound/caixa.mp3",
      imagePath: "lib/resources/images/caixa.jpg",
      description: "A caixa é conhecida por seu som cortante e capacidade de definir ritmos complexos em música militar e orquestral.",
    ),

    Instrument(name: "CONGA",
      soundPath: "lib/resources/sound/conga.mp3",
      imagePath: "lib/resources/images/conga.jpg",
      description: "Congas, atabaques e tambores são essenciais na musica afro-atlântica, dos terreiros aos palcos.",
    ),
    Instrument(name: "COWBELL",
      soundPath: "lib/resources/sound/cowbell.mp3",
      imagePath: "lib/resources/images/cowbell.jpg",
      description: "O cowbell adiciona acentos rítmicos distintos em música latina, funk e rock.",
    ),

    Instrument(name: "GLOCKENSPIEL",
      soundPath: "lib/resources/sound/glockenspiel.mp3",
      imagePath: "lib/resources/images/glockenspiel.jpg",
      description: "O glockenspiel encanta com suas notas cristalinas em orquestras e bandas marciais.",
    ),

    Instrument(name: "GONGO",
      soundPath: "lib/resources/sound/gongo.mp3",
      imagePath: "lib/resources/images/gongo.jpg",
      description: "O gongo adiciona profundidade dramática com seus golpes ressonantes em performances musicais e rituais.",
    ),
    Instrument(name: "PRATO",
      soundPath: "lib/resources/sound/pratos.mp3",
      imagePath: "lib/resources/images/pratos.jpg",
      description: "Os pratos são usados para criar acentuações dramáticas e sustentar ritmos em conjuntos musicais.",
    ),

    Instrument(name: "PANDEIRO",
      soundPath: "lib/resources/sound/pandeiro.mp3",
      imagePath: "lib/resources/images/pandeiro.jpg",
      description: "O pandeiro é um instrumento de percussão versátil na música brasileira, com platinelas que ressoam ao serem sacudidas ou batidas, essencial no samba.",
    ),

    Instrument(name: "TIMPANO",
      soundPath: "lib/resources/sound/timpano.mp3",
      imagePath: "lib/resources/images/timpano.jpg",
      description: "Os tímpanos adicionam dimensão rítmica com seus tons variáveis ​​em contextos sinfônicos.",
    ),
    Instrument(name: "TRIANGULO",
      soundPath: "lib/resources/sound/triangulo.mp3",
      imagePath: "lib/resources/images/triangulo.jpg",
      description: "O triângulo oferece toques delicados de percussão que enriquecem peças orquestrais.",
    ),

    Instrument(name: "XILOFONE",
      soundPath: "lib/resources/sound/xilofone.mp3",
      imagePath: "lib/resources/images/xilofone.jpg",
      description: " O xilofone é conhecido por suas barras de madeira afinadas que, quando percutidas, produzem sons claros e percussivos, usados em orquestras e música educativa.",
    ),


  ];

  List<Instrument> getFamilia(String familia) {
    switch (familia) {
      case 'madeiras':
        return madeiras;
      case 'metais':
        return metais;
      case 'cordas':
        return cordas;
      case 'percussao':
        return percussao;
      case 'vozes':
        return vozes;
      case 'teclados':
        return teclados;
      default:
        return metais;
    }
  }

  int getTamanhoDaFamilia(String familia) {
    switch (familia) {
      case 'madeiras':
        return madeiras.length;
      case 'metais':
        return metais.length;
      case 'cordas':
        return cordas.length;
      case 'percussao':
        return percussao.length;
      case 'vozes':
        return vozes.length;
      case 'teclados':
        return teclados.length;
      default:
        return metais.length;
    }
  }
}