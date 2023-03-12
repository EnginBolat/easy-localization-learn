import 'package:easy_localization/easy_localization.dart';
import 'package:easy_localization_learn/constants/app_lang.dart';
import 'package:easy_localization_learn/core/init/gen/translations.g.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
      supportedLocales: AppLang.supportedLocale,
      saveLocale: true,
      fallbackLocale: AppLang.en,
      path: AppLang.localePath,
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      title: 'Easy Localization Learn',
      theme: ThemeData(primarySwatch: Colors.amber),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(LocaleKeys.HomePageText_welcome).tr(),
      ),
      body: ListView.builder(
        itemCount: AppLang.supportedLanguages.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: ListTile(
              leading: CircleAvatar(child: Text("${index + 1}")),
              title: Text(AppLang.supportedLanguages[index]),
              onTap: (){
                setState(() {
                  context.setLocale(AppLang.supportedLocale[index]);
                });
              },
            ),
          );
        },
      ),
    );
  }
}
