class AppBatch < ActiveRecord::Base
  attr_accessible :batch_date

  def weight_sum
    @app_incomes = AppIncome.where(:batch_id => self.id).sum(:weight_brutto)
  end
end
