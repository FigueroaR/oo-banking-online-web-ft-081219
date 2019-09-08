require 'pry'
class BankAccount
  attr_accessor :name, :balance, :status
  
  def initialize(name,balance = 1000, status = 'open')
    @name = name
    @balance = balance
    @status = status 
    @name.freeze
    #binding.pry 
  end  
  
  def deposit(n)
    self.balance = balance +  n 
    #binding.pry 
  end 
  
  def display_balance
    "Your balance is $#{self.balance}." 
    #binding.pry
  end 
  
  def valid?
    if self.balance > 0 && status == 'open'
      true 
    else 
      false
    end 
  end 
  
  def close_account 
    self.status = "closed"
  end 
end
