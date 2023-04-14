class FortunesController <ApplicationController
  def horoscopes

    @sign = params.fetch("the_sign")
    sign_sym = @sign.to_sym

    this_zodiac = Zodiac.list.fetch(sign_sym)

    @horoscope = this_zodiac.fetch(:horoscope)
    @array_of_numbers = Zodiac.lucky_numbers

    render({ :template => "fortune_templates/horoscope.html.erb"})
  end
end
