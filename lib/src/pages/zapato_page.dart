import 'package:app_flutter_shoes/src/helpers/helpers.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_widgets.dart';


class ZapatoPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    cambiarStatusDark();
    return Scaffold(
      // body: CustomAppBar(texto: 'For you',),
      // body: ZapatoSizePreview(),
      body: Column(
        children: [
          CustomAppBar(texto: 'For you',),
          SizedBox(height: 20,),
          
          Expanded(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                    Hero(
                      tag: 'zapato-1',
                      child: ZapatoSizePreview()
                    ),

                    ZapatoDecripcion(
                      titulo: 'Nike Air Max 720',
                      descripcion: "The Nike Air Max 720 goes bigger than ever before with Nike's taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so.",
                    ),                    
                ],
              ),
            ),
          ),

          AgregarCarritoBoton(monto: 180.0)          
        ],
      ),
   );
  }
}