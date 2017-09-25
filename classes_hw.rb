class CodeClanStudent
  def initialize(student_name, cohort_number)
    @name = student_name
    @cohort = cohort_number
  end

  def student_name()
    return @name
  end

  def student_cohort()
    return @cohort
  end

  def update_student_name(name)
    @name = name
  end

  def update_cohort(number)
    @cohort = number
  end

  def talk()
    return "I can talk!"
  end

  def say_fav_language(language)
    return "I love " + language
  end
end


class Hibs
  def initialize(name, players, coach, points)
    @name = name
    @players = players
    @coach = coach
    @points = points
  end

 def team_name()
   return @name
 end

def players()
  return @players
end

def coach_name()
  return @coach
end

def update_coach(name)
  @name = name
end

def add_player(name)
  @players.push(name)
end

def player_in_team(name)
  @players.include?(name)
end

def points_update(result)
  return @points += 3 if result == "win"
end

end


class Library
  def initialize(data)
    @data = data
  end

def all_books()
  @data
end

# def book_info(title)
#   for info in title[:rental_details]
#     return info
#     end
# end

def add_book(title)
  
end


end
