import 'package:app_flutter_shoes/src/widgets/custom_widgets.dart';
import 'package:flutter/material.dart';

class AgregarCarritoBoton extends StatelessWidget {
  final double monto;

  const AgregarCarritoBoton({required this.monto});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Container(
        width: double.infinity,
        height: 100,
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.1),
          borderRadius: BorderRadius.circular(100)
        ),
        child: Row(
          children: [
            Text('\$$monto', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),),
            Spacer(),
            BotonNaranja(texto: 'Add to cart',),
            SizedBox(width: 20,)
          ],
        ),
      ),
    );
  }
}