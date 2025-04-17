require "../base_page"

class Views::Home::IndexPage < Views::BasePage
  def initialize(@current_time : Time); end

  def blueprint
    render Views::Components::PageComponent.new do |page|
      page.title { "Blueprint + Kemal" }
      page.subtitle do
        plain "This is a POC showing how to integrate Blueprint and Kemal"
        div class: "flex flex-col gap-6 p-2 text-center items-center justify-center" do
          div do
            a(
              class: "font-medium text-blue-600 dark:text-blue-500 hover:underline",
              href: "https://github.com/stephannv/blueprint",
              target: "_blank"
            ) { "Blueprint" }
          end

          div do
            a(
              class: "font-medium text-blue-600 dark:text-blue-500 hover:underline",
              href: "https://kemalcr.com/",
              target: "_blank"
            ) { "Kemal" }
          end
        end
      end

      page.body do
        section class: "bg-white dark:bg-gray-900" do
          div class: "py-4 px-4 mx-auto max-w-screen-xl lg:py-16 lg:px-6" do
            div class: "mx-auto max-w-screen-sm text-center mb-8 lg:mb-16" do
              h2(class: "mb-4 text-4xl tracking-tight font-extrabold text-gray-900 dark:text-white") { @current_time }
              p(class: "font-light text-gray-500 lg:mb-16 sm:text-xl dark:text-gray-400") { "Drink water" }
              a(href: "/contact", class: "font-medium text-blue-600 dark:text-blue-500 hover:underline") { "Try another page: Contact Form" }
            end
          end
        end
      end
    end
  end
end
