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
              title: const Text(''),
              snap: true,
              pinned: true,
              // Allows the user to reveal the app bar if they begin scrolling
              // back up the list of items.
              floating: true,
              // Display a placeholder widget to visualize the shrinking size.
              flexibleSpace:     Container(
                padding: EdgeInsets.only(top: 50),
                height: 140,
                  child: Image.network('https://lh3.googleusercontent.com/ZsjJhvk1vPvrhtaJ6_CjD-19BF_60KiUDctgMxJUyWiVyYNXXGUv6pttlbiuKlRHnlE4yDFyHixgLfc_bnX88HItA5oSLPxdIwiJYk_zkXkMtTdGvE1J1wFwqhKr_o1CJM5pHGjvh0DnaCHFJNrcxRWkXmcaatfj3NhImS3DM26aSuWHzzHuBYnf45Htek9l6edWXDrsCUdjbV7QbUVzO-zc4W4erLboi56K6Np8EDfgv_KDFKRrRcnIkLFQADiKwIsCBOrr_VedRbMFyCaOcbG0-pgkFA62f6zqauIBe5pag6ueYxbm8RJyzqr9wK1AVOIevlFe2Wr8OQ84kEg5OFghtpXvnifl2c4itiy7wSchY2kktjbNbLib3OFdITDdZVOlzj4u3WcvavjpKWy964EYCe_GanjHUSbgvBnifRBr704yWV_QT_6nJC1M23T0y-46CpCLsprIPKtFsJS9HHXRcuLOkT-g8qc-Uy07gvCQ0cR_vzOcla4GtECSWjhlggx84zy2sG4Q5BR3rjlknJxIZ_AlRB_Dzp0y5E5nIwi1uIzDb0nkmM01Yszb_dwYVs3rl-fKG0KIkysbzB3eKfKUvXw_76EHk9GxQS1J5A6opsQz9BAw3R8Nq_iAUl5JSTiXi8wsuUK0YQwbkpryLbJpMbzdi3wNmx0DqFSgBL0kdBk1qmGN8EjjhhivMa223mxsQK7NlqPmstdHT2wINOq8gxRtzGDN5k1vQJJsrHFk-fDd26pyy8PgXM1S9A=w233-h147-no?authuser=0')),

              // Make the initial height of the SliverAppBar larger than normal.
              expandedHeight: 80,
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