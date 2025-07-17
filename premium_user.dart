import 'user.dart';

class PremiumUser extends User {
  PremiumUser(String card, String pass, double bal)
      : super(card, pass, bal);

  @override
  void deposit(double amount) {
    double bonus = amount * 0.02;
    super.deposit(amount + bonus);
    print("Premium bonus added: $bonus EGP");
  }
}
