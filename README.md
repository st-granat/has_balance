has_balance
===========

Useful balance methods for Rails User model

## Install

Install gem:

    gem "has_balance"

Migration:

    create_table :users do |t|
      ...
      t.decimal :balance, :precision => 10, :scale => 4, :null => false, :default => 0
      ...

user.rb:

    has_balance
