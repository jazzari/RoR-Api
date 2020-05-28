class ArticlesController < ApplicationController 

	def index
	  paginated = Article.recent.page(current_page).per(per_page)
	  options = PaginationMetaGenerator.new(request: request, total_pages: paginated.total_pages).call()
      render json: serializer.new(paginated, options)
	end

	def show
		render json: serializer.new(Article.find(params[:id]))
	end



  private

    def serializer
    	ArticleSerializer
    end

end
