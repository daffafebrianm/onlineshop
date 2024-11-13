import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:http/http.dart' as http;
import 'package:onlineshopdaffa/allproductlist.dart';

class AddProduct extends StatefulWidget {
  const AddProduct({super.key});

  @override
  State<AddProduct> createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  final _name = TextEditingController();
  final _price = TextEditingController();
  final _description = TextEditingController();
  final _promo = TextEditingController();
  final _images = TextEditingController();
  void clearText(){
    _name.clear();
    _price.clear();
    _description.clear();
    _promo.clear();
    _images.clear();
  }

  Future <void> addNewProduct () async{
    String urlAddProduct =
    'https://daffafebrian22.000webhostapp.com/addproduct.php';

    try{                                        
      var responseAdd = await http.post(Uri.parse(urlAddProduct),
      body:{
        "name":_name.text.toString(),
        "price":_price.text.toString(),
        "description":_description.text.toString(),
        "promo":_promo.text.toString(),
        "images":_images.text.toString(),
      } 
      );
      var addProduct = json.decode(responseAdd.body);
      if(addProduct == "true"){
        print("new product successfully added");
      }else{
        print("new product failed added");
      }
    }catch(exc){
      print(exc);
    }
  }

  void getAllProduct(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => const AllProduct()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
        title: const Text(
          'Add New Product',
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
              const SizedBox(
              width: 0,
              height: 40),
          Padding(
              padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: TextField(
                controller:_name,
                autocorrect: true,
                decoration: const InputDecoration(
                  labelText: "Product Name",
                  hintText: "Entri Product Name",
                  labelStyle: TextStyle(
                    color: Colors.blue,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
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
            ),

            //price
            const SizedBox(width: 0, height: 5),
             Padding(
              padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: TextField(
                controller:_price,
                autocorrect: true,
                decoration: const InputDecoration(
                  labelText: "Price",
                  hintText: "Entri Price Name",
                  labelStyle: TextStyle(
                    color: Colors.blue,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
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
            ),

            //description
              const SizedBox(
              width: 0,
              height: 5),
             Padding(
              padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: TextField(
                controller:_description,
                autocorrect: true,
                decoration: const InputDecoration(
                  labelText: "Description",
                  hintText: "Entri Description Name",
                  labelStyle: TextStyle(
                    color: Colors.blue,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
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
            ),

            //promo
                        const SizedBox(
              width: 0,
              height: 5),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: TextField(
                controller:_promo,
                autocorrect: true,
                decoration: const InputDecoration(
                  labelText: "Promo",
                  hintText: "Entri Promo Name",
                  labelStyle: TextStyle(
                    color: Colors.blue,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
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
            ),

            //images
                        const SizedBox(
              width: 0,
              height: 5),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 0, 30, 20),
              child: TextField(
                controller:_images,
                autocorrect: true,
                decoration: const InputDecoration(
                  labelText: "Images",
                  hintText: "Entri Images Name",
                  labelStyle: TextStyle(
                    color: Colors.blue,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
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
            ),

            //button add product
            SizedBox(
              width: 150,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  addNewProduct();
                  clearText();
                  getAllProduct();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: const BorderSide(
                        color: Colors.black,
                        width: 1.0,
                        style: BorderStyle.solid),
                  ),
                ),
                child: const Text(
                  "Add Product",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}