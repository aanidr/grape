module Factory
  module Entities
    class Component < Grape::Entity
      expose :code
      expose :price 
    end
  end
end
