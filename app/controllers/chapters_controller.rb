class ChaptersController < ApplicationController

  def index
    @chapters = Chapters.all  
  end

  def new
    @chapter = Chapter.new
  end

  def create
    @chapter = Chapter.new(chapter_params)

    if @chapter.save
      redirect_to root_path 
    else
      render 'new'
    end
  end


  private
    def chapter_params
      params.require(:chapter).permit(:name, :description)
    end
end
