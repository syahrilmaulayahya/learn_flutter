import 'package:flutter/material.dart';
import 'package:flutter_submission/model/place.dart';
import 'package:flutter_submission/model/place_manager.dart';

class Detail extends StatelessWidget {
  const Detail({Key? key, required this.place, required this.manager})
      : super(key: key);
  final Place place;
  final FavoritePlace manager;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Detail"),
          actions: [
            IconButton(
              icon: Icon(place.isFavorite
                  ? Icons.favorite
                  : Icons.favorite_outline_outlined),
              onPressed: () {
                manager.change(place.index);
              },
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Center(
                child: Container(
                  height: 400,
                  constraints: const BoxConstraints(maxWidth: 500),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage(place.imgUrl),
                        fit: BoxFit.fill,
                      )),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    place.name,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        size: 13,
                        color: Colors.grey[700],
                      ),
                      Text(
                        "${place.province}, ${place.nation}",
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.star_border_outlined,
                          color: Colors.grey[800],
                        ),
                        Text(
                          "${place.rating} Ratings",
                          style: TextStyle(color: Colors.grey[800]),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Deskripsi",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    place.description,
                    style: TextStyle(color: Colors.grey[700]),
                  )
                ],
              )
            ]),
          ),
        ));
  }
}
