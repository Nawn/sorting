def bubble_sort (input_arr) #Grag how long the array is
  temp_array = input_arr #Creating temp array to not affect the original.
  
  (input_arr.length-1).times do
    temp_array.each_with_index do |current_obj, index|
      unless index == temp_array.size - 1  #If this isn't the last item we checked.
        if temp_array[index] > temp_array[index+1] #Check to see if they're in the right order
          temp_array[index], temp_array[index+1] = temp_array[index+1], temp_array[index] #If they're not, swap em
        end #ending If
      end #ending unless
    end #ending eachLoop
  end #ending times loop
  temp_array
end #ending method define


def bubble_sort_by (input_arr)
  temp_array = input_arr #Make temporary
  
  (input_arr.length-1).times do #Loop over it repeatedly
    temp_array.each_with_index do |current_obj, index| #One iteration
      unless index == temp_array.size - 1 #Unless it's last
        outcome = yield(current_obj, temp_array[index+1]) #Check block to see the outcome
        
        if outcome > 0 #if positive/if First is larger than second
          temp_array[index], temp_array[index+1] = temp_array[index+1], temp_array[index]
        end #Ending if, that checks if it needs to be switched
      end #Ending unless, that checks if it's the last one
    end #ending each which ends one iteration
  end #ending .times which will ensure it is fully sorted
  temp_array #returns that array
end