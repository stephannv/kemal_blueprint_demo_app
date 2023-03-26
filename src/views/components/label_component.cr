require "./base_component"

class Views::Components::LabelComponent < Views::Components::BaseComponent
  def initialize(@for : String? = nil); end

  def blueprint(&)
    label for: @for, class: "block p-2 text-sm font-medium text-gray-900 dark:text-gray-300" do
      yield
    end
  end
end
