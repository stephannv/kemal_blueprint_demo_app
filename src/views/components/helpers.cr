require "./**"

module Views::Components::Helpers
  macro register_component_helper(helper_method, component)
    def {{helper_method.id}}(**args)
      render {{component}}.new(**args)
    end
  end

  macro register_component_helper_with_block(helper_method, component)
    def {{helper_method.id}}(**args, &block)
      render {{component}}.new(**args) do |component|
        yield component
      end
    end
  end

  macro register_component_helper_with_optional_block(helper_method, component)
    def {{helper_method.id}}(**args)
      render {{component}}.new(**args) do
        ""
      end
    end

    def {{helper_method.id}}(**args, &block)
      render {{component}}.new(**args) do |component|
        yield component
      end
    end
  end

  register_component_helper :my_text_field, Views::Components::TextFieldComponent

  register_component_helper_with_block :my_button, Views::Components::ButtonComponent
  register_component_helper_with_block :my_page, Views::Components::PageComponent
  register_component_helper_with_block :my_label, Views::Components::LabelComponent

  register_component_helper_with_optional_block :my_textarea, Views::Components::TextareaComponent
end
