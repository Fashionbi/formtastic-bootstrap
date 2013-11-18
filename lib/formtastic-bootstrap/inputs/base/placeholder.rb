module FormtasticBootstrap
  module Inputs
    module Base
      module Placeholder
        include Formtastic::Inputs::Base::Placeholder

        def placeholder_text
          options[:placeholder].presence || nil
        end
      end
    end
  end
end
