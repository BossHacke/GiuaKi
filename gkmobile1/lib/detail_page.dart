import 'package:flutter/material.dart';
import 'package:gkmobile1/cart_page.dart';

class DetailPage extends StatefulWidget {
  final Map item;
  const DetailPage({super.key, required this.item});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int count = 1, price = 0;
  var image = "";

  @override
  Widget build(BuildContext context) {
    price = widget.item["price"];
    image = widget.item['image'];
    //count = widget.item['order count'];

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          toolbarHeight: 30,
        ),
        bottomNavigationBar: null,
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.arrow_back_ios_new_rounded,
                    size: 30,
                  ),
                ),
                const Text(
                  "Details",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                InkWell(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const CartPage())),
                  child: const Image(
                    image: AssetImage("assets/images/cart.png"),
                    height: 45,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 80.0, bottom: 40),
              child: CircleAvatar(
                radius: 150,
                backgroundColor: const Color(0xFFFFCC98),
                child: Image(image: AssetImage(image)),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.item["name"].replaceAll(" ", "\n"),
                  style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
                Text("Rs.${count * price}",
                    style:
                        const TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
             const Text(
              "Any Personal Requirements",
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFFFCC98), width: 5),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFFFCC98), width: 5),
                  ),
                  hintText: "Enter here",
                ),
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    if (count > 1) {
                      count -= 1;
                      setState(() {});
                    }
                  },
                  child: const CircleAvatar(
                      backgroundColor: Colors.black,
                      child: Icon(
                        Icons.remove,
                        color: Colors.white,
                      )),
                ),
                const SizedBox(
                  width: 14,
                ),
                Text(
                  count.toString(),
                  style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  width: 15,
                ),
                InkWell(
                  onTap: () {
                    if (count > 0) {
                      count += 1;
                      setState(() {});
                    }
                  },
                  child: const CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.black,
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
                InkWell(
                    onTap: () {
                      cartItem.add(widget.item);
                      totalPrice = totalPrice + (count * price);
                      widget.item['order count'] = count;
                    },
                    child: Container(
                      decoration: const BoxDecoration(
                          color: Color(0xFFFFCC98),
                          borderRadius: BorderRadius.all(Radius.circular(200))),
                      height: 80,
                      width: 180,
                      child: const Center(
                        child: Text(
                          "Add to Order",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ),
                    ))
              ],
            )
          ]),
        ));
  }
}
