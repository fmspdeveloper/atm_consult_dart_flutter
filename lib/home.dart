import 'package:atm_consult/contact.dart';
import 'package:atm_consult/customer.dart';
import 'package:atm_consult/info.dart';
import 'package:atm_consult/jobs.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _navegarEmpresa() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => sobreEmpresa()));
  }

  void _navegarServico() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => paginaServicos()));
  }

  void _navegarclientes() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => paginaClientes()));
  }

  void _navegarContato() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => paginaContato()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ATM Consultoria"),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("images/logo.png"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: _navegarEmpresa,
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Image.asset("images/menu_empresa.png"),
                  ),
                ),
                GestureDetector(
                  onTap: _navegarServico,
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Image.asset("images/menu_servico.png"),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: _navegarclientes,
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Image.asset("images/menu_cliente.png"),
                  ),
                ),
                GestureDetector(
                  onTap: _navegarContato,
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Image.asset("images/menu_contato.png"),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
