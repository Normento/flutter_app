import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/tresor.dart';

class Detail extends StatefulWidget {
  final Tresors tresors;

  const Detail({super.key, required this.tresors});

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  int inc = 1;
  int note = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Details sur l'oeuvre"),
        backgroundColor: Colors.amber[50],
        elevation: 0,
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: const Icon(Icons.arrow_back_ios_new_rounded),
        ),
        actions: const [
          Icon(
            Icons.shopping_bag,
            size: 30.0,
            color: Colors.amber,
          ),
          SizedBox(width: 10.0)
        ],
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                  child: Container(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 50.0),
                color: Colors.amber[50],
                width: 260.0,
                height: 230.0,
                child: Image.network(
                  widget.tresors.image,
                  width: 50.0,
                  height: 30.0,
                  fit: BoxFit.cover,
                ),
              )),
            ],
          ),
          const SizedBox(
            height: 25.0,
          ),
          Row(
            children: [
              const SizedBox(
                width: 15.0,
              ),
              Text(
                widget.tresors.title,
                style: const TextStyle(
                    fontSize: 30.0, fontWeight: FontWeight.bold),
              )
            ],
          ),
          const SizedBox(
            height: 10.0,
          ),
          InkWell(
            onTap: () {
              showDialog(
                  context: context,
                  builder: (context) => StatefulBuilder(
                        builder: (context, setState) => AlertDialog(
                          title: Text("Donnez votre note".toUpperCase(),
                              textAlign: TextAlign.center),
                          actions: [
                            Align(
                                alignment: Alignment.center,
                                child: ElevatedButton(
                                    onPressed: () {},
                                    child: const Text("Notez")))
                          ],
                          content: Wrap(
                            alignment: WrapAlignment.center,
                            children: [1, 2, 3, 4, 5]
                                .map(
                                  (e) => InkWell(
                                    onTap: () {
                                      setState(() {
                                        note = e;
                                      });
                                    },
                                    child: Icon(
                                      note < e
                                          ? Icons.star_outline_rounded
                                          : Icons.star_rounded,
                                      color: Colors.amber,
                                      size: 35.0,
                                    ),
                                  ),
                                )
                                .toList(),
                          ),
                        ),
                      ));
            },
            child: Row(
              children: [
                const SizedBox(
                  width: 15.0,
                ),
                Wrap(
                  children: [1, 2, 3, 4, 5]
                      .map(
                        (e) => const Icon(
                          Icons.star_outline_rounded,
                          color: Colors.amber,
                          size: 25.0,
                        ),
                      )
                      .toList(),
                ),
                const SizedBox(
                  width: 110.0,
                ),
              ],
            ),
          ),
          const SizedBox(height: 20.0),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              widget.tresors.description,
              style: const TextStyle(fontSize: 17.0),
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Row(
            children: [
              const SizedBox(
                width: 15.0,
              ),
              const SizedBox(
                width: 160.0,
              ),
              Row(
                children: [
                  Container(
                      padding: const EdgeInsets.fromLTRB(0, 0, 3.0, 0),
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(5.0)),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            if (inc > 1) {
                              inc--;
                            }
                          });
                        },
                      )),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 50.0,
          ),
        ],
      ),
    );
  }
}
