import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

          /// =======================
          /// NỬA TRÊN
          /// =======================
          Expanded(
            flex: 1,
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.only(top: 60, left: 20, right: 20),
              color: Colors.blue,
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Xin chào 👋",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Chào mừng bạn quay lại",
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ),

          /// =======================
          /// NỬA DƯỚI
          /// =======================
          Expanded(
            flex: 1,
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: ListView(
                children: [

                  /// Tiêu đề
                  const Text(
                    "Chức năng",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 20),

                  /// Card 1
                  _buildCard(
                    icon: Icons.location_on,
                    title: "Check In",
                    subtitle: "Xác nhận vị trí của bạn",
                  ),

                  const SizedBox(height: 15),

                  /// Card 2
                  _buildCard(
                    icon: Icons.history,
                    title: "Lịch sử",
                    subtitle: "Xem lịch sử check-in",
                  ),

                  const SizedBox(height: 15),

                  /// Card 3
                  _buildCard(
                    icon: Icons.person,
                    title: "Thông tin cá nhân",
                    subtitle: "Cập nhật hồ sơ",
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Widget card dùng lại
            ),
          ),
          const Icon(Icons.arrow_forward_ios, size: 16),
        ],
      ),
    );
  }
}