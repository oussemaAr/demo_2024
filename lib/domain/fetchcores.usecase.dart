import 'package:demo_app/data/cores.repository.dart';
import 'package:demo_app/domain/cores.model.dart';

class FetchCoresUseCase {

  Future<List<CoresDomainModel>> fetchCores() async  {

    final coresRepository = new CoresRepository();
    final result = await coresRepository.fetchCores();

    return result.map((e) => CoresDomainModel(e.details ?? '')).toList();

  }

}