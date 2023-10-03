import 'package:flutter/material.dart';

class sobreEmpresa extends StatefulWidget {
  const sobreEmpresa({super.key});

  @override
  State<sobreEmpresa> createState() => _sobreEmpresaState();
}

class _sobreEmpresaState extends State<sobreEmpresa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Empresa"),
        ),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Container(
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset("images/detalhe_empresa.png"),
                    Text(
                      "Sobre a empresa",
                      style: TextStyle(fontSize: 20, color: Colors.red),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                          "Texto TextoTexto TextoTexto TextoTextoTexto TextoTexto TextoTexto TextoTexto TextoTexto TextoTexto TextoTexto TextoTexto TextoTexto TextoTexto TextoTexto TextoTexto TextoTexto TextoTexto TextoTexto TextoTexto TextoTexto TextoTexto TextoTexto TextoTexto Texto")
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
