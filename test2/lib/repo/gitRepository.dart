
import 'package:test2/helpers/apiHelper.dart';

class GitRepository {
  ApiHelper _helper = ApiHelper();

  Future fetchUsers(String q) async {
    final response = await _helper.get("https://api.github.com/search/users?q=$q");
    return response;
  }


}
