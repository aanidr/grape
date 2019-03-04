module Factory
  class Base < Grape::API
    mount Factory::V1::Products
    add_swagger_documentation
  end
end
