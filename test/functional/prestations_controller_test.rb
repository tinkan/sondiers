require 'test_helper'

class PrestationsControllerTest < ActionController::TestCase
  setup do
    @prestation = prestations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:prestations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create prestation" do
    assert_difference('Prestation.count') do
      post :create, prestation: { category_id: @prestation.category_id, commentaire: @prestation.commentaire, date: @prestation.date, production: @prestation.production, projet: @prestation.projet }
    end

    assert_redirected_to prestation_path(assigns(:prestation))
  end

  test "should show prestation" do
    get :show, id: @prestation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @prestation
    assert_response :success
  end

  test "should update prestation" do
    put :update, id: @prestation, prestation: { category_id: @prestation.category_id, commentaire: @prestation.commentaire, date: @prestation.date, production: @prestation.production, projet: @prestation.projet }
    assert_redirected_to prestation_path(assigns(:prestation))
  end

  test "should destroy prestation" do
    assert_difference('Prestation.count', -1) do
      delete :destroy, id: @prestation
    end

    assert_redirected_to prestations_path
  end
end
