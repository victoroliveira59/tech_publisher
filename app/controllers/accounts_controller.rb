# frozen_string_literal: true

class AccountsController < ApplicationController
  before_action :set_supplier
  before_action :set_account, only: %i[show edit update destroy]

  def index; end

  # GET /accounts/1 or /accounts/1.json
  def show; end

  # GET /accounts/new
  def new
    @supplier = Supplier.find(params[:supplier_id])
    @account = @supplier.build_account
  end

  # GET /accounts/1/edit
  def edit; end

  def create
    # POST /accounts or /accounts.js
    @account = @supplier.build_account(account_params)

    if @account.save
      redirect_to supplier_account_path(supplier_id: @supplier.id, id: @account.id), notice: 'Account was successfully created.'
    else
      render :new, status: :unprocessable_entity

    end
  end

  # PATCH/PUT /accounts/1 or /accounts/1.json
  def update
    if @account.update(account_params)
      redirect_to supplier_account_path(@account), notice: 'Account was successfully updated.'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /accounts/1 or /accounts/1.json
  def destroy
    @account.destroy
      redirect_to suppliers_url, notice: 'Account was successfully destroyed.'
  end

  private
  def set_supplier
    @supplier = Supplier.find(params[:supplier_id])
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_account
    @account = @supplier.account
  end

  # Only allow a list of trusted parameters through.
  def account_params
    params.require(:account).permit(:bank, :number)
  end
end
