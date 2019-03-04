module Factory
  module Entities
    class Product < Grape::Entity
      expose :code
      expose :price
      expose :production_time
      expose :components, using: Factory::Entities::Component
    end
  end
end
