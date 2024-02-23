import 'package:demo_app/data/cores.model.dart';
import 'package:demo_app/data/cores.service.dart';

class CoresRepository {
  Future<List<CoresModel>> fetchCores() async {
    final service = new CoresService();
    final response = await service.fetchCores();
    List<CoresModel> newList = List.empty(growable: true);

    if (response.statusCode == 200) {
      for (final item in response.data) 
        newList.add(parseData(item));
    } 
    return newList;
  }
  
   parseData(item) {
    final newitem = CoresModel.fromJson(item);
    return newitem;
  }
}
