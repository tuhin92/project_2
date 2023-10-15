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
 final List<String> imageUrls =[
   'https://img.freepik.com/free-vector/realistic-fitness-trackers_23-2148530529.jpg?w=826&t=st=1697378834~exp=1697379434~hmac=e6baf475eda4a6023fd55c9fe1054768215a4a0ae6e551e830446e4fa8f14a00',
   'https://img.freepik.com/free-photo/white-cup-coffee-with-dark-orange-background_1340-34413.jpg?t=st=1697383921~exp=1697387521~hmac=b3ab9b635c09483ac591cec9c836da3c70ba2c59385db723619c937c2b1ec1f9&w=826',
   'https://img.freepik.com/free-photo/new-smartwatch-balancing-with-hand_23-2150296477.jpg?w=826&t=st=1697383109~exp=1697383709~hmac=5f9fce977b41a1fd94d2c16dbc5663e39f66f0961332a0f2f20648863987d37a',
   'https://img.freepik.com/free-photo/glass-bowl-with-gold-coins-inside-gold-bowl-with-words-gold-it_1340-28830.jpg?t=st=1697383154~exp=1697386754~hmac=91f074f82d962a39ab725f80ec13d86d1584aa79dfb4208f6755c19b9a7df4af&w=826',
   'https://img.freepik.com/premium-psd/black-smartphone-mockup-your-design_34168-2405.jpg?w=826',
   'https://img.freepik.com/free-photo/black-shirt-with-word-ultra-it_1340-37775.jpg?t=st=1697383055~exp=1697386655~hmac=f0ff105711ecdf99d33d1af02bca29701696199617281b64fa3693f2fee7c075&w=826',
   'https://img.freepik.com/free-psd/sneakers-shoes-social-media-template_505751-3349.jpg?w=826&t=st=1697385409~exp=1697386009~hmac=f324574954f1a987ecfca468b3869f370cf6e5e3d348d92ea880a566250341a1',
   'https://img.freepik.com/free-photo/bottle-perfume-with-word-perfume-it_1340-37493.jpg?t=st=1697366071~exp=1697369671~hmac=481f1c03649e64b29ba34a3c8f48ad1d5e51a5a2a4b3217821b30498b70b0ffd&w=740',
   'https://img.freepik.com/free-psd/3d-rendering-graphic-design-element_23-2149412225.jpg?w=826&t=st=1697383508~exp=1697384108~hmac=bd44c815af05f48eebc9b45518f95810b74b418b33d018a53491aff8ed9d8c12',
   'https://img.freepik.com/free-psd/3d-rendering-father-s-day-icon_23-2150591946.jpg?w=826&t=st=1697383549~exp=1697384149~hmac=f3241f06e043d574cf0d1963386e8ff3459f351f173b66362982c17141e789e4',
   'https://img.freepik.com/free-psd/modern-minimal-headphone-branding-mockup_439185-11916.jpg?w=826&t=st=1697383610~exp=1697384210~hmac=5a9b5daf0deea1480917df0a7dd1e72da658f5e13b39dca7045498dbde7bdb95',
   'https://img.freepik.com/premium-psd/3d-render-apple-airpods_344266-181.jpg?w=826',
   'https://img.freepik.com/free-photo/man-wearing-beige-shorts-close-up_53876-125260.jpg?w=826&t=st=1697383689~exp=1697384289~hmac=b1b0c2a4c9b76b8bc37220105aa4a8c8f55cd743aa38f15f8ee16c833619cd39',
   'https://img.freepik.com/free-vector/soccer-ball-background-flat-style_23-2147789481.jpg?w=826&t=st=1697383726~exp=1697384326~hmac=94594b610fa330b84f22da1d6cc939af06a612fa8295e2554cd7633df27f2b04',
   'https://img.freepik.com/free-vector/cute-dog-cat-friend-cartoon_138676-2432.jpg?w=826&t=st=1697383773~exp=1697384373~hmac=80957e66a2c0a3a5c52796b77082cd9ad6e574bb4c9b7a4db9d012ba10b02da5',
   'https://img.freepik.com/free-psd/realistic-book-cover-presentation_1310-24.jpg?w=826&t=st=1697383887~exp=1697384487~hmac=68277e793850049780791c984b9093c28390384b3e6bd629f6f74cfd1bbe1651',
   'https://img.freepik.com/free-photo/white-cup-coffee-with-dark-orange-background_1340-34413.jpg?t=st=1697383921~exp=1697387521~hmac=b3ab9b635c09483ac591cec9c836da3c70ba2c59385db723619c937c2b1ec1f9&w=826',
   'https://img.freepik.com/premium-psd/vintage-moodboard-collage-mockup_430503-240.jpg?w=826',

  ];
    HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('FoX MarT'),
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
                'We know you, better than you',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w300,
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
                  crossAxisCount: 2,
                ),
                itemCount: 18,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index){
                  final imageUrl = imageUrls[index % imageUrls.length];
                  return Container(
                    color: Colors.blue,
                    margin: EdgeInsets.all(8.0),
                    child: Center(
                      child: Image.network(
                        imageUrl,
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
            ),
            Expanded(
              flex: 10,
              child: Align(
                alignment: Alignment.centerLeft, // Align text to the left
                child: Text(
                  ' Top Product:  ',
                  style: TextStyle(
                    backgroundColor: Colors.red,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
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
                      content: Text("Orderd Confirm !"),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                ),
                child: Icon(Icons.add_shopping_cart),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
