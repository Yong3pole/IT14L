import 'package:flutter/material.dart';

class Page5 extends StatelessWidget {
  const Page5({super.key});

  final txtNum = const TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 50),
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/yong_profile.jpg'),
            ),
            const Text('Leoj Tripole',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                )),
            const Text('tripole.23@gmail.com'),
            const Divider(),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Friends',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  'Posts',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  'Followers',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  '5,000',
                ),
                Text(
                  '3',
                ),
                Text(
                  '2.5k',
                ),
              ],
            ),
            const Divider(),
            const Text('Friends'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Card(
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/friend1.png',
                        height: 120,
                      ),
                      const SizedBox(height: 10),
                      const Text('Immortal Friend'),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/friend2.png',
                        height: 120,
                      ),
                      const SizedBox(height: 10),
                      const Text('Pikas Code Friend'),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/friend3.png',
                        height: 120,
                      ),
                      const SizedBox(height: 10),
                      const Text('Sensei Friend'),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Card(
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/friend4.png',
                        height: 120,
                      ),
                      const SizedBox(height: 10),
                      const Text('Naruto'),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/friend5.jpg',
                        height: 120,
                      ),
                      const SizedBox(height: 10),
                      const Text('Saski'),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/friend6.jpg',
                        height: 120,
                      ),
                      const SizedBox(height: 10),
                      const Text('Hilanat'),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),
              ],
            ),
            const Divider(),
            const Text('Recent Posts'),
            // Add the static user feed design here
            Container(
              margin:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage('assets/postfriend.png'),
                      ),
                      const SizedBox(width: 10),
                      const Text(
                        'Sarah Kaibigan',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(),
                      Text(
                        '2h ago',
                        style: TextStyle(
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'shimenet like my answer, shimenet like how I answer, shimenet like the content of my answer. BUT I am answering!',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.thumb_up, color: Colors.grey[600]),
                          const SizedBox(width: 5),
                          Text('Like'),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.comment, color: Colors.grey[600]),
                          const SizedBox(width: 5),
                          Text('Comment'),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.share, color: Colors.grey[600]),
                          const SizedBox(width: 5),
                          Text('Share'),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
