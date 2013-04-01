# coding: utf-8
module HasBalance
  class Engine < ::Rails::Engine
    isolate_namespace HasBalance
    engine_name "has_balance"

    initializer "has_balance.includers" do |app|
      ActiveRecord::Base.send :include, HasBalance::Model
    end
  end
end
