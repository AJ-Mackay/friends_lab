def get_name(person)
  return person[:name]
end

def favourite_tv_show(person)
  return person[:favourites][:tv_show]
end

def likes_to_eat(person, test)
  snack_array = person[:favourites][:snacks]
  for snack in snack_array
    if test == snack
      return true
    end
  end
  return false
end

def add_friend(person, friend)
  person[:friends].push(friend)
end

def remove_friend(person, friend)
  person[:friends].delete(friend)
end

def total_monies(people_array)
  total = 0

  for person in people_array
    total += person[:monies]
  end
  return total
end

def lend_monies(lender, lendee, amount)
  give = lender[:monies] - amount
  get = lendee[:monies] + amount
  new_array = [give, get]
  return new_array
end

def favourite_snacks(people_array)
  new_array = []
  for person in people_array
    for item in person[:favourites][:snacks]
      new_array.push(item)
    end
  end
  return new_array
end
