import 'package:ft_project/common/httpRequest.dart';

class AccountApi {
  Future<Response> getInfo() {
    return Http.request('GET', '/sugrec?prod=pc_his&from=pc_web&json=1&sid=31728_1429_31670_21118_31069_31254_31763_31270_31464_30823&hisdata=%5B%7B%22time%22%3A1591081638%2C%22kw%22%3A%22sharedpreferences%20flutter%22%7D%2C%7B%22time%22%3A1591081645%2C%22kw%22%3A%22sharedpreferences%20package%22%7D%2C%7B%22time%22%3A1591081653%2C%22kw%22%3A%22sharedpreferences%22%7D%2C%7B%22time%22%3A1591081686%2C%22kw%22%3A%22shared_preferences%20flutter%22%7D%2C%7B%22time%22%3A1591081695%2C%22kw%22%3A%22shared_preferences%20package%22%7D%2C%7B%22time%22%3A1591081697%2C%22kw%22%3A%22shared_preferences%20packages%22%7D%2C%7B%22time%22%3A1591086514%2C%22kw%22%3A%22dio%20packages%22%7D%2C%7B%22time%22%3A1591088430%2C%22kw%22%3A%22%E8%8E%B7%E5%8F%96context%22%7D%2C%7B%22time%22%3A1591088433%2C%22kw%22%3A%22flutter%E8%8E%B7%E5%8F%96context%22%7D%2C%7B%22time%22%3A1591088942%2C%22kw%22%3A%22dwdw%22%7D%5D&req=2&bs=www&csor=0');
  }
}