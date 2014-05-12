module FormtasticBootstrap
  module Inputs
    module Base
      module Html

        include Formtastic::Inputs::Base::Html

        def form_control_input_html_options
          orig_class = input_html_options[:class]
          new_class = [orig_class, "form-control"].compact.join(" ")
          input_html_options.merge(:class => new_class)
        end

        def input_html_options
          result = {
            :class => "form-control"
          }
          
          result[:validate] = options[:validate] if options[:validate]

          result.merge(super)
        end

      end
    end
  end
end
