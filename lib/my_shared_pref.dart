import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesExample extends StatefulWidget {

  const SharedPreferencesExample({
    super.key
  });

  @override
  State<SharedPreferencesExample> createState() => _SharedPreferencesExampleState();
}

class _SharedPreferencesExampleState extends State<SharedPreferencesExample> {

  final String _title = "Shared Preferences FAUVETTE Killian";
  final String _myPreference = "myPreference";
  TextEditingController prefEditingController = TextEditingController();
  TextEditingController displayPrefController = TextEditingController();

  String myPreference = "SN2";

  @override
  void initState() {
    getMyPreference();
    super.initState();

  }

  @override
  void dispose() {
    prefEditingController.dispose();
    displayPrefController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    TextStyle? textStyle = Theme.of(context).textTheme.headlineLarge;

    return Scaffold(
      appBar: AppBar(
        title: Text(_title, style: textStyle,),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8, bottom: 10, top: 300),
        child: Column(
          children: <Widget>[
            _getText(prefEditingController, "Entrer une phrase...", false),
            const SizedBox(height: 50,),
            _getText(displayPrefController, "Aucune préférence enregistrée", true)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.yellow[100],
        onPressed: () {
          saveMyPref(pref: prefEditingController.text);
        },
        child: const Icon(Icons.add),
      ),
    );

  }

  Widget _getText(TextEditingController tfController, String placeHolder, bool isReadOnly) {
    return TextField(
      controller: tfController,
      autofocus: false,
      readOnly: isReadOnly,
      style: Theme.of(context).textTheme.headlineMedium,
      decoration: InputDecoration(
        filled: true,
        border: InputBorder.none,
        fillColor: Colors.yellow,
        hintText: placeHolder,
        contentPadding:
        const EdgeInsets.only(left: 8.0, bottom: 2.0, top: 4.0),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.red),
          borderRadius: BorderRadius.circular(20.0),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: const BorderSide(),
          borderRadius: BorderRadius.circular(25),
        ),
      ),
    );
  }

  void saveMyPref({required String pref}) async {

    // SharedPreferences.setMockInitialValues({});  // obligatoire sinon getInstance() ne fonctionne pas (problème de version)
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(_myPreference, pref);
    setState(() {
      displayPrefController.text = pref;
    });
  }

  void getMyPreference() async {
    // SharedPreferences.setMockInitialValues({});  // obligatoire sinon getInstance() ne fonctionne pas (problème de version)
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    String? mypref = prefs.getString(_myPreference);

    if (mypref != null ) {
      myPreference = mypref;
      setState(() {
        displayPrefController.text = myPreference;
      });
    }
  }
}