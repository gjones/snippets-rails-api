class Api::V1::SnippetsController < ApiController
  before_action :set_snippet

  def show
  end

  private

  def set_snippet
    @snippet = Snippet.find(params[:id])
  end

end