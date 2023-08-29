require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:main)
end

get("/rock") do
  array = ["rock", "paper", "scissors"]
  player = "rock"
  cpu = array[rand(0..2)]
  @outcome = "We played #{player}!"
  @outcome2 = "They played #{cpu}!"
  @win_lost_tied = ""

  if cpu == "rock"
    @win_lost_tied = "We tied!"
  elsif cpu == "paper"
    @win_lost_tied = "We lost!"
  else
    @win_lost_tied = "We win!"
  end      

 erb(:rock)
end

get("/paper") do

  array = ["rock", "paper", "scissors"]
  player = "paper"
  cpu = array[rand(0..2)]
  @outcome = "We played #{player}!"
  @outcome2 = "They played #{cpu}!"
  @win_lost_tied = ""

  if cpu == "rock"
    @win_lost_tied = "We win!"
  elsif cpu == "paper"
    @win_lost_tied = "We tied!"
  else
    @win_lost_tied = "We lost!"
  end

  erb(:paper)
end

get("/scissors") do

  array = ["rock", "paper", "scissors"]
  player = "scissors"
  cpu = array[rand(0..2)]
  @outcome = "We played #{player}!"
  @outcome2 = "They played #{cpu}!"
  @win_lost_tied = ""

  if cpu == "rock"
    @win_lost_tied = "We lost!"
  elsif cpu == "paper"
    @win_lost_tied = "We win!"
  else
    @win_lost_tied = "We tied!"
  end

  erb(:scissors)
end
