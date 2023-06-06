class SearchController < ApplicationController
  def index
    @query = params[:query]
    @category = params[:category]
    @results = search_results(@query, @category)
  end

  # def search_results(query, category)
  #   # table = table_name.constantize
  #   if category == "All"
  #     Post.where("zip_code LIKE?", "%#{query}")
  #   else
  #     Post.where("zip_code LIKE ? AND category = ?", "%#{query}", category)
  #   end
  # end

  def search_results(query, category)
    if category == "All"
      Post.joins(:venues).where("clubs.zip_code LIKE ?", "%#{query}%")
    else

      Post.joins(:venues).where("clubs.zip_code LIKE ? AND venues.category = ?", "%#{query}%", category)

    end
  end

end
