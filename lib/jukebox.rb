#! /usr/bin/env ruby

#require 'pry'

# Add your code here
# def say_hello(name)
#   "Hi #{name}!"
# end
 
# puts "Enter your name:"
# users_name = gets.strip
 
# puts say_hello(users_name)

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
  puts "I accept the following commands:"
  puts "-help : displays this help message"
  puts "-list : displays a list of songs you can play"
  puts "-play : lets you choose a song to play"
  puts "-exit : exits this program"
end

def list(songs)
  songs.each_with_index {|song, index|
  puts "#{index + 1}. #{song}"
  }
end


def play(songs)
  puts "Please enter a song name or number:"
  
  user_response = gets.strip
  
  if songs.include?(user_response)
    puts "Playing #{user_response}"
  # if user response is a string and if any of the array indexes include that string
  #   return "Playing #{string}"
  elsif user_response.to_i < songs.length && user_response.to_i > 0 
    puts "Playing #{songs[user_response.to_i - 1]}"
  # elsif user response is an integer and if it exists in the indexes of the sorng array
  # return "Playing <the element of that index>" *Note that index from user will be minus 1 since we start at 0
  else
    puts "Invalid input, please try again"
  # else return "Invalid input, please try again"
  end
end  

def exit_jukebox
  puts "Goodbye"
end  

def run(songs)
  puts "Please enter a command:"
  user_input = gets.strip
  
  case user_input
  when "help"
    help
  when "list"
    list(songs)
  when "play"
    play(songs)
  when "exit"
    exit_jukebox
  end
end  

run(songs)
