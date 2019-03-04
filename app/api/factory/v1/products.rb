module Factory
  module V1
    class Products < Grape::API
      version 'v1', using: :path
      format :json

      resource :products do
        desc 'Return list of all products'
        get do
          products = Product.all
          present products, with: Factory::Entities::Product
        end

        desc 'Create new product'
        params do
          requires :code, type: String
          requires :price, type: Integer
          requires :production_time, type: Integer
        end
        post do
          Product.create(
            code: params[:code],
            price: params[:price],
            production_time: params[:production_time]
          )
        end

        route_param :id do
          desc 'Return single product'
          get do
            product = Product.find(params[:id])
            present product, with: Factory::Entities::Product
          end

          desc 'Update single product data'
          put do
            Product.find(params[:id])
              .update_attributes(
                price: params[:price],
                production_time: params[:production_time]
              )
          end

          desc 'Remove single product'
          delete do
            Product.find(params[:id]).destroy
          end
        end
      end
    end
  end
end
