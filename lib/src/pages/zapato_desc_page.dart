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

                  _MontoBuyNow(),

                  _ColoresYmas()
                ],
              ),
            )
          ),
        ],
      ),
    );
  }
}

class _ColoresYmas extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        children: [
          Expanded(
            child: Stack(
              children: [
                Positioned(left: 90, child: _BotonColor(color: Color(0xffC6D642))),
                Positioned(left: 60, child: _BotonColor(color: Color(0xffFFAD29))),
                Positioned(left: 30, child: _BotonColor(color: Color(0xff2099F1))),
                _BotonColor(color: Color(0xff364D56)),
              ],
            ),
          ),
    
          // Spacer(),
    
          BotonNaranja(texto: 'More related items', alto: 30, ancho: 150,color: Color(0xffFFC675),)
        ],
      ),
    );
  }
}

class _BotonColor extends StatelessWidget {
  final Color color;

  const _BotonColor({
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45,
      height: 45,
      decoration: BoxDecoration(
        color: this.color,
        shape: BoxShape.circle
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
        margin: EdgeInsets.only(top: 20, bottom: 20),
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