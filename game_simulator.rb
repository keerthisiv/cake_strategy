def statistical_check
  we_won_counter =0
  (0..1000).each do 
    result = Game((1..50).to_a.sample)
    we_won_counter += result ? 1 : 0 
  end
  puts "we won this # times: #{we_won_counter}"
end

def log_winner(game_result)
  puts game_result ?  "We won" : "We Lost"
end 

def debugging_check
  log_winner Game(5, true)
  log_winner Game(7, true)
  log_winner Game(12, true)
  log_winner Game(23, true)
end
