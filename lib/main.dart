import 'package:flutter/material.dart';
import 'package:login_flutter_app/src/utils/theme/theme.dart';

void main() => runApp(const MyApp());


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:TAppTheme.lightTheme,
      darkTheme:TAppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home:  const AppHome(),
    );
  }
}


class AppHome extends StatelessWidget {
  const AppHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).dialogBackgroundColor,
      appBar: AppBar(title: const Text('.appable/'),leading: const Icon(Icons.ondemand_video),),
      floatingActionButton: FloatingActionButton(onPressed: () {  },
      child: const Icon(Icons.add_shopping_cart_outlined),),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
             Text('Heading',style: Theme.of(context).textTheme.headline2, ),
             Text('Sub-heading',style: Theme.of(context).textTheme.subtitle2,),
             Text('Paragraph',style: Theme.of(context).textTheme.bodySmall,),
            ElevatedButton(onPressed: (){}, child: const Text('ElevatedButton'),),
            OutlinedButton(onPressed: (){}, child: const Text('OutlinedButton'),),
            const Padding(padding: EdgeInsets.all(20.0),
            child: Image(image: AssetImage('assets/images/book.png')),
            )
          ],
        )
      ),
    );
  }
}
