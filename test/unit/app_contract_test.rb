require 'test_helper'

class AppContractTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end

# == Schema Information
#
# Table name: app_contracts
#
#  id          :integer         not null, primary key
#  num         :string(255)
#  stamp       :date
#  supplier_id :integer
#  start_date  :date
#  finish_date :date
#  created_at  :datetime
#  updated_at  :datetime
#

