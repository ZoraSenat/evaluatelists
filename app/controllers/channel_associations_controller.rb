class ChannelAssociationsController < ApplicationController
  def index
    @q = ChannelAssociation.ransack(params[:q])
    @channel_associations = @q.result(:distinct => true).includes(:data_card, :channel).page(params[:page]).per(10)

    render("channel_associations/index.html.erb")
  end

  def show
    @channel_association = ChannelAssociation.find(params[:id])

    render("channel_associations/show.html.erb")
  end

  def new
    @channel_association = ChannelAssociation.new

    render("channel_associations/new.html.erb")
  end

  def create
    @channel_association = ChannelAssociation.new

    @channel_association.data_card_id = params[:data_card_id]
    @channel_association.channel_id = params[:channel_id]

    save_status = @channel_association.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/channel_associations/new", "/create_channel_association"
        redirect_to("/channel_associations")
      else
        redirect_back(:fallback_location => "/", :notice => "Channel association created successfully.")
      end
    else
      render("channel_associations/new.html.erb")
    end
  end

  def edit
    @channel_association = ChannelAssociation.find(params[:id])

    render("channel_associations/edit.html.erb")
  end

  def update
    @channel_association = ChannelAssociation.find(params[:id])

    @channel_association.data_card_id = params[:data_card_id]
    @channel_association.channel_id = params[:channel_id]

    save_status = @channel_association.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/channel_associations/#{@channel_association.id}/edit", "/update_channel_association"
        redirect_to("/channel_associations/#{@channel_association.id}", :notice => "Channel association updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Channel association updated successfully.")
      end
    else
      render("channel_associations/edit.html.erb")
    end
  end

  def destroy
    @channel_association = ChannelAssociation.find(params[:id])

    @channel_association.destroy

    if URI(request.referer).path == "/channel_associations/#{@channel_association.id}"
      redirect_to("/", :notice => "Channel association deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Channel association deleted.")
    end
  end
end
