require 'rails_helper'
require 'spec_helper'

feature "Transactions", js: true do
  scenario "show all transactions for user 1" do
    Rails.application.load_seed
    customer1 = Customer.first
    login_as customer1
    visit transactions_path
    ['Failed Charges', 'Disputed Charges', 'Sucess Charges'].each do |list|
      expect(page).to have_content list
    end
    expect(page).to have_css('table.success-charged-table tbody tr', count: 10)
    expect(page).to have_css('table.failed-charged-table tbody tr', count: 5)
  end
end
