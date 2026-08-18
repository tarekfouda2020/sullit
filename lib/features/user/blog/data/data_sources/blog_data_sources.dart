import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/features/user/blog/data/models/blog_model/blog_model.dart';

abstract class BlogDataSources {
  Future<Either<Failure, List<BlogModel>>> getBlogs(bool param);
}
