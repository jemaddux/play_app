class ArticleDecorator < Draper::Decorator
  delegate_all

  def last_edited_on
    object.updated_at.strftime("%a %m/%d/%y")
  end
end
