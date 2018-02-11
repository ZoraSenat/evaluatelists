class RfqsController < ApplicationController
  before_action :current_user_must_be_rfq_user, :only => [:edit, :update, :destroy]

  def current_user_must_be_rfq_user
    rfq = Rfq.find(params[:id])

    unless current_user == rfq.user
      redirect_to :back, :alert => "You are not authorized for that."
    end
  end

  def index
    @rfqs = Rfq.all

    render("rfqs/index.html.erb")
  end

  def show
    @rfq = Rfq.find(params[:id])

    render("rfqs/show.html.erb")
  end

  def new
    @rfq = Rfq.new

    render("rfqs/new.html.erb")
  end

  def create
    @rfq = Rfq.new

    @rfq.user_id = params[:user_id]
    @rfq.data_card_id = params[:data_card_id]

    save_status = @rfq.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/rfqs/new", "/create_rfq"
        redirect_to("/rfqs")
      else
        redirect_back(:fallback_location => "/", :notice => "Rfq created successfully.")
      end
    else
      render("rfqs/new.html.erb")
    end
  end

  def edit
    @rfq = Rfq.find(params[:id])

    render("rfqs/edit.html.erb")
  end

  def update
    @rfq = Rfq.find(params[:id])
    @rfq.data_card_id = params[:data_card_id]

    save_status = @rfq.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/rfqs/#{@rfq.id}/edit", "/update_rfq"
        redirect_to("/rfqs/#{@rfq.id}", :notice => "Rfq updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Rfq updated successfully.")
      end
    else
      render("rfqs/edit.html.erb")
    end
  end

  def destroy
    @rfq = Rfq.find(params[:id])

    @rfq.destroy

    if URI(request.referer).path == "/rfqs/#{@rfq.id}"
      redirect_to("/", :notice => "Rfq deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Rfq deleted.")
    end
  end
end
