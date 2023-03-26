class Views::Contact::IndexPage < Views::BasePage
  def blueprint
    base_layout do
      my_page do |page|
        page.title { "Contact Us" }
        page.subtitle do
          "Got a technical issue? Want to send feedback about a beta feature? Need details about our Business plan? Let us know."
        end

        page.body do
          form action: "#", class: "space-y-8" do
            div do
              my_label(for: "email") { "Your email" }
              my_text_field type: "email", placeholder: "name@blueprint.com", required: true
            end

            div do
              my_label(for: "subject") { "Subject" }
              my_text_field type: "text", placeholder: "Let us know how we can help you", required: true
            end

            div class: "sm:col-span-2" do
              my_label(for: "message") { "Your message" }
              my_textarea id: "message", rows: "6", placeholder: "Leave a comment..."
            end

            my_button(type: "submit") { "Send message" }
          end
        end
      end
    end
  end
end
