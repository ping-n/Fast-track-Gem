require "tty-prompt"

prompt = TTY::Prompt.new


 user = prompt.select("Choose your destiny?") do |menu|
  menu.enum '.'

  menu.choice 'Scorpion', 1
  menu.choice 'Kano', 2
  menu.choice 'Jax', 3
end

puts " "
p user 