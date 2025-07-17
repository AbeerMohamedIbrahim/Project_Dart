# 🏧 ATM Dart Project (OOP Implementation)

This project simulates a simple ATM using Dart and demonstrates key **Object-Oriented Programming (OOP)** concepts including:

---

## ✅ 1. Class
**Definition:** Blueprint for objects.

**Implemented in:**
```dart
class User { ... }
class ATM { ... }
class PremiumUser extends User { ... }
```

---

## ✅ 2. Object
**Definition:** Instance of a class.

**Implemented in:**
```dart
ATM atm = ATM();           // main.dart
User user = PremiumUser(...);  // atm.dart
```

---

## ✅ 3. Constructor
**Definition:** Initializes object properties.

**Implemented in:**
```dart
User(this._cardNumber, this._password, this._balance);  // user.dart
PremiumUser(...) : super(...);                         // premium_user.dart
```

---

## ✅ 4. Method
**Definition:** Class function.

**Implemented in:**
- `deposit()`, `withdraw()`, `validatePassword()`, `showBalance()` in `User` and `PremiumUser`
- `_insertCard()` and `_showMenu()` in `ATM`

---

## ✅ 5. Property
**Definition:** Class variable.

**Implemented as private fields:**
```dart
String _cardNumber;
String _password;
double _balance;           // user.dart
```

---

## ✅ 6. Encapsulation
**Definition:** Protect and control access to data.

**Implemented with private fields and getters/setters:**
```dart
double get balance => _balance;

set balance(double value) {
  if (value >= 0) _balance = value;
  else print("❌ Invalid balance value.");
}                         // user.dart
```

---

## ✅ 7. Inheritance
**Definition:** Code reuse via parent/child classes.

**Implemented in:**
```dart
class PremiumUser extends User {
  ...
}                         // premium_user.dart
```

---

## ✅ 8. Polymorphism
**Definition:** Different behaviors via method override.

**Implemented in:**
```dart
@override
void deposit(double amount) {
  double bonus = amount * 0.02;
  super.deposit(amount + bonus);
  print("💎 Premium bonus added: $bonus EGP");
}                         // premium_user.dart
```

---

## ✅ 9. Getter / Setter
**Definition:** Controlled property access.

**Implemented in:**
```dart
double get balance => _balance;

set balance(double value) {
  if (value >= 0) _balance = value;
  else print("❌ Invalid balance value.");
}                         // user.dart
```

---

## ✅ 10. Static Members
**Definition:** Shared class-level properties/methods.

**Implemented in:**
```dart
static String bankName = "Bank 404";  // atm.dart
```

---

## 🛠 Files Overview

| File             | Purpose                          |
|------------------|----------------------------------|
| `main.dart`       | Entry point of the application   |
| `atm.dart`        | Handles user interface and logic |
| `user.dart`       | Base user class                  |
| `premium_user.dart` | Inherits from `User` and overrides deposit |

---

## 📌 Run the Project

Make sure you have Dart SDK installed, then run:

```bash
dart run main.dart
```

---
