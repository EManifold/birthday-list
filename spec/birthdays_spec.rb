require 'birthdays'

describe Birthdays do
  describe '#add_birthday' do
    it 'A new instance of Birthdays should respond to the method add_birthday' do
      expect(subject).to respond_to(:add_birthday).with(2).arguments
    end
  end

  describe '#display_birthdays' do
    it 'shows an array with all the birthdays' do
      birthdays = Birthdays.new
      birthdays.add_birthday('Julie', '24th November')
      expect(birthdays.display_birthdays).to eq [['Julie', '24th November']]
    end
  end

  describe '#birthday_today' do
    it 'displays the name of the person whose birthday it is today' do
      birthdays = Birthdays.new
      birthdays.add_birthday('Julie', '15/11')
      birthdays.add_birthday('Andy', '15/11')
      dateArray = Time.now.strftime("%d/%m/%Y %H:%M").split(' ')[0].split('/')
      todays_date = dateArray[0] + '/' +  dateArray[1]
      expect(birthdays.birthday_today).to eq [['Julie', '15/11'], ['Andy', '15/11']]
    end
  end
end
