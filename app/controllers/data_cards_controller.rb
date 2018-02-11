class DataCardsController < ApplicationController
  before_action :current_user_must_be_data_card_user, :only => [:edit, :update, :destroy]

  def current_user_must_be_data_card_user
    data_card = DataCard.find(params[:id])

    unless current_user == data_card.user
      redirect_to :back, :alert => "You are not authorized for that."
    end
  end

  def index
    @data_cards = DataCard.all

    render("data_cards/index.html.erb")
  end

  def show
    @data_card = DataCard.find(params[:id])

    render("data_cards/show.html.erb")
  end

  def new
    @data_card = DataCard.new

    render("data_cards/new.html.erb")
  end

  def create
    @data_card = DataCard.new

    @data_card.title = params[:title]
    @data_card.file_size = params[:file_size]
    @data_card.user_id = params[:user_id]
    @data_card.desription = params[:desription]
    @data_card.subtitle = params[:subtitle]
    @data_card.file_layout_id = params[:file_layout_id]
    @data_card.market = params[:market]
    @data_card.file_type = params[:file_type]
    @data_card.image = params[:image]
    @data_card.sample_download = params[:sample_download]
    @data_card.source = params[:source]

    save_status = @data_card.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/data_cards/new", "/create_data_card"
        redirect_to("/data_cards")
      else
        redirect_back(:fallback_location => "/", :notice => "Data card created successfully.")
      end
    else
      render("data_cards/new.html.erb")
    end
  end

  def edit
    @data_card = DataCard.find(params[:id])

    render("data_cards/edit.html.erb")
  end

  def update
    @data_card = DataCard.find(params[:id])

    @data_card.title = params[:title]
    @data_card.file_size = params[:file_size]
    @data_card.user_id = params[:user_id]
    @data_card.desription = params[:desription]
    @data_card.subtitle = params[:subtitle]
    @data_card.file_layout_id = params[:file_layout_id]
    @data_card.market = params[:market]
    @data_card.file_type = params[:file_type]
    @data_card.image = params[:image]
    @data_card.sample_download = params[:sample_download]
    @data_card.source = params[:source]

    save_status = @data_card.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/data_cards/#{@data_card.id}/edit", "/update_data_card"
        redirect_to("/data_cards/#{@data_card.id}", :notice => "Data card updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Data card updated successfully.")
      end
    else
      render("data_cards/edit.html.erb")
    end
  end

  def destroy
    @data_card = DataCard.find(params[:id])

    @data_card.destroy

    if URI(request.referer).path == "/data_cards/#{@data_card.id}"
      redirect_to("/", :notice => "Data card deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Data card deleted.")
    end
  end
end
