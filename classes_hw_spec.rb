require ('minitest/autorun')
require ('minitest/rg')
require_relative ('./classes_hw')

class ClassesPractice < MiniTest::Test

def test_student_name()
student = CodeClanStudent.new("Louise", 3)
assert_equal("Louise", student.student_name())
end

def test_student_cohort()
  student = CodeClanStudent.new("Louise", 3)
  assert_equal(3, student.student_cohort())
end

def test_update_student_name
  student = CodeClanStudent.new("Louise", 3)
  student.update_student_name("Joe")
  assert_equal("Joe", student.student_name())
end

def test_update_cohort()
  student = CodeClanStudent.new("Louise", 3)
  student.update_cohort(4)
  assert_equal(4, student.student_cohort())
end

def test_gets_student_to_talk()
  student = CodeClanStudent.new("Louise", 3)
  assert_equal("I can talk!", student.talk())
end

def test_fav_language()
  student = CodeClanStudent.new("Louise", 3)
  student.say_fav_language("Ruby")
  assert_equal("I love Ruby", student.say_fav_language("Ruby"))
end



def test_team_name()
  team = Hibs.new("Hibs", ["David Gray", "Lewis Stevenson", "Anthony Stokes", "John McGinn"], "Neil Lennon", 0)
  assert_equal("Hibs", team.team_name())
end

def test_players()
  team = Hibs.new("Hibs", ["David Gray", "Lewis Stevenson", "Anthony Stokes", "John McGinn"], "Neil Lennon", 0)
  assert_equal(["David Gray", "Lewis Stevenson", "Anthony Stokes", "John McGinn"], team.players())
end

def test_coach_name()
  team = Hibs.new("Hibs", ["David Gray", "Lewis Stevenson", "Anthony Stokes", "John McGinn"], "Neil Lennon", 0)
  assert_equal("Neil Lennon", team.coach_name())
end

def test_update_coach()
  team = Hibs.new("Hibs", ["David Gray", "Lewis Stevenson", "Anthony Stokes", "John McGinn"], "Neil Lennon", 0)
  team.update_coach("Alan Stubbs")
  assert_equal("Alan Stubbs", team.update_coach("Alan Stubbs"))
end

def test_add_player()
  team = Hibs.new("Hibs", ["David Gray", "Lewis Stevenson", "Anthony Stokes", "John McGinn"], "Neil Lennon", 0)
  team.add_player("Marvin Bartley")
  assert_equal(["David Gray", "Lewis Stevenson", "Anthony Stokes", "John McGinn", "Marvin Bartley"], team.players())
end

def test_player_in_team()
  team = Hibs.new("Hibs", ["David Gray", "Lewis Stevenson", "Anthony Stokes", "John McGinn"], "Neil Lennon", 0)
  assert_equal(true, team.player_in_team("David Gray"))
  assert_equal(false, team.player_in_team("Bob"))
end

def test_points_update()
  team = Hibs.new("Hibs", ["David Gray", "Lewis Stevenson", "Anthony Stokes", "John McGinn"], "Neil Lennon", 0)
  team.points_update("")
  assert_equal(3, team.points_update("win"))
end


def setup()
  @data = [
    {
    title: "lord_of_the_rings",
    rental_details: {
     student_name: "Jeff",
     date: "01/12/16"
    }
  },
    {
      title: "beauty_and_the_beast",
      rental_details: {
        student_name: "Alanna",
        date: "04/12/16"
      }
    },
    {
      title: "world_war_z",
      rental_details: {
        student_name: "Steffen",
        date: "06/12/16"
      }
    }
  ]
  @library = Library.new(@data)
end

def test_all_books()
  assert_equal(@data, @library.all_books())
end

# def test_book_info()
# result = @library.book_info("beauty_and_the_beast")
# assert_equal(@data[1], result)
# end

def test_add_book()
  result = @data.count
  actual = @library.add_book("Jungle_Book")
  assert_equal(4, result)
end

# class end
end
