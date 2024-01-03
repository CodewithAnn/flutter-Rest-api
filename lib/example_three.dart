import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_rest_api/products_model.dart';
import 'package:http/http.dart' as http;

class ExampleThree extends StatefulWidget {
  const ExampleThree({super.key});

  @override
  State<ExampleThree> createState() => _ExampleThreeState();
}

class _ExampleThreeState extends State<ExampleThree> {
  // method for Api call
  Future<ProductModel> getProducts() async {
    final response = await http.get(
        Uri.parse('https://webhook.site/0b146a90-5a58-4f4b-887d-ba48f695d5c7'));
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      return ProductModel.fromJson(data);
    } else {
      return ProductModel.fromJson(data);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff386a20),
        title: const Text('Example 3 RestApi'),
      ),
      body: Column(
        children: [
          Expanded(
              child: FutureBuilder(
            future: getProducts(),
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return const Text('Loading Data...');
              } else {
                return ListView.builder(
                    itemCount: snapshot.data!.data!.length,
                    itemBuilder: (context, index) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * .3,
                            width: MediaQuery.of(context).size.width * 1,
                            child: ListView.builder(
                              itemCount:
                                  snapshot.data!.data![index].images!.length,
                              itemBuilder: (context, position) {
                                return Container(
                                  height:
                                      MediaQuery.of(context).size.height * 25,
                                  width: MediaQuery.of(context).size.width * .5,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(
                                        snapshot.data!.data![index]
                                            .images![position].url
                                            .toString(),
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          )
                        ],
                      );
                    });
              }
            },
          ))
        ],
      ),
    );
  }
}
