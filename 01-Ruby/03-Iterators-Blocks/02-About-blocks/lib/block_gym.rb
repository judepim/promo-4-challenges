def tag(tag_name, attr = nil)
       if attr
               variable = " #{attr[0]}='#{attr[1]}'"
       else
               variable = ""
       end

       if yield
               variable2 = yield
       else
               variable2 = ""
       end

       ("<#{tag_name}" + "#{variable}>" + "#{variable2}" + "</#{tag_name}>")

 # TODO:  Build HTML tags around  content given in the block
 #        The method can be called with an optional HTML attribute inputted as [attr_name, attr_value]
end

def timer_for
       time_start = Time.now
       yield
       time_elapsed = Time.now - time_start
 # TODO:  Return time taken to execute the given block
end