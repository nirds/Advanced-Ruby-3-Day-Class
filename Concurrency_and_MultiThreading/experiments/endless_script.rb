def neverending_method
  i = 0

  while
    i = rand(10) + i
  end
end

neverending_method
