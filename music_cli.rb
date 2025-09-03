class MusicApp
  attr_reader :current_song, :history

  def initialize
    @current_song = nil
    @history = []
    puts "A new MusicApp is ready!"
  end

  def play_song(title)
    t = title.to_s.strip
    return if t.empty?
    @current_song = t
    @history << @current_song
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

if __FILE__ == $0
  app = MusicApp.new
  puts "Welcome to Music CLI! Type a song name, 'list', 'help', or 'quit'."

  begin
    loop do
      print "> "
      input = STDIN.gets&.chomp
      break if input.nil?
      cmd = input.strip

      case cmd.downcase
      when "quit", "exit" then puts "Goodbye!"; break
      when "list"         then app.list_history
      when "help"         then puts "Commands: enter a song title, 'list', 'help', or 'quit'"
      when ""             then puts "(enter something or type 'quit')"
      else                       app.play_song(cmd)
      end
    end
  rescue Interrupt
    puts "\nGoodbye."
  end
end