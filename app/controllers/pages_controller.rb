class PagesController < ApplicationController

  def show_special
    render params[:name]
  end

  def show
    pg = Page.find_by_title!(params[:name])
    if pg.private and !user_signed_in?
      raise 'Not Found'
    end
    render text: pg.content, layout: true
  end

end
