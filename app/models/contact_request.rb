class ContactRequest < ActiveRecord::Base
  validates :name, :email, :message, presence: true

  def mark_as_read!
  end

  def formatted_message
    @html ||= begin
      renderer = Redcarpet::Markdown.new(Redcarpet::Render::HTML)
      renderer.render(message).html_safe
    end
  end
end
