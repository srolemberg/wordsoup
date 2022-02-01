import 'package:http/http.dart';

abstract class RepositoryContract {
  Future<Response> fetchTime();
}

class Repository implements RepositoryContract {

  Client client;

  Repository(this.client);

  @override
  Future<Response> fetchTime() async {
    return client.get(
      Uri.parse(
        'https://worldtimeapi.org/api/timezone/America/Sao_Paulo',
      ),
    );
  }
}
