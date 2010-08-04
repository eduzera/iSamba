class IsambaAgendasController < ApplicationController
  def index
    @isamba_agendas = IsambaAgendas.all(:order => "data DESC")
  end
  
  def show
    @isamba_agendas = IsambaAgendas.find(params[:id])
  end
  
  def new
    @isamba_agendas = IsambaAgendas.new
  end
  
  def create
    @isamba_agendas = IsambaAgendas.new(params[:isamba_agendas])
    if @isamba_agendas.save
      flash[:notice] = "Successfully created isamba agendas."
      redirect_to isamba_agendas_url
    else
      render :action => 'new'
    end
  end
  
  def edit
    @isamba_agendas = IsambaAgendas.find(params[:id])
  end
  
  def update
    @isamba_agendas = IsambaAgendas.find(params[:id])
    if @isamba_agendas.update_attributes(params[:isamba_agendas])
      flash[:notice] = "Successfully updated isamba agendas."
      redirect_to isamba_agendas_url
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @isamba_agendas = IsambaAgendas.find(params[:id])
    @isamba_agendas.destroy
    flash[:notice] = "Successfully destroyed isamba agendas."
    redirect_to isamba_agendas_url
  end
end
