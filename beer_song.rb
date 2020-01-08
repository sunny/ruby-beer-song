class BeerSong
  def verse(n)
    "#{bottles(n).capitalize} on the wall, #{bottles(n)}.\n" \
      "#{action(n)}, #{bottles(n - 1)} on the wall.\n"
  end

  def verses(from, to)
    from.downto(to).map(&method(:verse)).join("\n")
  end

  def lyrics
    verses(99, 0)
  end

  private

  def bottles(n)
    n = 99 if n < 0
    "#{n == 0 ? "no more" : n} bottle#{"s" if n != 1} of beer"
  end

  def action(n)
    case n
    when 0 then "Go to the store and buy some more"
    when 1 then "Take it down and pass it around"
    else "Take one down and pass it around"
    end
  end
end