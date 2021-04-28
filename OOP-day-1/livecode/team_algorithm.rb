batch_626 = [
  'Graciella', 'Onno', 'Eriko', 'Nirmala', 'Daniel',
  'Marilou', 'José', 'Nandu', 'Ari', 'Hellen'
]

# Goal: build an algorithm that will
# create random teams of 3. If the number of students is not divisible by 3,
# complete it with teams of 4.

def teams_of_three(array)
  teams = array.shuffle.each_slice(3).to_a
  if (array.length % 3).positive? && array.length > 6
    teams.last.size.times do |i|
      teams[i] << teams.last[i]
    end
    teams.pop
  end
  teams
end

p teams_of_three(batch_626)
