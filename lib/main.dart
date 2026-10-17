import 'package:flutter/material.dart';

void main() {
  runApp(const DonationApp());
}

class DonationApp extends StatelessWidget {
  const DonationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'بنك الدم اليمني - المتبرعين',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const DonationHomePage(),
    );
  }
}

class DonationHomePage extends StatelessWidget {
  const DonationHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('التسجيل كمتبرع بالدم'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Icon(
                Icons.bloodtype,
                size: 80,
                color: Colors.red,
              ),
              const SizedBox(height: 16),
              const Text(
                'انضم كمتبرع لإنقاذ الأرواح',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 24),
              
              // خانة الاسم
              TextField(
                decoration: InputDecoration(
                  labelText: 'الاسم الكامل',
                  prefixIcon: const Icon(Icons.person),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(height: 16),

              // خانة فصيلة الدم
              TextField(
                decoration: InputDecoration(
                  labelText: 'فصيلة الدم (مثال: +O, +A)',
                  prefixIcon: const Icon(Icons.water_drop),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(height: 16),

              // خانة المدينة / المحافظة
              TextField(
                decoration: InputDecoration(
                  labelText: 'المدينة / المحافظة',
                  prefixIcon: const Icon(Icons.location_city),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(height: 16),

              // خانة رقم الهاتف
              TextField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  labelText: 'رقم الهاتف للتواصل',
                  prefixIcon: const Icon(Icons.phone),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(height: 24),

              // زر التسجيل
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(
                  'تسجيل متبرع جديد',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
