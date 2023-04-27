/// Interface segregation
///
/// this interface breaks interface segregation principle

abstract class PaymentBase {
  void paypalPayment();
  void printPaypalInvoice();

  void bankTransferPayment();
  void printBankInvoice();

  void creditCardPayment();
  void printCreditCardInvoice();
}
