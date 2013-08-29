#Greed is a dice game where you roll up to five dice to accumulate points.  The following "score" function will 
#be used to calculate the score of a single roll of the dice.
#
# A greed roll is scored as follows:
# * A set of three ones is 1000 points
# * A set of three numbers (other than ones) is worth 100 times the number. (e.g. three fives is 500 points).
# * A one (that is not part of a set of three) is worth 100 points.
# * A five (that is not part of a set of three) is worth 50 points.
# * Everything else is worth 0 points.
#
# Examples:
# score([1,1,1,5,1]) => 1150 points
# score([2,3,4,6,2]) => 0 points
# score([3,4,5,3,3]) => 350 points
# score([1,5,1,2,4]) => 250 points

def score(dice)
  tally = 0
  
  #Count numbers in the roll.
  counts = dice.inject(Hash.new(0)) do |total,die|
    total[die] += 1
    total
  end
  
  counts.each do |face, count|
  #3 ones = 1000 points; otherwise 3 ns = n*100
    if count >= 3 && face == 1
      tally += 1000
    elsif count >= 3
      tally += (face * 100)
    end
    
    # A one (that is not part of a set of three) is worth 100 points.
    if face == 1
      tally += 100 * (count%3)
    # A five (that is not part of a set of three) is worth 50 points.
    elsif face == 5
      tally += 50 * (count%3)
    end
  end
  
  tally
end