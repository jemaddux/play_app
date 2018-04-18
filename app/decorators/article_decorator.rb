class ArticleDecorator < Draper::Decorator
  delegate_all

  # Define presentation-specific methods here. Helpers are accessed through
  # `helpers` (aka `h`). You can override attributes, for example:

  def last_edited_on
    helpers.content_tag :span, class: 'time' do
      object.updated_at.strftime("%a %m/%d/%y")
    end
  end
end
