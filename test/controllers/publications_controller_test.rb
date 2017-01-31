require 'test_helper'

class PublicationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @publication = publications(:one)
  end

  test "should get index" do
    get publications_url
    assert_response :success
  end

  test "should get new" do
    get new_publication_url
    assert_response :success
  end

  test "should create publication" do
    assert_difference('Publication.count') do
      post publications_url, params: { publication: { baño: @publication.baño, comuna: @publication.comuna, descripcion: @publication.descripcion, dormitorio: @publication.dormitorio, estacionamiento: @publication.estacionamiento, precio: @publication.precio, region: @publication.region, slug: @publication.slug, superficie: @publication.superficie, tipo: @publication.tipo, titulo: @publication.titulo } }
    end

    assert_redirected_to publication_url(Publication.last)
  end

  test "should show publication" do
    get publication_url(@publication)
    assert_response :success
  end

  test "should get edit" do
    get edit_publication_url(@publication)
    assert_response :success
  end

  test "should update publication" do
    patch publication_url(@publication), params: { publication: { baño: @publication.baño, comuna: @publication.comuna, descripcion: @publication.descripcion, dormitorio: @publication.dormitorio, estacionamiento: @publication.estacionamiento, precio: @publication.precio, region: @publication.region, slug: @publication.slug, superficie: @publication.superficie, tipo: @publication.tipo, titulo: @publication.titulo } }
    assert_redirected_to publication_url(@publication)
  end

  test "should destroy publication" do
    assert_difference('Publication.count', -1) do
      delete publication_url(@publication)
    end

    assert_redirected_to publications_url
  end
end
