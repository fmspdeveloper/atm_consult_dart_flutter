import 'package:flutter/material.dart';

class paginaServicos extends StatefulWidget {
  const paginaServicos({super.key});

  @override
  State<paginaServicos> createState() => _paginaServicosState();
}

class _paginaServicosState extends State<paginaServicos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Trabalhos"),
        ),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Container(
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset("images/detalhe_servico.png"),
                    Text(
                      "Nossos trabalhos",
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
        ));;
  }
}
