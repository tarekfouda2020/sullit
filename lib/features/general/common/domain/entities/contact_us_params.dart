class ContactUsParams {
  String name;
  String email;
  String phone;
  String message;
  String title;

  ContactUsParams(
      {required this.name,
      required this.email,
      required this.message,
      required this.title,
      required this.phone});

  Map<String, dynamic> toJson() => {
        "name": name,
        "email": email,
        "phone": phone,
        "title": title,
        "message": message,
      };

  // ignore: avoid_dynamic_calls
  void isSuccess(dynamic data) => data["key"] == "success";
}
