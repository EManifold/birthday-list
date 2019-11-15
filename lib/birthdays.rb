class Birthdays

  def initialize
    @birthday_list = []
  end

  def add_birthday(name, birthday)
    @birthday_list << [name, birthday]
  end

  def display_birthdays
    @birthday_list.each do |person|
      p person
    end
  end

  def birthday_today
    dateArray = Time.now.strftime("%d/%m/%Y %H:%M").split(' ')[0].split('/')
    todays_date = dateArray[0] + '/' +  dateArray[1]

    todays_birthdays = @birthday_list.select do |person|
      person[1] == todays_date
    end

    todays_birthdays
  end
end
