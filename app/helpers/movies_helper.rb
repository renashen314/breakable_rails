module MoviesHelper
  def truncate_texts(text)
    truncate(text, length: 40, separator: " ")
  end

  def total_gross(movie)
    if movie.flop?
      "FLOP!"
    else
      number_to_currency(movie.total_gross, precision: 0)
    end
  end

  def year_of(movie)
    movie.released_on
  end
end
