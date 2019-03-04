module Factory
  class Base < Grape::API
    mount Factory::V1::Products
  end
end
