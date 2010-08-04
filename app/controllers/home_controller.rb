class HomeController < ApplicationController

  def index
    
    @agenda = IsambaAgendas.all(:order => "data DESC", :limit => 5)
    
  end

end

