import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:onlineshopdaffa/allproductlist.dart';

class UpdateProduct extends StatefulWidget {
  final String id;
  final String name;
  final String price;
  final String description;
  final String promo;
  final String images;

  const UpdateProduct({
    Key? key,
    required this.id,
    required this.name,
    required this.price,
    required this.description,
    required this.promo,
    required this.images,
  }) : super(key: key);

  @override
  _UpdateProductState createState() => _UpdateProductState();
}

class _UpdateProductState extends State<UpdateProduct> {
  late TextEditingController _idController;
  late TextEditingController _nameController;
  late TextEditingController _priceController;
  late TextEditingController _descriptionController;
  late TextEditingController _promoController;
  late TextEditingController _imagesController;

  @override
  void initState() {
    super.initState();
    _idController = TextEditingController(text: widget.id);
    _nameController = TextEditingController(text: widget.name);
    _priceController = TextEditingController(text: widget.price);
    _descriptionController = TextEditingController(text: widget.description);
    _promoController = TextEditingController(text: widget.promo);
    _imagesController = TextEditingController(text: widget.images);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const AllProduct()),
            );
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 24,
          ),
        ),
        title: const Text(
          'Update Product',
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Colors.white,
              size: 24,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications,
              color: Colors.white,
              size: 24,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 0, 30, 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Product ID (editable)
              TextField(
                controller: _idController,
                decoration: InputDecoration(
                  labelText: 'Product ID',
                  hintText: 'Enter Product ID',
                  suffixIcon: Align(
                    widthFactor: 1.0,
                    heightFactor: 1.0,
                    child: Icon(
                      Icons.people,
                      color: Colors.amber,
                      size: 24,
                    ),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 2,
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 12.0),

              // Product Name
              TextField(
                controller: _nameController,
                decoration: InputDecoration(
                  labelText: 'Product Name',
                  hintText: 'Enter Product Name',
                  suffixIcon: Align(
                    widthFactor: 1.0,
                    heightFactor: 1.0,
                    child: Icon(
                      Icons.people,
                      color: Colors.amber,
                      size: 24,
                    ),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 2,
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 12.0),

              // Price
              TextField(
                controller: _priceController,
                decoration: InputDecoration(
                  labelText: 'Price',
                  hintText: 'Enter Price',
                  suffixIcon: Align(
                    widthFactor: 1.0,
                    heightFactor: 1.0,
                    child: Icon(
                      Icons.price_change,
                      color: Colors.amber,
                      size: 24,
                    ),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 2,
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 12.0),

              // Description
              TextField(
                controller: _descriptionController,
                decoration: InputDecoration(
                  labelText: 'Description',
                  hintText: 'Enter Description',
                  suffixIcon: Align(
                    widthFactor: 1.0,
                    heightFactor: 1.0,
                    child: Icon(
                      Icons.description,
                      color: Colors.amber,
                      size: 24,
                    ),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 2,
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 12.0),

              // Promo
              TextField(
                controller: _promoController,
                decoration: InputDecoration(
                  labelText: 'Promo',
                  hintText: 'Enter Promo',
                  suffixIcon: Align(
                    widthFactor: 1.0,
                    heightFactor: 1.0,
                    child: Icon(
                      Icons.price_check_sharp,
                      color: Colors.amber,
                      size: 24,
                    ),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 2,
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 12.0),

              // Images
              TextField(
                controller: _imagesController,
                decoration: InputDecoration(
                  labelText: 'Images',
                  hintText: 'Enter Images URL',
                  suffixIcon: Align(
                    widthFactor: 1.0,
                    heightFactor: 1.0,
                    child: Icon(
                      Icons.image,
                      color: Colors.amber,
                      size: 24,
                    ),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 2,
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24.0),

              // Update Product Button
              ElevatedButton(
                onPressed: () {
                  updateProduct();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green.shade400,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: BorderSide(
                        color: Colors.black,
                        width: 1.0,
                        style: BorderStyle.solid),
                  ),
                ),
                child: Text(
                  'Update Product',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> updateProduct() async {
    String urlUpdateProduct =
        "http://daffafebrian22.000webhostapp.com/updateproduct.php";

    try {
      var response = await http.post(Uri.parse(urlUpdateProduct), body: {
        "id": _idController.text,
        "name": _nameController.text,
        "price": _priceController.text,
        "description": _descriptionController.text,
        "promo": _promoController.text,
        "images": _imagesController.text,
      });

      var responseData = jsonDecode(response.body);
      if (responseData["success"] == "true") {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Product updated successfully")),
        );
        Navigator.pop(context); // Navigate back to previous screen
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Failed to update product")),
        );
      }
    } catch (e) {
      print(e.toString());
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Error: ${e.toString()}")),
      );
    }
  }

  @override
  void dispose() {
    _idController.dispose();
    _nameController.dispose();
    _priceController.dispose();
    _descriptionController.dispose();
    _promoController.dispose();
    _imagesController.dispose();
    super.dispose();
  }
}
