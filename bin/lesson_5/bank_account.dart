class BankAccount {
  final String _accountNumber;
  double _balance;

  // Альтернативный способ объявления конструктора
  // BankAccount(balance) {
  //   this.balance = balance;
  // }

  // Конструктор
  BankAccount(this._accountNumber) : _balance = 0.0;

  // Именованный конструктор
  BankAccount.withInitialDeposit(this._accountNumber, double initialDeposit)
    : _balance = initialDeposit;

  // Метод для внесения средств
  void deposit(double amount) {
    _balance += amount;
  }

  // Метод для снятия средств
  void withdraw(double amount) {
    if (amount <= _balance) {
      _balance -= amount;
    } else {
      print('Not enough balance to withdraw $amount');
    }
  }

  // Метод для отображения информации о счете
  void displayInfo() {
    print('Account Number: $_accountNumber, Balance: $_balance');
  }
}
