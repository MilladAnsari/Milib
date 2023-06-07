import "package:flutter/material.dart";
import "package:untitled2/screens/second_screen.dart";
import "dart:convert";
import 'package:http/http.dart' as http;
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late String title = "Millad";
  late int cnt = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          //color : Colors.red,
          title: Text("$title : $cnt"),
        ),
        body: Column(
          children: [
            ElevatedButton(
              onPressed: () async {
                setState(() {
                  if(title != "Apple")
                    title = "Apple";
                  else
                    title = "Millad";
                  cnt ++;
                });
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => SecondScreen(queteText: title, authorName: title + title,)));
              //   String quote = "khar1";//data["quotes"][0]["text"];
              //   String author = "khar2";//data["quotes"][0]["authur"];
              // var url = Uri.parse('https://example.com/whatsit/create');
              // var response =
              //     await http.get(url);
              // print('Response status: ${response.statusCode}');
              // print
                // ('Response body: ${response.body}');
              // Navigator.of(context).push(MaterialPageRoute(builder: (context) => SecondScreen(queteText: quote, authorName: author,)));
                // var response = await http.get(url);
                // print('Response status: ${response.statusCode}');
                // print('Response body: ${response.body}');
                // var data = jsonDecode(response.body);



              },
              child: Text("بکن توش"),
            ),
          ],
        ),
      ),
    );
  }
}
