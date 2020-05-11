import 'package:flutter/material.dart';
import 'home_page.dart';
import 'package:animated_splash/animated_splash.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';

void main() async {
  final client = Client(
    'vcjqqdamyrka',
    logLevel: Level.INFO,
  );

  await client.setUser(
    User(id: '78828'),
    'x48zsnazdcum7jm4rwp4jdxsdc4f77nabyu47c74bp28hh4nx6ynvm7qunnaeuz3',
  );
  runApp(MyApp(client));
}

Map<int, Widget> op = {1: MyHomePage()};

class MyApp extends StatelessWidget {

      final Client client;
       MyApp(this.client);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system,
      home: AnimatedSplash(
        imagePath: 'images/splash.png',
        home:Container (
            child: StreamChat(
            client: client,
            child: MyHomePage(),
          ),
          
        ),
        duration: 4500,
        type: AnimatedSplashType.StaticDuration,
        outputAndHome: op,
      ),
      debugShowCheckedModeBanner: false,
      color: Colors.green,
    );
    
  }
}
