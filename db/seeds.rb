# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
class Seed

  Quote.destroy_all

  def self.begin
    seed = Seed.new
    seed.generate_quotes
  end

  # def generate_quotes
  #   20.times do |i|
  #     quote = Quote.create!(
  #       author: "Micheal Scott",
  #       content: Faker::TvShows::MichaelScott.quote,
  #       location: Faker::Movies::LordOfTheRings.location,
  #       date: Faker::Date.in_date_period
  #     )
  #     puts "Quote #{i}: Author is #{quote.author} and quotation is '#{quote.content}'. It was spoken on #{quote.date}, at #{quote.location}"
  #   end
  # end

  def generate_quotes 
    Quote.create!(
      author: "Malcolm X",
      content: "A man who stands for nothing will fall for anything."
    )
    
    Quote.create!(
      author: "Malcolm X",
      content: "We are nonviolent with people who are nonviolent with us."
    )

    Quote.create!(
      author: "Malcolm X",
      content: "Don’t be in a hurry to condemn because he doesn’t do what you do or think as you think or as fast. There was a time when you didn’t know what you know today."
    )
    
    Quote.create!(
      author: "Malcolm X",
      content: "We didn’t land on Plymouth Rock, Plymouth Rock landed on us"
    )
    Quote.create!(
      author: "Malcolm X",
      content: "If you’re not ready to die for it, put the word ‘freedom’ out of your vocabulary."
    )
    Quote.create!(
      author: "W.E.B. DuBois",
      content: "Children learn more from what you are than what you teach."
    )
    Quote.create!(
      author: "W.E.B. DuBois",
      content: "Either America will destroy ignorance or ignorance will destroy the United States."
    )
    Quote.create!(
      author: "W.E.B. DuBois",
      content: "The cost of liberty is less than the price of repression."
    )
    Quote.create!(
      author: "W.E.B. DuBois",
      content: "I believe that all men, black, brown, and white, are brothers."
    )
    Quote.create!(
      author: "W.E.B. DuBois",
      content: "The problem of the twentieth century is the problem of the color line."
    )
    Quote.create!(
      author: "Martin Luther King Jr.",
      content: "An individual has not started living until he can rise above the narrow confines of his individualistic concerns to the broader concerns of all humanity."
    )
    Quote.create!(
      author: "Martin Luther King Jr.",
      content: "Shallow understanding from people of good will is more frustrating than absolute misunderstanding from people of ill will."
    )
    Quote.create!(
      author: "Martin Luther King Jr.",
      content: "Let no man pull you so low as to hate him."
    )
    Quote.create!(
      author: "Martin Luther King Jr.",
      content: "A man who won’t die for something is not fit to live."
    )
    Quote.create!(
      author: "Martin Luther King Jr.",
      content: "Change does not roll in on the wheels of inevitability, but comes through continuous struggle."
    )
    Quote.create!(
      author: "Coretta Scott King",
      content: "Struggle is a never ending process. Freedom is never really won, you earn it and win it in every generation."
    )
    Quote.create!(
      author: "Desmond Tutu",
      content: "If you are neutral in situations of injustice, you have chosen the side of the oppressor."
    )
    Quote.create!(
      author: "Will Smith",
      content: "Racism is not getting worse, it’s getting filmed."
    )
    Quote.create!(
      author: "Angela Davis",
      content: "In a racist society it is not enough to be non-racist, we must be anti-racist."
    )
    Quote.create!(
      author: "Colin Kaepernick",
      content: "People don’t realize what’s really going on in this country. There are a lot things that are going on that are unjust. People aren’t being held accountable for. And that’s something that needs to change. That’s something that this country stands for: freedom, liberty and justice for all."
    )
    Quote.create!(
      author: "Nelson Mandela",
      content: "No one is born hating another person because of the color of his skin, or his background, or his religion. People must learn to hate, and if they can learn to hate, they can be taught to love, for love comes more naturally to the human heart than its opposite"
    )
    Quote.create!(
      author: "Killer Mike",
      content: "We don’t want to see Targets burning. We want to see the system that sets up for systemic racism burned to the ground."
    )
    Quote.create!(
      author: "Oprah Winfrey",
      content: "As long as people can be judged by the color of their skin, the problem is not solved."
    )
    Quote.create!(
      author: "Sean King",
      content: "If you want to do something courageous, try Love."
    )
    Quote.create!(
      author: "Sean King",
      content: "How far can you go in life if you don't love yourself?"
    )
    Quote.create!(
      author: "Sean King",
      content: "You cannot stop this with enforcement alone."
    )
    Quote.create!(
      author: "Alicia Garza",
      content: "We want to see a wold where black lives matter in order for us to get a world where all of our humanity is respected"
    )
    Quote.create!(
      author: "Alicia Garza",
      content: "Police violence is the tip of the iceburg when it relates to the conditions overall of black people across the globe"
    )
    Quote.create!(
      author: "Alicia Garza",
      content: "Saying 'black lives matter' both literally and figuratively restores peoples dignity"
    )
    Quote.create!(
      author: "Patrice Cullors",
      content: "What is the impact of not being valued? How do you measure the loss of what a human being does not receive?"
    )

    Quote.create!(
      author: "Rosa Parks",
      content: "Racism is still with us. But it is up to us to prepare our children for what they have to meet, and, hopefully, we shall overcome."
    )

    Quote.create!(
      author: "Rosa Parks",
      content: "People always say that I didn’t give up my seat because I was tired, but that isn’t true. I was not tired physically … No, the only tired I was, was tired of giving in."
    )

    Quote.create!(
      author: "Rosa Parks",
      content: "Stand for something or you will fall for anything. Today’s mighty oak is yesterday’s nut that held its ground."
    )

    Quote.create!(
      author: "Rosa Parks",
      content: "Our freedom is threatened every time one of our young people is killed by another child… every time a person gets stopped and beaten by the police because of the color of their skin."
    )

    Quote.create!(
      author: "Rosa Parks",
      content: "There were times when it would have been easy to fall apart or to go in the opposite direction, but somehow I felt that if I took one more step, someone would come along to join me."
    )

    Quote.create!(
      author: "Rosa Parks",
      content: "I would like to be remembered as a person who wanted to be free ... so other people would be also free."
    )

    Quote.create!(
      author: "Harriet Tubman",
      content: "I had reasoned this out in my mind; there was on of two things I had a right to, liberty or death; if I could not have one, I would have the other; for no man should take me alive."
    )

    Quote.create!(
      author: "Harriet Tubman",
      content: "Every great dream begins with a dreamer. Always remember, you have within you the strength, the patience, and the passion to reach for the stars to change the world."
    )

    Quote.create!(
      author: "Michelle Obama",
      content: "When they go low, we go high."
    )

    Quote.create!(
      author: "Michelle Obama",
      content: "Change doesn't happen without risk taking"
    )

    Quote.create!(
      author: "Michelle Obama",
      content: "It’s up to all of us – Black, white, everyone – no matter how well-meaning we think we might be, to do the honest, uncomfortable work of rooting it out."
    )

    Quote.create!(
      author: "Beyoncé",
      content: "No more seeing people of colour as less than human. We can no longer look away."
    )

    Quote.create!(
      author: "Coretta Scott King",
      content: "Hate is too great a burden to bear. It injures the hater more than it injures the hated."
    )

    Quote.create!(
      author: "Dr. Martin Luther King, Jr.",
      content: "A riot is the language of the unheard."
    )

    Quote.create!(
      author: "Ella Baker",
      content: "We who believe in freedom cannot rest"
    )

    Quote.create!(
      author: "Ella Baker",
      content: "Until the killing of black men, black mothers' sons, becomes as important to the rest of the country as the killing of a white mother's sons, we who believe in freedom cannot rest until this happens."
    )

    Quote.create!(
      author: "Ijeoma Oluo",
      content: "The beauty of anti-racism is that you don’t have to pretend to be free of racism to be an anti-racist. Anti-racism is the commitment to fight racism wherever you find it, including in yourself. And it’s the only way forward."
    )
  end
end

Seed.begin
