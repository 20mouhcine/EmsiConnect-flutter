import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title, style: const TextStyle(color: Colors.white)),
        backgroundColor: Colors.green,
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications, color: Colors.white),
            onPressed: () {
              debugPrint('Notifications consultées');
            },
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Bienvenue sur EMSI Connect',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 20),

              Image.asset(
                'assets/images/logo.jpg',
                height: 160,
                fit: BoxFit.fill,
              ),

              const SizedBox(height: 20),

              const Text(
                'Votre espace universitaire pour accéder à vos cours, '
                'votre planning et vos informations personnelles.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),

              const SizedBox(height: 24),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(16),
                      margin: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.green.shade50,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.green),
                      ),
                    child:Column(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Icon(Icons.menu_book, size: 48, color: Colors.green),
                        SizedBox(height: 8),
                        Text('Mes Cours', style: TextStyle(fontSize: 16)),
                      ],
                    ),
                    
                    ),
                  ),
                  Expanded(
                    
                    child: Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(16),
                      margin: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.green.shade50,
                        border: Border.all(color: Colors.green),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    child:Column(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Icon(Icons.calendar_month, size: 48, color: Colors.green),
                        SizedBox(height: 8),
                        Text('Planning', style: TextStyle(fontSize: 16)),
                      ],
                    ),
                    
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(16),
                      margin: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.green.shade50,
                        border: Border.all(color: Colors.green),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    child:Column(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Icon(Icons.person, size: 48, color: Colors.green),
                        SizedBox(height: 8),
                        Text('Mon profil', style: TextStyle(fontSize: 16)),
                      ],
                    ),
                    
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(16),
                      margin: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.green.shade50,
                        border: Border.all(color: Colors.green),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    child:Column(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Icon(Icons.task_alt, size: 48, color: Colors.green),
                        SizedBox(height: 8),
                        Text('Mes taches', style: TextStyle(fontSize: 16)),
                      ],
                    ),
                    
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton  (
        backgroundColor: Colors.green.shade50,
                         foregroundColor: Colors.green,
        onPressed: () {
          debugPrint('Fonctionnalité bientôt disponible');
        },
        child: const Icon(Icons.add),
      )
    );
  }
}
