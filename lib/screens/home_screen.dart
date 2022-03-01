import 'package:determine_name/models/determine_name_model.dart';
import 'package:determine_name/service/api_services.dart';
import 'package:determine_name/theme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController textEditingController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final ApiServices _apiServices = ApiServices();
  var fetchApi;
  FocusNode? focusNode;
  DetermineNameModel? fields;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      drawer: const Drawer(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        iconTheme: iconThemeData(),
        title: Text(
          "Name Determiner",
          style: Theme.of(context).textTheme.headline6!.copyWith(
                color: Colors.teal,
                fontSize: 20,
              ),
        ),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Spacer(flex: 5),
              formField(),
              const Spacer(
                flex: 4,
              ),
              showDataFromApi(),
              const Spacer(
                flex: 5,
              ),
              customButton(context),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }

  TextFormField formField() {
    return TextFormField(
              focusNode: focusNode,
              controller: textEditingController,
              validator: (v) {
                if (v!.isEmpty) return "Please Enter Your Name !";
                return null;
              },
              decoration: InputDecoration(
                hintText: "Your name ....",
                labelText: "Name",
                labelStyle: const TextStyle(color: Colors.teal),
                suffixIcon: IconButton(
                  icon: const Icon(Icons.delete_outline_outlined,
                      size: 25, color: Colors.teal),
                  onPressed: () {
                    setState(() {
                      textEditingController.clear();
                    });
                  },
                ),
              ),
            );
  }

  ElevatedButton customButton(BuildContext context) {
    return ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.white.withOpacity(0.8),
                shadowColor: Colors.grey.withOpacity(0.5),
                elevation: 10,
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text(
                "Generate Name",
                style: Theme.of(context).textTheme.headline6,
              ),
              onPressed: () async {
                if (_formKey.currentState!.validate()) {
                  fetchApi = _apiServices.determineNamesfromApi(
                      name: textEditingController.text.trim());
                  FocusScope.of(context).requestFocus(FocusNode());
                  textEditingController.clear();
                  setState(() {});
                }
              },
            );
  }

  FutureBuilder<DetermineNameModel?> showDataFromApi() {
    return FutureBuilder<DetermineNameModel?>(
              future: fetchApi,
              builder: (context, AsyncSnapshot snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  DetermineNameModel fields = snapshot.data;
                  //fields.gender == null ?  :
                  if (fields.gender == null) {
                    return Center(
                      child: Text(
                        "Sorry, I can not find\nThis name",
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.headline6!.copyWith(color: Colors.red),
                      ),
                    );
                  } else {
                    return Card(
                        shadowColor: Colors.grey.withOpacity(0.5),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        elevation: 15,
                        child: ListTile(
                          title: Text("${fields.name}"),
                          subtitle: Text("${fields.gender}"),
                          trailing: Text("${fields.probability! * 100}%"),
                          leading: fields.gender == "male"
                              ? const Icon(
                                  Icons.male,
                                  color: Colors.indigo,
                                  size: 25,
                                )
                              : const Icon(
                                  Icons.female,
                                  color: Colors.red,
                                  size: 25,
                                ),
                        ),
                    );
                  }
                } else if (snapshot.connectionState ==
                    ConnectionState.waiting) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
                return const SizedBox();
              },
            );
  }
}


// Show data from Model
/*
fields == null ? const SizedBox() : Card(
                shadowColor: Colors.grey.withOpacity(0.5),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                elevation: 15,
                child: ListTile(
                  title: Text("${fields!.name}"),
                  subtitle: Text("${fields!.gender}"),
                  trailing: Text("${fields!.probability}"),
                  leading: fields!.gender == "male"
                      ? const Icon(
                          Icons.male,
                          color: Colors.indigo,
                          size: 25,
                        )
                      : const Icon(
                          Icons.female,
                          color: Colors.red,
                          size: 25,
                        ),
                ),
              ), */