import 'package:flutter/material.dart';
import 'package:onlineshopdaffa/allProductlist.dart';
import 'package:onlineshopdaffa/productitem.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.blue,
            title: const Text(
              "Homepage",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            actions: <Widget>[
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.share,
                  size: 30,
                  color: Colors.white,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.shopping_bag_outlined,
                  size: 30,
                  color: Colors.white,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.menu,
                  size: 30,
                  color: Colors.white,
                ),
              ),
            ]),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Colors.white,
                height: 200,
                width: 1000,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Image.asset(
                    'lib/assets/benner1.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Kategori",
                style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                color: Colors.white,
                height: 110,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8, 0, 0, 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Card(
                        color: Colors.blue.shade400,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(10, 14, 10, 0),
                          child: Column(
                            children: [
                              Image.asset(
                                'lib/assets/topi.png',
                                scale: 10,
                              ),
                              const SizedBox(
                                height: 2,
                              ),
                              const Text(
                                "Hat",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        color: Colors.blue.shade400,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(10, 14, 10, 0),
                          child: Column(
                            children: [
                              Image.asset(
                                'lib/assets/unduhan.png',
                                scale: 10,
                              ),
                              const SizedBox(
                                height: 2,
                              ),
                              const Text(
                                "Jeans",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        color: Colors.blue.shade400,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(10, 14, 10, 0),
                          child: Column(
                            children: [
                              Image.asset(
                                'lib/assets/dress.png',
                                scale: 10,
                              ),
                              const SizedBox(
                                height: 7,
                              ),
                              const Text(
                                "Dress",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        color: Colors.blue.shade400,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(10, 14, 10, 0),
                          child: Column(
                            children: [
                              Image.asset(
                                'lib/assets/sepatu.png',
                                scale: 20,
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              const Text(
                                "Shoes",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        color: Colors.blue.shade400,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(10, 14, 10, 0),
                          child: Column(
                            children: [
                              Image.asset(
                                'lib/assets/baju.png',
                                scale: 10,
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text(
                                "Shirt",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Pilihan Menu",
                style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 160,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const AllProduct())),
                        child: Card(
                          color: Colors.blue.shade300,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(25, 25, 25, 0),
                            child: Column(
                              children: [
                                Image.asset('lib/assets/listProduct.png',
                                    scale: 20),
                                const SizedBox(height: 5),
                                const Text(
                                  "List Product",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      InkWell(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ProductItem())),
                        child: Card(
                          color: Colors.blue.shade300,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(25, 25, 25, 0),
                            child: Column(
                              children: [
                                Image.asset('lib/assets/shop_bag.png',
                                    scale: 20),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text(
                                  "Product Detail",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
