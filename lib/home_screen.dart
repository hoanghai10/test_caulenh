import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<Map<String, dynamic>> todos = [
    {"title": "Học Flutter", "done": false},
    {"title": "Làm bài tập", "done": false},
    {"title": "Đi tập gym", "done": true},
    {"title": "Đọc sách", "done": false},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      /// ===== APP BAR =====ai@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage:
                NetworkImage("https://i.pravatar.cc/150?img=3"),
              ),
            ),

            ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Trang chủ"),
              onTap: () {
                Navigator.pop(context);
              },
            ),

            ListTile(
              leading: const Icon(Icons.person),
              title: const Text("Thông tin cá nhân"),
              onTap: () {
                Navigator.pop(context);
              },
            ),

            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text("Cài đặt"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),

      /// ===== BODY =====
      body: Column(
        children: [

          /// NỬA TRÊN (Avatar)
          Expanded(
            flex: 1,
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.only(top: 60, left: 20, right: 20),
              color: Colors.blue,
              child: Row(
                children: const [
                  CircleAvatar(
                    radius: 35,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 32,
                      backgroundImage: NetworkImage(
                        "https://i.pravatar.cc/150?img=3",
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Xin chào 👋",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Hoàng Hải",
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          /// NỬA DƯỚI – TODO LIST
          Expanded(
            flex: 1,
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(30),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  const Text(
                    "Danh sách công việc",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 15),

                  Expanded(
                    child: ListView.builder(
                      itemCount: todos.length,
                      itemBuilder: (context, index) {
                        final item = todos[index];

                        return Container(
                          margin: const EdgeInsets.only(bottom: 10),
                          padding:
                          const EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                            borderRadius:
                            BorderRadius.circular(12),
                          ),
                          child: CheckboxListTile(
                            value: item["done"],
                            onChanged: (value) {
                              setState(() {
                                item["done"] = value;
                              });
                            },
                            title: Text(
                              item["title"],
                              style: TextStyle(
                                fontSize: 16,
                                decoration: item["done"]
                                    ? TextDecoration.lineThrough
                                    : TextDecoration.none,
                              ),
                            ),
                            controlAffinity:
                            ListTileControlAffinity.leading,
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}