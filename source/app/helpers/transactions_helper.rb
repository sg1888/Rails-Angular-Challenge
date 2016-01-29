module TransactionsHelper
  def get_success_transaction transactions
    transactions.select { |transsaction| transsaction.paid && !transsaction.disputed }
  end

  def get_failed_transaction transactions
    transactions.select { |transsaction| !transsaction.paid }
  end

  def get_disputed_transaction transactions
    transactions.select { |trans| trans.disputed }
  end
end
