# coding: utf-8
module HasBalance
  module Model
    def self.included(base)
      base.extend ClassMethods
    end

    module ClassMethods
      def has_balance
        before_validation :check_balance_value

        unless included_modules.include? InstanceMethods
          include InstanceMethods
        end
      end
    end

    module InstanceMethods
      def currency
        I18n.t("has_balance.currency")
      end

      def printable_balance
        "#{self.balance.to_s} #{self.currency}"
      end

      def give_money!(amount)
        sql = "update users set balance=#{self.balance + amount.to_f} where id='#{self.id}'"
        connection.update(sql)
      end

      def take_money!(amount)
        sql = "update users set balance=#{self.balance - amount.to_f} where id='#{self.id}'"
        connection.update(sql)
      end

      def check_balance_value
        if self.balance >= 1000000
          self.errors.add(I18n.t("has_balance.balance"), I18n.t("has_balance.cannot_be_million"))
        end
      end
    end
  end
end
