import 'package:app_flutter_shoes/src/widgets/custom_widgets.dart';
import 'package:flutter/material.dart';

class ZapatoDescPage extends StatelessWidget {
  const ZapatoDescPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ZapatoSizePreview(fullScreen: true),

          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ZapatoDecripcion(
                      titulo: 'Nike Air Max 720',
                      descripcion: "The Nike Air Max 720 goes bigger than ever before with Nike's taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so.",
                    ),

                  _MontoBuyNow()
                ],
              ),
            )
          ),
        ],
      ),
    );
  }
}

class _MontoBuyNow extends StatelessWidget {
  const _MontoBuyNow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Container(
        margin: EdgeInsets.only(top: 20),
        child: Row(
          children: [
            Text('\$180.0', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),),
            Spacer(),
            BotonNaranja(texto: 'Buy now', ancho: 120, alto: 40,)
          ],
        ),
      ),
    );
  }
}