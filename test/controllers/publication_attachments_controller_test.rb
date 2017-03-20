require 'test_helper'

class PublicationAttachmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @publication_attachment = publication_attachments(:one)
  end

  test "should get index" do
    get publication_attachments_url
    assert_response :success
  end

  test "should get new" do
    get new_publication_attachment_url
    assert_response :success
  end

  test "should create publication_attachment" do
    assert_difference('PublicationAttachment.count') do
      post publication_attachments_url, params: { publication_attachment: { avatar: @publication_attachment.avatar, publication_id: @publication_attachment.publication_id } }
    end

    assert_redirected_to publication_attachment_url(PublicationAttachment.last)
  end

  test "should show publication_attachment" do
    get publication_attachment_url(@publication_attachment)
    assert_response :success
  end

  test "should get edit" do
    get edit_publication_attachment_url(@publication_attachment)
    assert_response :success
  end

  test "should update publication_attachment" do
    patch publication_attachment_url(@publication_attachment), params: { publication_attachment: { avatar: @publication_attachment.avatar, publication_id: @publication_attachment.publication_id } }
    assert_redirected_to publication_attachment_url(@publication_attachment)
  end

  test "should destroy publication_attachment" do
    assert_difference('PublicationAttachment.count', -1) do
      delete publication_attachment_url(@publication_attachment)
    end

    assert_redirected_to publication_attachments_url
  end
end
