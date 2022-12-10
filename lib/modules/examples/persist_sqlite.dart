import 'package:flutter/material.dart';
import 'package:flutter_notes/database/database.dart';
import 'package:flutter_notes/models/planet.dart';

class PersistSqlitePage extends StatefulWidget {
  const PersistSqlitePage({super.key});

  @override
  State<PersistSqlitePage> createState() => _PersistSqlitePageState();
}

class _PersistSqlitePageState extends State<PersistSqlitePage> {
  late ProjectDatabase handler;

  Future<int> addPlanets() async{
    Planet firstPlanet = Planet(
      id: 1234,
      name: 'Mercury',
      age: 24,
    );

    Planet secondPlanet = Planet(
      id: 223,
      name: 'Earth',
      age: 53
    );

    List<Planet> planets  = [firstPlanet, secondPlanet ];
    return await handler.insert(planets);
  }

  @override
  void initState(){
    super.initState();
    handler = ProjectDatabase();
    handler.init().whenComplete(() async{
      await addPlanets();
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Persist with Sqlite')),

      body: FutureBuilder(
        future: handler.retrievePlanets(),
        builder: (BuildContext context, AsyncSnapshot<List<Planet>> snapshot){

          if(snapshot.hasData){
            return ListView.builder(
              itemCount: snapshot.data?.length,
              itemBuilder: (BuildContext context, int index){
                return Card(
                  child: ListTile(
                    contentPadding: const EdgeInsets.all(8.0),
                    title: Text(snapshot.data![index].name),
                    subtitle: Text(snapshot.data![index].age.toString()),
                  )
                );
              },
            );
          }else{
            return const Center(child: CircularProgressIndicator());
          }

        }
      )
    );
  }
}