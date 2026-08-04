import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/models/model_to_domain/model_to_domain.dart';
import 'package:flutter_tdd/features/user/blog/data/data_sources/blog_data_sources.dart';
import 'package:flutter_tdd/features/user/blog/domain/models/blog.dart';
import 'package:flutter_tdd/features/user/blog/domain/repository/blog_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: BlogRepository)
class ImplBlogRepository extends BlogRepository with ModelToDomain {
  var dataSources = getIt<BlogDataSources>();
  @override
  Future<Either<Failure, List<Blog>>> getBlogs(bool param) async {
    var result = await dataSources.getBlogs(param);
    return toDomainResultList(result);
  }
}
