module API
  class TransactionsController < API::BaseAPIController
    # POST /transactions
    def create
      mob_transactions_params
    end

    def mob_transactions_params
      params['_json']
    end
  end
end