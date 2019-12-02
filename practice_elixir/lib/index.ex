defmodule Hello do





  #It will say "Hello World"
  def world do
    IO.puts "Hello, World"
    end
   @doc"""
  name - param - string
  prints out hello,username
"""
    def greet(name) do
      IO.puts "Hello, #{name}"
    end
def conditionals do
    unless is_integer(12.1) do
    IO.puts "is integer"
    else
    IO.puts "not an integer"
    end
  end
def whats_your_case do
  case :hello do
    :world->
    IO.puts "Hello World"
    :"helllo"->
    IO.puts "Hello There"
    _->
    IO.puts "Last case is deault drop through"

  end

end
  def condit do
    cond do
      9+1==12->
      IO.puts "no way"
      8-3==6 ->
      IO.puts "yes that matches!"
      true->
      IO.puts "no others are true"
    end
  end

end
Hello.greet "Aditya"
Hello.conditionals()
Hello.whats_your_case()
Hello.condit()
