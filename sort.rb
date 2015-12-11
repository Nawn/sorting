def bubble_sort (input_arr)
  length = input_arr.length #Grag how long the array is
  temp_array = input_arr #Creating temp array to not affect the original.
  counter = 1
  
  temp_array.each_with_index do |current_obj, index|
    unless index == temp_array.size - counter  #If this isn't the last item we checked.
      if temp_array[index] > temp_array[index+1] #Check to see if they're in the right order
        temp_array[index], temp_array[index+1] = temp_array[index+1], temp_array[index] #If they're not, swap em
      end #ending If
    else
      counter += 1 #make the counter go up, so in the unless statement, we don't keep checking finished indices
      break #stop this iteration
    end #ending unless
  end #ending eachLoop
  
  puts counter
  temp_array
end #ending method define


=begin
  Compare the first 2 objects in the array, then, if 1 is larger than 2, swap em. Do this for the rest of the Array,
  until we get to the End. Then repeat it, with one less iteration on the elements.
  
  
  Currently: Have it working perfectly for initial iteration, now must figure out a way to get it to work repeatedly
  until sorted fully.
=end