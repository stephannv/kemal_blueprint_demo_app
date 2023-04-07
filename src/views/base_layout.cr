class Views::BaseLayout
  include Blueprint::HTML

  def blueprint(&)
    doctype

    html lang: "en" do
      head do
        title { "Kemal + Blueprint" }
        meta name: "charset", value: "utf-8"

        link rel: "stylesheet", href: "application.css"
      end

      body do
        yield
      end
    end
  end
end
