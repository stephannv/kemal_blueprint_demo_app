require "./components/base_component"
require "./components/button_component"
require "./components/label_component"
require "./components/page_component"
require "./components/text_field_component"
require "./components/textarea_component"

class Views::BasePage
  include Blueprint::HTML

  def around_render(&)
    render(Views::BaseLayout.new) { yield }
  end
end
