require "kemal"
require "blueprint/html"

require "./views/**"

def render_page(page : Views::BasePage)
  page.to_html
end

get "/" do
  render_page Views::Home::IndexPage.new(current_time: Time.utc)
end

get "/contact" do
  render_page Views::Contacts::IndexPage.new
end

Kemal.run
