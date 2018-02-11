class SelectionsController < ApplicationController
  def index
    @selections = Selection.all

    render("selections/index.html.erb")
  end

  def show
    @selection = Selection.find(params[:id])

    render("selections/show.html.erb")
  end

  def new
    @selection = Selection.new

    render("selections/new.html.erb")
  end

  def create
    @selection = Selection.new

    @selection.select_id = params[:select_id]
    @selection.data_card_id = params[:data_card_id]

    save_status = @selection.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/selections/new", "/create_selection"
        redirect_to("/selections")
      else
        redirect_back(:fallback_location => "/", :notice => "Selection created successfully.")
      end
    else
      render("selections/new.html.erb")
    end
  end

  def edit
    @selection = Selection.find(params[:id])

    render("selections/edit.html.erb")
  end

  def update
    @selection = Selection.find(params[:id])

    @selection.select_id = params[:select_id]
    @selection.data_card_id = params[:data_card_id]

    save_status = @selection.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/selections/#{@selection.id}/edit", "/update_selection"
        redirect_to("/selections/#{@selection.id}", :notice => "Selection updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Selection updated successfully.")
      end
    else
      render("selections/edit.html.erb")
    end
  end

  def destroy
    @selection = Selection.find(params[:id])

    @selection.destroy

    if URI(request.referer).path == "/selections/#{@selection.id}"
      redirect_to("/", :notice => "Selection deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Selection deleted.")
    end
  end
end
