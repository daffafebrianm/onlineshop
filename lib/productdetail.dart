import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:onlineshopdaffa/items.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:onlineshopdaffa/items.dart';


class ProductDetail extends StatefulWidget {
  const ProductDetail({super.key, @required this.productIndex});
  final productIndex;

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  Color baseColor = Colors.yellow.shade700;
  int sizeProduct = 5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 24,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.share,
              size: 24,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_bag_outlined,
              size: 24,
              color: Colors.white,
            ),
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu,
                size: 24,
                color: Colors.white,
              )),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                itemProduct[widget.productIndex][0],
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 10),
            Center(
              child: Stack(
                children: [
                  Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      color: baseColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Image.asset(
                      itemProduct[widget.productIndex][1],
                      scale: 5,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Text(
              itemProduct[widget.productIndex][2],
              style: const TextStyle(
                  color: Colors.red, fontSize: 25, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Description",
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.black54,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  itemProduct[widget.productIndex][3],
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.black54,
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Text(
                    "Other Colors",
                    style: TextStyle(
                        color: Colors.grey.shade400,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const Spacer(),
                Container(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            baseColor = Colors.red;
                          });
                        },
                        child: CircleAvatar(
                          radius: 10,
                          backgroundColor: Colors.red,
                        ),
                      ),
                      const SizedBox(width: 5),
                      InkWell(
                        onTap: () {
                          setState(() {
                            baseColor = Colors.yellow;
                          });
                        },
                        child: CircleAvatar(
                          radius: 10,
                          backgroundColor: Colors.yellow,
                        ),
                      ),
                      const SizedBox(width: 5),
                      InkWell(
                        onTap: () {
                          setState(() {
                            baseColor = Colors.green;
                          });
                        },
                        child: CircleAvatar(
                          radius: 10,
                          backgroundColor: Colors.green,
                        ),
                      ),
                      const SizedBox(width: 5),
                      InkWell(
                        onTap: () {
                          setState(() {
                            baseColor = Colors.pink;
                          });
                        },
                        child: CircleAvatar(
                          radius: 10,
                          backgroundColor: Colors.pink,
                        ),
                      ),
                      const SizedBox(width: 5),
                      InkWell(
                        onTap: () {
                          setState(() {
                            baseColor = Colors.grey.shade500;
                          });
                        },
                        child: CircleAvatar(
                          radius: 10,
                          backgroundColor: Colors.grey.shade500,
                        ),
                      ),
                      const SizedBox(width: 5),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text(
                    "Size Options",
                    style: TextStyle(
                        color: Colors.grey.shade400,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: DropdownButton(
                      value: sizeProduct,
                      items: [
                        DropdownMenuItem(
                          value: 5,
                          child: Text(
                            "S",
                            style: TextStyle(
                                color: Colors.red.shade400,
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        DropdownMenuItem(
                          value: 10,
                          child: Text(
                            "M",
                            style: TextStyle(
                                color: Colors.red.shade400,
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        DropdownMenuItem(
                          value: 15,
                          child: Text(
                            "L",
                            style: TextStyle(
                                color: Colors.red.shade400,
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        DropdownMenuItem(
                          value: 20,
                          child: Text(
                            "XL",
                            style: TextStyle(
                                color: Colors.red.shade400,
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        DropdownMenuItem(
                          value: 25,
                          child: Text(
                            "XXL",
                            style: TextStyle(
                                color: Colors.red.shade400,
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                      onChanged: (value) {
                        setState(() {
                          sizeProduct = value!;
                        });
                      }),
                ),
              ],
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 300,
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(
                  "ADD TO CART",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}