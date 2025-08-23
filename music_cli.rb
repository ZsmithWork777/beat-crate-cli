class MusicApp
  attr_accessor :current_song, :history

  def initialize
    @current_song = "No song playing"
    @history      = []
    puts "A new MusicApp is ready!"
  end

  def play_song(song)
    @current_song = song
    @history << song
    puts "Now playing: #{@current_song}"
  end

  def list_history
    if @history.empty?
      puts "No history yet."
    else
      puts "Songs played so far:"
      @history.each_with_index { |s, i| puts "#{i + 1}. #{s}" }
    end
  end
end

# Run CLI only when executed directly
if __FILE__ == $0
  app = MusicApp.new
  puts "Welcome to Music CLI! Type a song name, 'list', 'help', or 'quit'."

  begin
    loop do
      print "> "
      input = STDIN.gets&.chomp
      break if input.nil?           # Ctrl-D

      case input.strip
      when "quit", "exit" then puts("Goodbye!"); break
      when "list"         then app.list_history
      when "help"         then puts "Commands: enter a song title, 'list', 'help', or 'quit'"
      when ""             then puts "(enter something or type 'quit')"
      else                     app.play_song(input)
      end
    end
  rescue Interrupt
    puts "\nGoodbye."
  end
end