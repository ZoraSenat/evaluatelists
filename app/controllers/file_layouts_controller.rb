class FileLayoutsController < ApplicationController
  def index
    @file_layouts = FileLayout.all

    render("file_layouts/index.html.erb")
  end

  def show
    @file_layout = FileLayout.find(params[:id])

    render("file_layouts/show.html.erb")
  end

  def new
    @file_layout = FileLayout.new

    render("file_layouts/new.html.erb")
  end

  def create
    @file_layout = FileLayout.new

    @file_layout.file_name = params[:file_name]
    @file_layout.file_path = params[:file_path]

    save_status = @file_layout.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/file_layouts/new", "/create_file_layout"
        redirect_to("/file_layouts")
      else
        redirect_back(:fallback_location => "/", :notice => "File layout created successfully.")
      end
    else
      render("file_layouts/new.html.erb")
    end
  end

  def edit
    @file_layout = FileLayout.find(params[:id])

    render("file_layouts/edit.html.erb")
  end

  def update
    @file_layout = FileLayout.find(params[:id])

    @file_layout.file_name = params[:file_name]
    @file_layout.file_path = params[:file_path]

    save_status = @file_layout.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/file_layouts/#{@file_layout.id}/edit", "/update_file_layout"
        redirect_to("/file_layouts/#{@file_layout.id}", :notice => "File layout updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "File layout updated successfully.")
      end
    else
      render("file_layouts/edit.html.erb")
    end
  end

  def destroy
    @file_layout = FileLayout.find(params[:id])

    @file_layout.destroy

    if URI(request.referer).path == "/file_layouts/#{@file_layout.id}"
      redirect_to("/", :notice => "File layout deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "File layout deleted.")
    end
  end
end
