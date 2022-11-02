import 'package:flutter/material.dart';
import 'package:flutter_application_1/detail.dart';
import 'package:flutter_application_1/models/tresor.dart';



class Acceuil extends StatefulWidget {
  const Acceuil({super.key});

  @override
  State<Acceuil> createState() => _AcceuilState();
}

class _AcceuilState extends State<Acceuil> {
  int inc = 0;
  String categSlected = "All";
  bool favorite = false;
  bool favorite1 = false;

  List<String> categories = ["All", "Trones", "Siege", "Porte"];
  List<Tresors> tresors = [
    Tresors(
      image: "assets/images/trone.png",
      title: "Trône d’apparat du roi Ghézo",
      description:
          "Le roi s’installait sur ce trône pour des occasions exceptionnelles comme la cérémonie d’Ato en hommage aux ancêtres royaux. Le trône était installé sur une estrade qui lui permettait de surplomber la foule et de distribuer des présents à l'ensemble de ses sujets : cauris, tissus, animaux, nourriture, armes… ",
      rate: 3.0,
    ),
    Tresors(
      image: "assets/images/trone-glele.png",
      title: "Trône du roi Glèlè",
      description:
          "Ce trône est composé de deux étages assemblés. La partie supérieure est incurvée pour accueillir un coussin. L’étage inférieur est décoré de formes géométriques. Le lion peint en jaune et sculpté de chaque côté permet d’attribuer ce trône au roi Glélé. ",
      rate: 3.0,
    ),
    Tresors(
      image: "assets/images/status-homme-lion.png",
      title: "Statue homme-lion du roi Glèlè",
      description:
          "Cette statue à la tête de lion représente le roi Glélé (1858-1889). Elle était porté en procession lors du défilé annuel des richesses entre le palais royal et le marché. Elle aurait aussi accompagné les troupes vers les lieux de combats. Le reste de l’année, elle était conservée dans Adanjèho, « la case du courage ». ",
      rate: 3.0,
    ),
        Tresors(
      image: "assets/images/status-homme-oiseaux.png",
      title: "Statue homme-oiseau du roi Ghézo",
      description:
          "Cette statue pourrait représenter le roi Ghézo, identifiable grâce aux lames de fer qui recouvrent son corps. Elles évoquent le plumage de l'oiseau cardinal, un des symboles de Ghézo. Le pieu sur lequel la statue est posée indique qu’elle était plantée et protégée sous un abri. ",
      rate: 3.0,
    ),
        Tresors(
      image: "assets/images/status-homme-requin.png",
      title: "Statue homme-requin du roi Béhanzin",
      description:
          "Cette statue à la tête d’homme et au torse de requin représente le roi Béhanzin (1889-1894). Elle était porté en procession lors du défilé annuel des richesses entre le palais royal et le marché. Elle aurait aussi accompagné les troupes vers les lieux de combats. Le reste de l’année, elle était conservée dans Adanjèho, « la case du courage ».",
      rate: 3.0,
    ),
        Tresors(
      image: "assets/images/trone-cana.png",
      title: "Trône de Cana",
      description:
          "Ce trône provient de Cana, ville sacrée du royaume, située à une vingtaine de kilomètres d’Abomey, la capitale. La partie supérieure du trône représente le roi sous son parasol, entouré de ses servantes. À l’étage inférieur, une file d’esclaves entravés évoque deux caractéristiques majeures du royaume : sa politique expansionniste et l’asservissement des populations des régions conquises. ",
      rate: 3.0,
    ),
        Tresors(
      image: "assets/images/katakle.png",
      title: "Kataklè (tabouret royal) ",
      description:
          "Le tabouret royal appelé Kataklè est sculpté dans un seul morceau de bois et constitue un attribut de pouvoir. Il sert de trône portatif. ",
      rate: 3.0,
    ),
        Tresors(
      image: "assets/images/asens-1.png",
      title: "Asens",
      description:
          "Les asens sont des objets destinés à perpétuer le souvenir des morts. Tout défunt a droit à son asen. Ce dernier est signe d’une vie réussie sur terre et de l’intégration au monde des ancêtres. La partie supérieure de l’asen reçoit des libations lors de cérémonies afin de « nourrir » l’ancêtre. ",
      rate: 3.0,
    ),
        Tresors(
      image: "assets/images/asens-behenzin.png",
      title: "Asen de Béhanzin",
      description:
          "En principe les asens sont fabriqués à la mort du roi. Cet asen dédié au roi Béhanzin, issu des collections Dodds interroge : comment pouvait-il être présent dans le palais lors de l’assaut des troupes françaises du vivant de Béhanzin ? ",
      rate: 3.0,
    ),
        Tresors(
      image: "assets/images/asens-hotagatin.png",
      title: "Asens hotagantin",
      description:
          "Les Asens hotagantin ne sont pas à proprement parler des autels mais plutôt des signes distinctifs. Utilisés durant les cérémonies annuelles, ils sont plantés sur le sommet des toits des bâtiments prestigieux afin de les identifier et de rendre hommage à leurs ancêtres. ",
      rate: 3.0,
    ),
        Tresors(
      image: "assets/images/tunique.png",
      title: "Tunique et pantalon de soldat",
      description:
          "Cette tunique et ce pantalon appartiennent à un soldat ou une agoodjié du royaume du Danhomè. Les rayures bleues et rouges de cette tenue font pencher pour une artilleuse, chargée des armes lourdes telles que les canons. ",
      rate: 3.0,
    ),
        Tresors(
      image: "assets/images/calebasse.png",
      title: "Calebasse à couvercle",
      description:
          "La calebasse, est souvent utilisée comme récipient. Elle peut être décorée de gravures. Ces motifs permettent de transmettre des messages – souvent amoureux – au destinataire de la calebasse. ",
      rate: 3.0,
    ),
        Tresors(
      image: "assets/images/sac-gibeciere.png",
      title: "Sac gibecière",
      description:
          "Ce sac en cuir serait une gibecière de fabrication haoussa. Originaires du nord du Nigéria et du sud Niger actuels, les Haoussa excellent dans de nombreux artisanats dont celui du cuir. ",
      rate: 3.0,
    ),
        Tresors(
      image: "assets/images/asens-hotagatin-agossou.png",
      title: "Asen hotagantin d’Agassou",
      description:
          "Cet asen hotagantin est dédié à Agassou, l’ancêtre commun de la dynastie royale du Danhomè, ici représenté par une panthère. ",
      rate: 3.0,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: const [
            SizedBox(width: 10.0),
            Text(
              "Tresors Royaux",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  color: Colors.red),
            ),
          ],
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
              child: Card(
                elevation: 5,
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(0),
                    border: InputBorder.none,
                    labelText: "Rechercher un tresor",
                    prefixIcon: Icon(Icons.search_rounded),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10.0),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 0),
              child: Container(
                padding: const EdgeInsets.all(10.0),
                width: 450.0,
                decoration: BoxDecoration(
                  color: Colors.amber[100],
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Row(
                  children: [
                    const Expanded(
                      child: Text(
                        '26 ouevre inedit de \n Retour dans leurs pays \n origine apres 130ans',
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 30.0,
                    ),
                    ClipRRect(
                        child: Image.asset(
                      "assets/images/katakle.png",
                      width: 90.0,
                      height: 90.0,
                      fit: BoxFit.fill,
                    )),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            Row(
              children: [
                const SizedBox(
                  width: 15.0,
                ),
                const Text(
                  'Tresors ',
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  width: 107.0,
                ),
                Container(
                  padding: const EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    color: Colors.red[50],
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                ),
              ],
            ),
            Container(
              width: double.maxFinite,
              height: 30.0,
              margin: const EdgeInsets.symmetric(vertical: 10.0),
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                children: categories
                    .map(
                      (e) => InkWell(
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 5.0),
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color:
                                categSlected == e ? Colors.amber : Colors.grey,
                          ),
                          child: Center(
                              child: Text(
                            e,
                            style: const TextStyle(color: Colors.white),
                          )),
                        ),
                        onTap: () => setState(() => categSlected = e),
                      ),
                    )
                    .toList(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: GridView(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10.0,
                  crossAxisSpacing: 10.0,
                  childAspectRatio: .7,
                ),
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: tresors
                    .map(
                      (e) => InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Detail(tresors: e),
                          ));
                        },
                        child: Container(
                          padding: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Colors.grey[200]),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Align(
                                alignment: Alignment.topRight,
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      favorite = !favorite;
                                    });
                                  },
                                  child: Icon(
                                    favorite
                                        ? Icons.favorite
                                        : Icons.favorite_border,
                                    color: favorite ? Colors.pink : null,
                                  ),
                                ),
                              ),
                              Expanded(child: Image.asset(e.image)),
                              const SizedBox(height: 10.0),
                              Text(
                                e.title,
                                style: const TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 10.0),
                              const SizedBox(
                                height: 8.0,
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Color.fromARGB(255, 7, 77, 255),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.set_meal_outlined),
            label: 'Trones',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.set_meal_sharp),
            label: 'Sieges',
            backgroundColor: Colors.purple,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.door_sliding_outlined),
            label: 'Portes',
            backgroundColor: Colors.pink,
          ),
        ],
        // currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        // onTap: _onItemTapped,
      ),
    );
  }
}
