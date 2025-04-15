require "../base_page"

class Views::Contacts::IndexPage < Views::BasePage
  def blueprint
    render Views::Components::PageComponent.new do |page|
      page.title { "Contact Us" }
      page.subtitle do
        "Got a technical issue? Want to send feedback about a beta feature? Need details about our Business plan? Let us know."
      end

      page.body do
        form action: "#", class: "space-y-8" do
          div do
            render Views::Components::LabelComponent.new(for: "email") do
              "Your email"
            end
            render Views::Components::TextFieldComponent.new(type: "email", placeholder: "name@blueprint.com", required: true)
          end

          div do
            render Views::Components::LabelComponent.new(for: "subject") do
              "Subject"
            end
            render Views::Components::TextFieldComponent.new(type: "text", placeholder: "Let us know how we can help you", required: true)
          end

          div class: "sm:col-span-2" do
            render Views::Components::LabelComponent.new(for: "message") do
              "Your message"
            end
            render Views::Components::TextareaComponent.new(id: "message", rows: "6", placeholder: "Leave a comment...") do
              ""
            end
          end

          render Views::Components::ButtonComponent.new(type: "submit") do
            "Send message"
          end
        end
      end
    end
  end
end
