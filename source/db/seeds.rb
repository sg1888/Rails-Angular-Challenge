# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

## User seed data
users_data = [
  {
    first_name: 'Billy',
    last_name: 'Ocean',
    email: 'billy@test.com',
    password: 'test1234'
  },
  {
    first_name: 'Chris',
    last_name: 'Hughes',
    email: 'chrish@test.com',
    password: 'test1234'
  },{
    first_name: 'Billy',
    last_name: 'Walsh',
    email: 'hector@test.com',
    password: 'test1234'
  },
  {
    first_name: 'Ryan',
    last_name: 'Smith',
    email: 'ryan@test.com',
    password: 'test1234'
  }
]

customers = Customer.create!(users_data)
#Transaction seed data
transactions_data = []

### Success transactions
# For customer 1
5.times do
  transactions_data << {
    created: rand(1389618241..1454075903),
    paid: true,
    amount: rand(4000..10000),
    currency: CURRENCIES[:usd],
    refunded: false,
    customer: customers.first,
    disputed: false
  }
end

# For customer 2
3.times do
  transactions_data << {
    created: rand(1389618241..1454075903),
    paid: true,
    amount: rand(4000..10000),
    currency: CURRENCIES[:usd],
    refunded: false,
    customer: customers[1],
    disputed: false
  }
end

transactions_data << {
  created: rand(1389618241..1454075903),
  paid: true,
  amount: rand(4000..10000),
  currency: CURRENCIES[:usd],
  refunded: false,
  customer: customers[2],
  disputed: false
}

transactions_data << {
  created: rand(1389618241..1454075903),
  paid: true,
  amount: rand(4000..10000),
  currency: CURRENCIES[:usd],
  refunded: false,
  customer: customers[3],
  disputed: false
}


### Failed transactions
# For customer 3
3.times do
  transactions_data << {
    created: rand(1389618241..1454075903),
    paid: false,
    amount: rand(4000..10000),
    currency: CURRENCIES[:usd],
    refunded: false,
    customer: customers[2],
    disputed: false
  }
end

# For customer 4
2.times do
  transactions_data << {
    created: rand(1389618241..1454075903),
    paid: false,
    amount: rand(4000..10000),
    currency: CURRENCIES[:usd],
    refunded: false,
    customer: customers[3],
    disputed: false
  }
end


### Disputed transactions
# For customer 1
3.times do
  transactions_data << {
    created: rand(1389618241..1454075903),
    paid: true,
    amount: rand(4000..10000),
    currency: CURRENCIES[:usd],
    refunded: false,
    customer: customers.first,
    disputed: true
  }
end

# For customer 2
2.times do
  transactions_data << {
    created: rand(1389618241..1454075903),
    paid: true,
    amount: rand(4000..10000),
    currency: CURRENCIES[:usd],
    refunded: false,
    customer: customers[1],
    disputed: true
  }
end

Transaction.create! transactions_data
