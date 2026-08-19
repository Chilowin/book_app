import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../services/mock_data.dart';

//Changer les placeholder par des images à placer dans un dossier assets après que le projet soit bein fonctionnel.
class AccueilScreen extends StatelessWidget {
  const AccueilScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final livres = MockData.getBooks().take(4).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Accueil'),
        centerTitle: true,
        elevation: 4,
      ),
      body: Column(
        children: [
          const Text('Livres en Vedette'),
          SizedBox(
            height: 220,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: livres
                  .map(
                    (livre) => SizedBox(
                      width: 230,
                      child: Card(
                        child: Column(
                          children: [
                            /*Image.network(
                              livre.couverture,
                              height: 150,
                              width: 10,
                              fit: BoxFit.cover,
                            ),*/
                            Container(
                              height: 150,
                              width: 200,
                              decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: const Icon(
                                Icons.book,
                                size: 50,
                                color: Colors.grey,
                              ),
                            ),
                            Text(
                              livre.titre,
                              textAlign: TextAlign.center,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(livre.auteur),
                          ],
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
          TextButton(
            onPressed: () => context.go('/livres'),
            child: Text('voir tous les livres'),
          ),
        ],
      ),
    );
  }
}
