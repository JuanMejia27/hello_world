require 'test_helper'

class OrdensControllerTest < ActionDispatch::IntegrationTest
  setup do
    @orden = ordens(:one)
  end

  test "should get index" do
    get ordens_url
    assert_response :success
  end

  test "should get new" do
    get new_orden_url
    assert_response :success
  end

  test "should create orden" do
    assert_difference('Orden.count') do
      post ordens_url, params: { orden: { cliente_id: @orden.cliente_id, fecha: @orden.fecha, numero_orden: @orden.numero_orden } }
    end

    assert_redirected_to orden_url(Orden.last)
  end

  test "should show orden" do
    get orden_url(@orden)
    assert_response :success
  end

  test "should get edit" do
    get edit_orden_url(@orden)
    assert_response :success
  end

  test "should update orden" do
    patch orden_url(@orden), params: { orden: { cliente_id: @orden.cliente_id, fecha: @orden.fecha, numero_orden: @orden.numero_orden } }
    assert_redirected_to orden_url(@orden)
  end

  test "should destroy orden" do
    assert_difference('Orden.count', -1) do
      delete orden_url(@orden)
    end

    assert_redirected_to ordens_url
  end
end
