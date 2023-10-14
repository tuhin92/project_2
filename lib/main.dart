import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeActivity(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Photo Gallery'),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.black12, // Set the background color of the body to grey
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Center(
              child: Text(
                'Welcome to my photo gallery',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(
              height: 18,
            ),
            Container(
              height: 85,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18.0), // Make it round
                    color: Colors
                        .white, // Set the background color of the rounded TextField
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search',
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(
                          left: 16, top: 25, bottom: 15),
                      // Adjust padding for hint text
                      suffixIcon: Padding(
                        padding: EdgeInsets.only(right: 16),
                        // Adjust padding for the search icon
                        child: Icon(Icons.search_rounded),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 16.0,
            ),
            Expanded(
              flex: 50,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
                itemCount: 21,
                itemBuilder: (context, index){
                  return Container(
                    color: Colors.blue,
                    margin: EdgeInsets.all(8.0),
                    child: Center(
                      child: Text('Item $index'),
                    ),
                  );
                },
              ),
            ),
            Expanded(
              flex: 30,
              child: ListView.builder(
                itemCount: 6,
                itemBuilder: (context, index){
                  return ListTile(
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Photo${index+1}'),
                        Text('Description for photo ${index+1}'),
                      ],
                    ),
                    leading: CircleAvatar(
                      child: Text('${index+1}'),
                    ),
                  );
                },
              ),
            ),
            Expanded(
              flex: 10,
              child: ElevatedButton(
                onPressed: (){
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("Photo Uploaded Successfully!"),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                ),
                child: Icon(Icons.upload),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
