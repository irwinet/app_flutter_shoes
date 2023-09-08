import 'package:flutter/material.dart';

import '../widgets/custom_widgets.dart';


class ZapatoPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: CustomAppBar(texto: 'For you',),
      // body: ZapatoSizePreview(),
      body: Column(
        children: [
          CustomAppBar(texto: 'For you',),
          SizedBox(height: 20,),
          ZapatoSizePreview(),
        ],
      ),
   );
  }
}