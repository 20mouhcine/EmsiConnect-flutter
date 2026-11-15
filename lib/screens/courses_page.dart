
import 'package:flutter/material.dart';

class CoursesPage extends StatelessWidget {
  const CoursesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final modules = [
      {'nom': 'Flutter', 'enseignant': 'Mme Aouraghe', 'heures': 32},
      {'nom': 'Réseaux', 'enseignant': 'M. Exemple', 'heures': 24},
      {'nom': 'Systèmes d’exploitation', 'enseignant': 'M. Exemple', 'heures': 24},
      {'nom': 'Programmation orientée objet', 'enseignant': 'M. Exemple', 'heures': 24},
      {'nom': 'Analyse et conception de logiciels', 'enseignant': 'M. Exemple', 'heures': 24},
      {'nom': 'Architecture des ordinateurs', 'enseignant': 'M. Exemple', 'heures': 24},
      {'nom': 'Mathématiques pour l’informatique', 'enseignant': 'M. Exemple', 'heures': 24},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Mes cours'),
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Titre fixe
          const Padding(
            padding: EdgeInsets.fromLTRB(16, 20, 16, 12),
            child: Text(
              'Modules du semestre',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          // Liste défilante
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 8,
              ),
              itemCount: modules.length,

              itemBuilder: (context, index) {
                return Card(
                  elevation: 2,
                  margin: const EdgeInsets.only(bottom: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),

                  child: ListTile(
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 8,
                    ),

                    leading: CircleAvatar(
                      radius: 18,
                      child: Text('${index + 1}'),
                    ),

                    title: Text(
                      modules[index]['nom'].toString(),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),

                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 6),
                      child: Text(
                        'Enseignant : ${modules[index]['enseignant']}\n'
                        'Volume horaire : ${modules[index]['heures']} heures',
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),

                    trailing: const Icon(
                      Icons.chevron_right,
                      size: 22,
                    ),

                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            '${modules[index]['nom']} sélectionné',
                          ),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
