class SelectsController < ApplicationController
  def index
    @selects = Select.all

    render("selects/index.html.erb")
  end

  def show
    @select = Select.find(params[:id])

    render("selects/show.html.erb")
  end

  def new
    @select = Select.new

    render("selects/new.html.erb")
  end

  def create
    @select = Select.new

    @select.name = params[:name]
    @select.price = params[:price]

    save_status = @select.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/selects/new", "/create_select"
        redirect_to("/selects")
      else
        redirect_back(:fallback_location => "/", :notice => "Select created successfully.")
      end
    else
      render("selects/new.html.erb")
    end
  end

  def edit
    @select = Select.find(params[:id])

    render("selects/edit.html.erb")
  end

  def update
    @select = Select.find(params[:id])

    @select.name = params[:name]
    @select.price = params[:price]

    save_status = @select.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/selects/#{@select.id}/edit", "/update_select"
        redirect_to("/selects/#{@select.id}", :notice => "Select updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Select updated successfully.")
      end
    else
      render("selects/edit.html.erb")
    end
  end

  def destroy
    @select = Select.find(params[:id])

    @select.destroy

    if URI(request.referer).path == "/selects/#{@select.id}"
      redirect_to("/", :notice => "Select deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Select deleted.")
    end
  end
end
