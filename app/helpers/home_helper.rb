module HomeHelper

  def password_with_gem(options = {})
    Faker::Lorem.words(options[:count] ? options[:count] : 2).join(options[:join] ? options[:join] : '_' )+Faker::Number.number(options[:nums] ? options[:nums] : 0).to_s
  end

  def password_russian(options = {})
    out = nouns.shuffle.sample + (options[:join] ? options[:join] : '_' ) + verbs.shuffle.sample
     if options[:nums] && options[:nums] > 0
       options[:nums].times{out  << (rand(0..9)).to_s}
     end
    return out
  end

  def nouns
    %w[мотоцикл лединец чупачупс кору водку бабу молоток машину]
  end

  def verbs
    %w[ехал плыл скакал лизал мучил пукал дул прыгал]
  end

end
