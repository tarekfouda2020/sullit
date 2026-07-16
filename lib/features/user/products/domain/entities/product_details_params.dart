class ProductDetailsParams {
  final int id;
  final bool refresh;
  final int? branchId;

  ProductDetailsParams({
    required this.id,
    this.refresh = true,
    this.branchId,
  });


  Map<String,dynamic> toJson() =>{
    if(branchId!= null) "branch_id" : branchId,
  };

  String paramToQuery() {
    var query = "/$id";
    if (branchId != null) {
      query = "$query?branch_id=$branchId";
    }
    return query;
  }
}
