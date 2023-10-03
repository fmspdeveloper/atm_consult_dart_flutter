import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class paginaContato extends StatefulWidget {
  const paginaContato({super.key});

  @override
  State<paginaContato> createState() => _paginaContatoState();
}

class _paginaContatoState extends State<paginaContato> {
  final String phoneNumber = '+5511999999999';

  void _redirectWhats() async {
    final String _url = 'https://wa.me/$phoneNumber';
    final uri = Uri.parse(_url);
    if (await canLaunchUrl(uri)) {
      await canLaunchUrlString(uri as String);
    } else {
      throw 'Nao foi possivel abrir o link $uri';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Contato"),
        ),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Container(
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset("images/detalhe_contato.png"),
                    Text(
                      "Contato",
                      style: TextStyle(fontSize: 20, color: Colors.red),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                  child: Column(
                    //crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      ElevatedButton(
                          onPressed: _redirectWhats, child: Text("Whatsapp"))
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
