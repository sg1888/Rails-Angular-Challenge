class Transaction < ActiveRecord::Base
  belongs_to :customer
  def as_json (options = {})
    super(options).merge(customer: self.customer.as_json(methods: :full_name))
  end
end
