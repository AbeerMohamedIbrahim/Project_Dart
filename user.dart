class User {
  String _cardNumber;
  String _password;
  double _balance;

  User(this._cardNumber, this._password, this._balance);

  String get cardNumber => _cardNumber;

  double get balance => _balance;

  set balance(double value) {
    if (value >= 0) {
      _balance = value;
    } else {
      print("Invalid balance value.");
    }
  }

  bool validatePassword(String input) => input == _password;

  void deposit(double amount) {
    _balance += amount;
    print("Deposit successful.");
  }

  void withdraw(double amount) {
    if (amount <= _balance) {
      _balance -= amount;
      print("✅ Withdrawal successful.");
    } else {
      print("❌ Insufficient balance.");
    }
  }

  void showBalance() {
    print("💰 Current Balance: $_balance EGP");
  }
}
