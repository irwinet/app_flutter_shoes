import 'package:flutter/material.dart';

class ZapatoSizePreview extends StatelessWidget {
  final bool fullScreen;

  const ZapatoSizePreview({
    this.fullScreen = false
    });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: (this.fullScreen) ? 5 : 30, 
        vertical: (this.fullScreen) ? 5: 0
      ),
      child: Container(
        width: double.infinity,
        height: (this.fullScreen) ? 490 : 460,
        decoration: BoxDecoration(
          color: Color(0xffFFCF53),
          borderRadius: (!this.fullScreen) 
            ? BorderRadius.circular(50)
            : BorderRadius.only(bottomLeft: Radius.circular(50),
                                bottomRight: Radius.circular(50),
                                topLeft: Radius.circular(40),
                                topRight: Radius.circular(40))
        ),
        child: Column(
          children: [
            // TODO Zapato con sombra
            _ZapatoConSombra(),

            // TODO Tallas
            if(!this.fullScreen)
              _ZapatoTallas()
          ],
        ),
      ),
    );
  }
}

class _ZapatoTallas extends StatelessWidget {
  const _ZapatoTallas({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _TallaZapatoCaja(7),
          _TallaZapatoCaja(7.5),
          _TallaZapatoCaja(8),
          _TallaZapatoCaja(8.5),
          _TallaZapatoCaja(9),
          _TallaZapatoCaja(9.5),
        ],
      ),
    );
  }
}

class _TallaZapatoCaja extends StatelessWidget {
  
  final double numero;

  const _TallaZapatoCaja(this.numero);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text('${numero.toString().replaceAll('.0', '')}',
        style: TextStyle(
          color: (this.numero == 9) ? Colors.white : Color(0xffF1A23A),
          fontSize: 16,
          fontWeight: FontWeight.bold
        ),
      ),
      width: 45,
      height: 45,
      decoration: BoxDecoration(
        color: (this.numero == 9) ? Color(0xffF1A23A) :Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          // TODO BoxShadow Select
          if(this.numero == 9)
            BoxShadow(color: Color(0xffF1A23A), blurRadius: 10, offset: Offset(0,5))
        ]
      ),
    );
  }
}

class _ZapatoConSombra extends StatelessWidget {
  const _ZapatoConSombra({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(50),
      child: Stack(
        children: [
          Positioned(
            bottom: 20,
            right: 0,
            child: _ZapatoSombra()
          ),
          Image(image: AssetImage('assets/imgs/azul.png'),)
        ],
      ),
    );
  }
}

class _ZapatoSombra extends StatelessWidget {
  const _ZapatoSombra({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -0.5,
      child: Container(
        width: 230,
        height: 120,
        decoration: BoxDecoration(
          // color: Colors.red,
          borderRadius: BorderRadius.circular(100),
          boxShadow: [
            BoxShadow(color: Color(0xffEAA14E), blurRadius: 40)
          ]
        ),
      ),
    );
  }
}