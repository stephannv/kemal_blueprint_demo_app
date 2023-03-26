require "./base_component"

class Views::Components::TextareaComponent < Views::Components::BaseComponent
  DEFAULT_CLASSES = "block p-2.5 w-full text-sm text-gray-900 bg-gray-50 rounded-lg shadow-sm border border-gray-300 focus:ring-primary-500 focus:border-primary-500 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-primary-500 dark:focus:border-primary-500"

  def initialize(
    @id : String? = nil,
    @rows : Int32 | String = 3,
    @placeholder : String? = nil
  )
  end

  def blueprint(&)
    textarea(class: DEFAULT_CLASSES, id: @id, rows: @rows, placeholder: @placeholder) do
      yield
    end
  end
end
