import 'package:flutter/material.dart';
import '../model/films_model.dart';
import '../services/api_service.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late List<FilmsModel>? _userModel = [];
  @override
  void initState() {
    super.initState();
    _getData();
  }

  void _getData() async {
    _userModel = (await ApiService().getUsers())!.cast<FilmsModel>();
    Future.delayed(const Duration(seconds: 1)).then((value) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('jhgkjh'),
      ),
      body: _userModel == null || _userModel!.isEmpty
          ? const Center(
              child: CircularProgressIndicator(
                  backgroundColor: Color.fromARGB(255, 28, 26, 26)),
            )
          : ListView.builder(
              itemCount: _userModel!.length,
              itemBuilder: (context, index) {
                return Card(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          // Text(_userModel![index].id.toString()),
                          Text(_userModel![index].title),
                          Text(_userModel![index].director),
                        ],
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Image.network(_userModel![index].image)
                    ],
                  ),
                );
              },
            ),
    );
  }
}
