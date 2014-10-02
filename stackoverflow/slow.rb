def machineSlot 
  tal1= rand(0..10)
  return tal1
end
#makes the a random number

if startBool == true
  #game startof

  gameRunner=true
  puts 'pull the lever with x'
  leverPullTry =gets.chomp

  while gameRunner
    #keeps game running

    i=1
    slotThread='Your numbers are:'
    #initialise game rollcount i and string that keeps the numbers

    if leverPullTry=='x'
      puts "#{slotThread}#{machineSlot}"
      #if x was entered the slotThread appends a random number

      puts slotThread
      #slotThreads current process

      puts 'pull the lever with x again'
      i+=1
      #number of rolls increased

      leverPullTry =gets.chomp
    else
      puts 'try again use type x to pull'
      leverPullTry =gets.chomp
      #user didnt manage to input anything correct

    end
  end
end
