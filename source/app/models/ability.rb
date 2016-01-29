class Ability
  include CanCan::Ability

  def initialize(customer)
    if customer.id == 1
      can :read, Transaction
    else
      can :read, Transaction, customer_id: customer.id
    end
  end
end
