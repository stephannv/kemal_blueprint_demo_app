require "blueprint"

require "./components/helpers"

class Views::BasePage
  include Blueprint::HTML
  include Views::Components::Helpers

  def base_layout(&)
    render Views::BaseLayout.new do
      yield
    end
  end
end
