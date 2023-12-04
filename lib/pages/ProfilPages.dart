import 'package:flutter/material.dart';
import 'package:instagram/widgets/ProfilePicture.dart';
import '../widgets/InfoItems.dart';
import '../widgets/tab_item.dart';
import '../widgets/story_item.dart';

class ProfilePages extends StatelessWidget {
  const ProfilePages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0, //agar bayangan appbar nya tidak ada
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Text(
              "ilhamgod",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            ),
            Icon(Icons.arrow_drop_down, color: Colors.black)
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.add_box_outlined, color: Colors.black)),
          IconButton(
              onPressed: () {}, icon: Icon(Icons.menu, color: Colors.black))
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                ProfilePicture(),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InfoItem("Post", "999"),
                      InfoItem("Followers", "334"),
                      InfoItem("Foloowing", "172"),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              "IlhamGod",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: RichText(
              text: TextSpan(
                  text:
                      "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.",
                  style: TextStyle(color: Colors.black),
                  children: [
                    TextSpan(
                        text: " #jayaesport",
                        style: TextStyle(color: Colors.blue)),
                  ]),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              "Link goes here",
              style: TextStyle(color: Colors.blue),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: OutlinedButton(
              onPressed: () {},
              child: Text(
                "Edit Profile",
                style: TextStyle(color: Colors.black),
              ),
              style: OutlinedButton.styleFrom(backgroundColor: Colors.white),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  StoryItem("Story1", "https://picsum.photos/536/380"),
                  StoryItem("Story2", "https://picsum.photos/536/390"),
                  StoryItem("Story2", "https://picsum.photos/536/400"),
                  StoryItem("Story4", "https://picsum.photos/536/370"),
                  StoryItem("Story5", "https://picsum.photos/536/360"),
                  StoryItem("Story6", "https://picsum.photos/536/350"),
                  StoryItem("Story7", "https://picsum.photos/536/340"),
                  StoryItem("Story8", "https://picsum.photos/536/330"),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TabItem(true, Icons.grid_on_outlined),
              TabItem(false, Icons.person_pin_outlined)
              // Expanded(

              // child: Container(
              //   child: Icon(Icons.person_pin_outlined),
              // ),
              // ),
            ],
          ),
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 21,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, mainAxisSpacing: 5, crossAxisSpacing: 5),
            itemBuilder: (context, index) => Image(
              image: NetworkImage(
                "https://picsum.photos/id/${index + 20}/536/354",
              ),
              fit: BoxFit.cover,
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "Search",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.movie),
              label: "Movie",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag),
              label: "Shop",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile",
            ),
          ]),
    );
  }
}
