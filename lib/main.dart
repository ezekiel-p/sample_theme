import 'package:flutter/material.dart';
import 'package:sample_theme/core/themes/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      /// ADD LOGIC HERE TO CHANGE THEME OF THE APP. YOU CAN USE BLOC IF YOU WANT.
      //theme: AppTheme.darkTheme,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Theme Sample"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  elevation: 0,
                ),
                onPressed: () {},
                child: const Text("Change Theme"),
              ),
              Expanded(
                child: ListView(
                  children: [
                    // USING COLOR SCHEME
                    Container(
                      height: 100.0,
                      // THIS WILL DEPEND ON WHICH ACTIVE THEME YOU ARE USING (DARK OR LIGHT)
                      color: Theme.of(context).colorScheme.primary,
                      child:
                          const Center(child: Text("SAMPLE VIA COLOR SCHEME")),
                    ),
                    // TYPHOGRAPY
                    Text(
                      "bodySmall",
                      style: AppTheme.textTheme(
                        fontColor: Colors.blue,
                      ).bodySmall,
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "bodyMedium",
                      style: AppTheme.textTheme(
                        fontColor: Colors.blue,
                      ).bodyMedium,
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "bodyLarge",
                      style: AppTheme.textTheme(
                        fontColor: Colors.blue,
                      ).bodyLarge,
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "headlineSmall",
                      style: AppTheme.textTheme(
                        fontColor: Colors.blue,
                      ).headlineSmall,
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "headlineMedium",
                      style: AppTheme.textTheme(
                        fontColor: Colors.blue,
                      ).headlineMedium,
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "headlineLarge",
                      style: AppTheme.textTheme(
                        fontColor: Colors.blue,
                      ).headlineLarge,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
