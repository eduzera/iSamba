require 'test_helper'

class IsambaAgendasControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => IsambaAgendas.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    IsambaAgendas.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    IsambaAgendas.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to isamba_agendas_url(assigns(:isamba_agendas))
  end
  
  def test_edit
    get :edit, :id => IsambaAgendas.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    IsambaAgendas.any_instance.stubs(:valid?).returns(false)
    put :update, :id => IsambaAgendas.first
    assert_template 'edit'
  end
  
  def test_update_valid
    IsambaAgendas.any_instance.stubs(:valid?).returns(true)
    put :update, :id => IsambaAgendas.first
    assert_redirected_to isamba_agendas_url(assigns(:isamba_agendas))
  end
  
  def test_destroy
    isamba_agendas = IsambaAgendas.first
    delete :destroy, :id => isamba_agendas
    assert_redirected_to isamba_agendas_url
    assert !IsambaAgendas.exists?(isamba_agendas.id)
  end
end
