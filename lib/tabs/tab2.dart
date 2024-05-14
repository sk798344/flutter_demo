import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Tab2 extends StatefulWidget {
  @override
  _Tab2State createState() => _Tab2State();
}

class _Tab2State extends State<Tab2> {
  List<Map<String, dynamic>> dataList = [];

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1/photos'));
    if (response.statusCode == 200) {
      List<dynamic> responseData = json.decode(response.body);
      setState(() {
        dataList = responseData.map<Map<String, dynamic>>((data) => {
          'title': data['title'],
          'imageUrl': data['url']
        }).toList();
      });
    } else {
      throw Exception('Failed to load data');
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: dataList.map((data) => _buildContainer(data)).toList(),
        ),
      ),
    );
  }

  Widget _buildContainer(Map<String, dynamic> data) {
    return Column(
      children: [
        Container(
          height: 100,
          color: const Color.fromARGB(255, 133, 169, 230),
          width: double.infinity,
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(data['title']),
                ),
              ),
              Image.network(
                data['imageUrl'],
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ],
          ),
        ),
        Divider(),
      ],
    );
  }
}
