class Views::Home::IndexPage < Views::BasePage
  def initialize(@current_time : Time); end

  def blueprint
    base_layout do
      section class: "min-h-screen bg-white dark:bg-gray-900" do
        div class: "py-8 px-4 mx-auto max-w-screen-xl lg:py-16 lg:px-6" do
          div class: "mx-auto max-w-screen-sm text-center mb-8 lg:mb-16" do
            h2(class: "mb-4 text-4xl tracking-tight font-extrabold text-gray-900 dark:text-white") { @current_time }
            p(class: "font-light text-gray-500 lg:mb-16 sm:text-xl dark:text-gray-400") { "Drink water" }
            a(href: "/contact", class: "font-medium text-blue-600 dark:text-blue-500 hover:underline") { "Contact us" }
          end
        end
      end
    end
  end
end
