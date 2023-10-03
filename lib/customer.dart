import 'package:flutter/material.dart';

class paginaClientes extends StatefulWidget {
  const paginaClientes({super.key});

  @override
  State<paginaClientes> createState() => _paginaClientesState();
}

class _paginaClientesState extends State<paginaClientes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Clientes"),
        ),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Container(
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset("images/detalhe_cliente.png"),
                    Text(
                      "Nossos Clientes",
                      style: TextStyle(fontSize: 20, color: Colors.red),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset("images/cliente1.png"),
                      Image.asset("images/cliente2.png"),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
    ;
  }
}
