import 'package:flutter/material.dart';
import 'package:gkmobile1/detail_page.dart';

class ItemList extends StatelessWidget {
  final List item;
  const ItemList({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    if (item.isNotEmpty) {
      return ListView.builder(
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 20, right: 20, top: 50, bottom: 20),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailPage(
                                    item: item[index],
                                  )));
                    },
                    child: Stack(
                      children: [
                        Container(
                          width: 240,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFFFFCC98),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Image(
                              image: AssetImage(item[index]["image"]),
                              height: 200,
                              width: 230,
                              fit: BoxFit.scaleDown),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Text(
                item[index]["name"],
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                "Rs.${item[index]["price"].toString()}",
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )
            ],
          );
        },
      );
    } else {
      return Container(
        color: const Color(0xFFFFCC98),
      );
    }
  }
}
