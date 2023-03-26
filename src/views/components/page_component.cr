require "./base_component"

class Views::Components::PageComponent < Views::Components::BaseComponent
  def blueprint(&)
    section class: "min-h-screen bg-white dark:bg-gray-900" do
      div class: "py-8 lg:py-16 px-4 mx-auto max-w-screen-md" do
        yield
      end
    end
  end

  def title(&)
    h2 class: "mb-4 text-4xl tracking-tight font-extrabold text-center text-gray-900 dark:text-white" do
      yield
    end
  end

  def subtitle(&)
    p class: "mb-8 lg:mb-16 font-light text-center text-gray-500 dark:text-gray-400 sm:text-xl" do
      yield
    end
  end

  def body(&)
    div class: "py-2" do
      yield
    end
  end
end
