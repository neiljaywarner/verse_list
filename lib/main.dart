import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  /*
  cooltext.com
  You are welcome to use any of the generated graphics in any way, shape, or form without asking permission. If you'd like to thank us, please tell your friends about this service and consider linking to Cool Text.


   */
  @override
  Widget build(BuildContext context) {
    const title = 'Your 62 verses';

    return MaterialApp(
      title: title,
      home: Scaffold(
        // No appbar provided to the Scaffold, only a body with a
        // CustomScrollView.
        body: CustomScrollView(
          slivers: [
            // Add the app bar to the CustomScrollView.
            SliverAppBar(
              // Provide a standard title.
              title: const Text(title),
              snap: true,
              pinned: true,
              // Allows the user to reveal the app bar if they begin scrolling
              // back up the list of items.
              floating: true,
              // Display a placeholder widget to visualize the shrinking size.
              flexibleSpace: Center(child:
                Image.network('https://d1r0kpcohdg1bn.cloudfront.net/assets/logo-b94e50d8b08809e8b662c9c12a4c9580e4f6a400b66ba8ad951af2fbc9da9eeb.png')),
              // Make the initial height of the SliverAppBar larger than normal.
              expandedHeight: 200,
            ),
            // Next, create a SliverList
            SliverList(
              // Use a delegate to build items as they're scrolled on screen.
              delegate: SliverChildBuilderDelegate(
                // The builder function returns a ListTile with a title that
                // displays the index of the current item.
                    (context, index) => ListTile(title: Text('Item #$index')),
                // Builds 1000 ListTiles
                childCount: 1000,
              ),
            ),
          ],
        ),
      ),
    );
  }
}