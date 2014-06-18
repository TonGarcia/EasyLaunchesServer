# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'colorize'

# FinanceManager
puts 'FinanceManagers inserting'.colorize(:light_blue)
  zp = FinanceManager.find_or_create_by(name: 'ZeroPaper')
  puts "\t #{zp.name} - #{zp.to_s}".colorize(:light_green)
  ca = FinanceManager.find_or_create_by(name: 'ContaAzul')
  puts "\t #{ca.name} - #{ca.to_s}".colorize(:light_green)
puts 'FinanceManagers inserted'.colorize(:light_blue)
# /FinanceManager



# TransactionTypes
puts 'TransactionTypes inserting'.colorize(:light_blue)
  income = TransactionType.find_or_create_by(name: 'Income')
  puts "\t #{income.name} - #{income.to_s}".colorize(:light_green)
  expense = TransactionType.find_or_create_by(name: 'Expense')
  puts "\t #{expense.name} - #{expense.to_s}".colorize(:light_green)
puts 'TransactionTypes inserted'.colorize(:light_blue)
# /TransactionTypes
