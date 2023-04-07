require "./components/helpers"

class Views::BasePage
  include Blueprint::HTML
  include Views::Components::Helpers

  def envelope(&)
    render(Views::BaseLayout.new) { yield }
  end
end
