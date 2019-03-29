songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "I accept the following commands: \n
  - help : displays this help message \n
  - list : displays a list of songs you can play \n
  - play : lets you choose a song to play \n
  - exit : exits this program"
end 

def list(songs)
  songs.each_with_index do |song_info, song_num|
    puts "#{song_num + 1}. #{song_info} "
  end 
end 

def play(songs)
  puts "Please enter a song name or number:"
  selected_song = gets.chomp
  # binding.pry
  if songs.include?(selected_song)
    puts "Playing #{selected_song}" 
  elsif   selected_song.to_i.between?(1, songs.length)
    puts "Playing #{songs[selected_song.to_i - 1]}"
  else 
    puts "Invalid input, please try again"
  end
end 

def exit_jukebox 
  puts "Goodbye"
   
end 

def run(songs)
  help 
  user_input = " "
  while user_input != "exit"
    puts "Please enter a command:"
    user_input = gets.chomp
      case user_input
      when "help" 
          help
      when "list"
          list(songs)
      when "play"
          play(songs)
      when "exit"
          exit_jukebox
      else puts "Invalid input, please try again"
        end 
    end
end 
