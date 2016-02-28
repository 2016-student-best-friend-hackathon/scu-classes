class ResourcesController < ApplicationController

  def index
    @resources = Resource.all
  end

  def show
    @resource = Resource.find(params[:id])
  end

  def new
    @resource = Resource.new 
  end

  def create
   @resource = Resource.new(resources_params)

   if @resource.save
     redirect_to root_path
   else
     render 'new'
   end
     
  end

  def edit
    @resource = Resource.find(params[:id])
  end

  def update
    @resource = Resource.find(params[:id])

    if @resource.update_atrributes(resources_params)
      redirect_to root_path
    else
      render 'edit'
    end
  
  end

  def destroy
    @resource = Resource.find(params[:id])
    if @resource.destroy
      redirect_to root_path
    else
      render 'edit'
    end
  
  end

  private
    def resources_params
      params.require(:resource).permit(:class_name)
    end
end
