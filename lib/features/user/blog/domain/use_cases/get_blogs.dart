import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/blog/domain/models/blog.dart';
import 'package:flutter_tdd/features/user/blog/domain/repository/blog_repository.dart';

class GetBlogs implements UseCase<List<Blog>, bool> {
  @override
  Future<List<Blog>> call(bool param) async {
    var result = await getIt<BlogRepository>().getBlogs(param);
    return result.fold(
      (l) => [],
      (r) => r,
    );
  }
}
