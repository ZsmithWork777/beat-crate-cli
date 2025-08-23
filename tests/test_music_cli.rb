require "minitest/autorun"
require_relative "../music_cli"

class MusicAppTest < Minitest::Test
  def test_initial_state
    app = MusicApp.new
    assert_nil app.current_song
    assert_equal [], app.history
  end

  def test_play_song_sets_current_and_tracks_history
    app = MusicApp.new
    app.play_song("Beat One")
    assert_equal "Beat One", app.current_song
    assert_includes app.history, "Beat One"
  end

  def test_play_song_ignores_blank_input
    app = MusicApp.new
    app.play_song("   ")
    assert_nil app.current_song
    assert_empty app.history
  end
end

# Explicit runner (works in every environment)
if __FILE__ == $0
  exit Minitest.run
end