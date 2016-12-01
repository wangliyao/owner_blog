class TemplateController < ApplicationController
  def index
  end

  def options_one
    @name = CreatePeronOwner.new
    @other = OtherInformation.new
    @all = CreatePeronOwner.select("id,name")
  end

  def create_name
    params.permit!
    @name = CreatePeronOwner.new(params[:create_peron_owner])
    if params[:create_peron_owner][:mail].present?
      UserMailer.send_mail(params[:create_peron_owner][:mail],params[:create_peron_owner][:name]).deliver
    end
    @name.save
    respond_to do |format|
      format.js
    end
  end

  def show_one
  end

  def create_other
    params.permit!
    @name = OtherInformation.new(params[:other_information])
    x = Array.new
    params[:material].each do |t|
      x<<t[:code_name]
    end
    @name.information=x.to_s.delete '[' ']' '\"'
    @name.save
    respond_to do |format|
      format.js
    end
  end
end
