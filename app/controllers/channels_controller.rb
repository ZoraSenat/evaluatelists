class ChannelsController < ApplicationController
  def index
    @channels = Channel.page(params[:page]).per(10)

    render("channels/index.html.erb")
  end

  def show
    @channel_association = ChannelAssociation.new
    @channel = Channel.find(params[:id])

    render("channels/show.html.erb")
  end

  def new
    @channel = Channel.new

    render("channels/new.html.erb")
  end

  def create
    @channel = Channel.new

    @channel.name = params[:name]

    save_status = @channel.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/channels/new", "/create_channel"
        redirect_to("/channels")
      else
        redirect_back(:fallback_location => "/", :notice => "Channel created successfully.")
      end
    else
      render("channels/new.html.erb")
    end
  end

  def edit
    @channel = Channel.find(params[:id])

    render("channels/edit.html.erb")
  end

  def update
    @channel = Channel.find(params[:id])

    @channel.name = params[:name]

    save_status = @channel.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/channels/#{@channel.id}/edit", "/update_channel"
        redirect_to("/channels/#{@channel.id}", :notice => "Channel updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Channel updated successfully.")
      end
    else
      render("channels/edit.html.erb")
    end
  end

  def destroy
    @channel = Channel.find(params[:id])

    @channel.destroy

    if URI(request.referer).path == "/channels/#{@channel.id}"
      redirect_to("/", :notice => "Channel deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Channel deleted.")
    end
  end
end
