module API
  class FinanceManagerController < API::BaseAPIController
    # GET /finance_managers
    def all
      render json: FinanceManager.all.to_a
    end

    def mob_transactions_params
      params['_json']
    end
  end
end