class Api::AccountsController < ApplicationController
  before_action :set_supplier
  before_action :set_account, only: %i[show edit update destroy]

  def index
    # Implementar a lógica para listar contas, se necessário
  end

  # GET /api/v1/suppliers/:supplier_id/accounts/:id
  def show
    render json: @account
  end

  # POST /api/v1/suppliers/:supplier_id/accounts
  def create
    @account = @supplier.build_account(account_params)

    if @account.save
      render json: @account, status: :created
    else
      render json: @account.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/suppliers/:supplier_id/accounts/:id
  def update
    if @account.update(account_params)
      render json: @account, status: :ok
    else
      render json: @account.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/suppliers/:supplier_id/accounts/:id
  def destroy
    @account.destroy
    head :no_content
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
    params.require(:account).permit(:bank, :number, :digit)
  end
end
