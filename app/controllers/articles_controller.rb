class ArticlesController < ApplicationController
  include GenericController
  before_action :set_article, only: [:show, :edit, :update, :destroy]
  decorates_assigned :articles, :article

  # DELETE /articles/1
  # DELETE /articles/1.json
  def destroy
    @article.destroy
    respond_to do |format|
      format.html { redirect_to articles_url, notice: 'Article was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_article
      @article = Article.find(params[:id])
    end
end
