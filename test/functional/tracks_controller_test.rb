require 'test_helper'

class TracksControllerTest < ActionController::TestCase
  setup do
    @track = tracks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tracks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create track" do
    assert_difference('Track.count') do
      post :create, track: { album_id: @track.album_id, artist_id: @track.artist_id, duration: @track.duration, genre_id: @track.genre_id, img_url: @track.img_url, location: @track.location, name: @track.name, rating: @track.rating, track_number: @track.track_number }
    end

    assert_redirected_to track_path(assigns(:track))
  end

  test "should show track" do
    get :show, id: @track
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @track
    assert_response :success
  end

  test "should update track" do
    put :update, id: @track, track: { album_id: @track.album_id, artist_id: @track.artist_id, duration: @track.duration, genre_id: @track.genre_id, img_url: @track.img_url, location: @track.location, name: @track.name, rating: @track.rating, track_number: @track.track_number }
    assert_redirected_to track_path(assigns(:track))
  end

  test "should destroy track" do
    assert_difference('Track.count', -1) do
      delete :destroy, id: @track
    end

    assert_redirected_to tracks_path
  end
end


# context "A Track" do
#     setup do
#       expected = [{'title' => 'Yesterday'}] #OR whats on the next line
#       expected = JSON.parse(File.open("path/to/file").read)
#       Track.stubs(:search).returns(expected)
#       @tracks = Track.search("what ever your result will be")
#     end
#     should "give me a list of songs by somebody" do
#       assert_equal "somebody", @tracks['artist']
#     end
#     end
    