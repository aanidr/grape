module Factory
  module V1
    class Products < Grape::API
      version 'v1', using: :path
      format :json

      resource :products do
        desc 'Return list of all products'
        get do
          present Product.all
        end

        desc 'Return single product'
        route_param :id do
          get do
            product = Product.find(params[:id])
            present product
          end
        end
      end
    end
  end
end
