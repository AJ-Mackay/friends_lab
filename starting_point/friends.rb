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
