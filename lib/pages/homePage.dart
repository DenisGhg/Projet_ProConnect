import 'package:flutter/material.dart';
import 'package:proconnect/widgets/appButton.dart';
import 'package:proconnect/widgets/appText.dart';

import 'logInPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double screeWidth = MediaQuery.of(context).size.width;
    double screeHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      // Page d'accueil
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: screeHeight * 0.15,
          ),

          // Welcome
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: AppText(
              text: "Bienvenue sur ProConnect !",
              textAlign: TextAlign.center,
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 7, 54, 92),
            ),
          ),

          // Espacement
          SizedBox(
            height: screeHeight * 0.05,
          ),

          //Bref description
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: AppText(
              text: "Créez facilement votre portfolio professionnel et mettez en avant vos compétences et projets en tant qu'informaticien. Que vous soyez recruteur ou talent, ProConnect vous aide à trouver les bonnes connexions dans le monde du numérique.",
              textAlign: TextAlign.center,
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),

          // Espacement
          SizedBox(
            height: screeHeight * 0.03,
          ),

          // Suite Description
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // "Connectez-vous" en bleu
              AppText(
                text: "Connectez-vous",

                color: Colors.blue,
              ),

              // "ou" en noir
              AppText(
                text: " ou",
                color: Colors.black,
              ),

              // "Inscrivez-vous" en orange
              AppText(
                text: " Inscrivez-vous",
                color: Colors.orange,
              ),
            ],
          ),

          //"pour commencer" en noir
          AppText(
            text: "pour commencer",
            textAlign: TextAlign.center,
          ),

          // Espacement
          SizedBox(
            height: screeHeight * 0.1,
          ),

          // Boutons Se connecter et S'inscrire
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Se Connecter
              AppButton(
                onTap: (){
                  Navigator.pushNamed(context, '/logIn');
                },
                height: screeHeight * 0.09,
                width: screeWidth * 0.4,
                backgroundColor: Colors.blue,
                alignment: Alignment.center,
                child: AppText(
                  text: "Se connecter",
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),

              //Espacement
              SizedBox(
                width: screeWidth * 0.02,
              ),

              // Bouton s'inscrire
              AppButton(
                onTap: (){
                  Navigator.pushNamed(context, '/profilChoice');
                },
                height: screeHeight * 0.09,
                width: screeWidth * 0.4,
                backgroundColor: Colors.orange,
                alignment: Alignment.center,
                child: AppText(
                  text: "S'incrire",
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),

            ],
          ),
        ],
      ),
    );
  }
}
