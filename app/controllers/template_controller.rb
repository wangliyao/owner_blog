class TemplateController < ApplicationController
  def index
    @articles = Rails.cache.fetch "articles" do
      CreatePeronOwner.order("id DESC").limit(10).to_a
    end
  end

  def options_one
    @name = CreatePeronOwner.new
    @other = OtherInformation.new
    @all = CreatePeronOwner.select("id,name")
  end

  def create_name
    params.permit!
    begin
    @name = CreatePeronOwner.new(params[:create_peron_owner])
    if @name.save
      respond_to do |format|
        format.js
      end
    else
      raise "有错"
    end
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

  def options_two
  end

  def options_three
     
  end
end
