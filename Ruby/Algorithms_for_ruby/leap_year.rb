def leap_year(year)
  leap_year = []
  (0..year).each do |i|
    if (i % 4 == 0 && i % 100 != 0) || (i % 400 == 0)
      leap_year << i
    end
  end
  puts leap_year
end

leap_year(2020)