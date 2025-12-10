class PhoneHelper {

  static String handlePhone(String phone) {
    if (phone.startsWith("0")) {
      return phone.substring(1);
    }
    return "0$phone";
  }

}