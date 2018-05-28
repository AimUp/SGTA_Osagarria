class TransactionsController < ApplicationController

  def index
    @transaction = Transaction.new
  end

  # POST /transactions
  def create
    #kontua = Account.find_by()
    if Transaction.last
      @transaction = Transaction.new(id: Transaction.last.id + 1, bidaltzaile_kontua: 10001, azalpena: params[:transaction][:azalpena], hartzaile_kontua: params[:transaction][:hartzaile_kontua], kopurua: params[:transaction][:kopurua])
    else
      @transaction = Transaction.new(id: 1, bidaltzaile_kontua: 10001, azalpena: params[:transaction][:azalpena], hartzaile_kontua: params[:transaction][:hartzaile_kontua], kopurua: params[:transaction][:kopurua])
    end
    
    if @transaction.valid?
    	if @transaction.save
    	   redirect_to @transaction
      end 
    else
      render :new
    end
  end
end
