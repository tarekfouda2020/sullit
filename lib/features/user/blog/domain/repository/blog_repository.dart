import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/features/user/blog/domain/models/blog.dart';

abstract class BlogRepository {
  Future<Either<Failure, List<Blog>>> getBlogs(bool param);
}
