require 'pry'
class Transfer
  
  attr_accessor :sender, :receiver, :status, :amount
  
  def initialize(sender, receiver, status = 'pending', amount)
    @sender = sender
    @receiver = receiver
    @status = status
    @amount = amount
  end 
  
  def valid?
    if self.sender.valid? && self.receiver.valid?
      true
    else
      false 
    end 
    #binding.pry  
  end
  
  def execute_transaction
    
  end 
end
