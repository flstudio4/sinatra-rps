require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:main)
end

get("/:page") do

  array = ["rock", "paper", "scissors"]
  @player = params.fetch("page")
  cpu = array[rand(0..2)]
  @outcome = "We played #{@player}!"
  @outcome2 = "They played #{cpu}!"
  @win_lost_tied = ""

  if cpu == "rock" && @player == "scissors" || cpu == "paper" && @player == "rock" || cpu == "scissors" && @player == "paper"
    @win_lost_tied = "We lost!"
  elsif cpu == "rock" && @player == "paper" || cpu == "paper" && @player == "scissors" || cpu == "scissors" && @player == "rock"
    @win_lost_tied = "We won!"
  elsif cpu == "rock" && @player == "rock" || cpu == "paper" && @player == "paper" || cpu == "scissors" && @player == "scissors"
    @win_lost_tied = "We tied!"
  end

  erb(:page)
end
