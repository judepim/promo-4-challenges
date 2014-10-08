def coach_answer(your_message)
  # TODO: return coach answer to your_message
  while your_message != "I am going to work right now"
    puts "coach_answer"
    until your_message == "I am going to work right now"
      puts "coach_answer_enhanced"
end


def coach_answer_enhanced(your_message)
  # TODO: return coach answer to your_message, with additional custom rules of yours!
  return  your_message
  unless your_message == "I am going to work right now"
    print "coach_answer_enhanced"
end

