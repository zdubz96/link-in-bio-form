class ItemsController < ApplicationController
  def index
    @list_of_items = Item.all
    render({ :template => "item_templates/list" })
  end

  def new
    render({ :template => "item_templates/form" })
  end

  def add_item
    new_item=Item.new
    new_item.link_url=params[:url]
    new_item.link_description=params[:description]
    new_item.thumbnail_url=params[:image]
    new_item.save
    redirect_to("/")
  end
end
