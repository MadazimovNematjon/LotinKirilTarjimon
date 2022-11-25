import 'package:flutter/material.dart';
import 'kiril.dart';
import 'package:flutter/services.dart';
import 'package:share/share.dart';

class ListKiril extends StatefulWidget {
  const ListKiril({Key? key}) : super(key: key);

  @override
  State<ListKiril> createState() => _ListKirilState();
}

class _ListKirilState extends State<ListKiril> {

  TextEditingController firstNameController = TextEditingController();
  TextEditingController outText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    _pest() async {
      final data = await Clipboard.getData('text/plain');
      if (data != null) {
        setState(() {
          firstNameController.text = data.text ?? '';
        });
      }
    }
    ///flutter

    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(10),
          child: Form(
            child: TextFormField(
              //cursorColor: Colors.green[700],
              controller: firstNameController,
              decoration: InputDecoration(
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.green),),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.green),),
                labelText: 'Kiril',
                labelStyle: const TextStyle(fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.green),
                suffixIcon: IconButton(
                  onPressed: _pest,
                  icon: const Icon(Icons.paste, color: Colors.green,),
                ),
              ),
              maxLines: 5,
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(
              height: 60,
              // ignore: deprecated_member_use
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    outText.text = KirilLotin(firstNameController.text);
                  });
                },
                style:  ButtonStyle(
                  // elevation:MaterialStateProperty.all<double>(10.0),
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.green.shade700),
                  shape: const MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20),
                      ),
                    ),
                  ),
                ), child: const Text("Tarjima",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Color.fromRGBO(255, 255, 250, 300),
                ),
              ),
              ),

            ),
          ],
        ),
      Padding(
        padding: const EdgeInsets.all(10),
        child: Form(
          child: TextFormField(
            controller: outText,
            decoration: InputDecoration(
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.green),),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.green),),
              labelText: 'Lotin',
              labelStyle: const TextStyle(fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.green),
              suffixIcon: IconButton(
                onPressed: () {
                  Share.share(outText.text);
                },
                icon: const Icon(Icons.share, color: Colors.green),
              ),
            ),
            maxLines: 5,
          ),
        ),
      ),
      ],
    );
  }
}

// color: Color.fromRGBO(255, 255, 250, 300),
