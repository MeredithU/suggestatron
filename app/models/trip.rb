class Trip < ActiveRecord::Base

  has_one :weather
  has_one :deal
  has_one :mapping
  belongs_to :user

  attr_accessible :endzipcode, :startzipcode

  def excuse
    myarray = ['Kevin Spacey stole my bicycle','It was not in the original specification', 'I will have to fix that at a later date','It must be because of leap year','Godzilla pulled me over in a stolen cop car','A stunt double stole my identity', 'A British chap put me inside a Chinese finger trap', 'The entire Roman empire spin kicked my collar bone',  'Princess Peach beat me into submission', 'Scrooge McDuck hid my Trapper Keeper', 'Chuck E Cheese broke into my house', 'Raiden from Mortal Kombat tried to sell me vacuum cleaners',  'Eddie Murphy put a banana inside my tail pipe', 'My fake tarantuala kept telling me knock knock jokes', 'I swerved to avoid banana peels on the roadway' ]
    cover_story = myarray[rand(myarray.length)]
    return cover_story
  end


end
