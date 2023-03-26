require "./base_component"

class Views::Components::TextFieldComponent < Views::Components::BaseComponent
  DEFAULT_CLASSES = "block w-full p-4 text-sm text-gray-900 bg-gray-50 rounded-lg border border-gray-300 shadow-sm focus:ring-primary-500 focus:border-primary-500 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-primary-500 dark:focus:border-primary-500 dark:shadow-sm-light"

  def initialize(
    @type : String = "text",
    @id : String? = nil,
    @required : Bool = false,
    @placeholder : String? = nil
  )
  end

  def blueprint
    input(
      class: DEFAULT_CLASSES,
      id: @id,
      type: @type,
      required: @required,
      placeholder: @placeholder
    )
  end
end
