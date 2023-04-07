require "./**"
require "blueprint/html/component_registrar"

module Views::Components::Helpers
  include Blueprint::HTML::ComponentRegistrar

  register_component :my_text_field, Views::Components::TextFieldComponent, block: false
  register_component :my_button, Views::Components::ButtonComponent, block: :optional
  register_component :my_page, Views::Components::PageComponent, block: :optional
  register_component :my_label, Views::Components::LabelComponent, block: :optional
  register_component :my_textarea, Views::Components::TextareaComponent, block: :optional
end
