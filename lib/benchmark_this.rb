def benchmarkThis(num)
  testArray = []
  # to populate the testArray with a 'num' of random integers from 1 to 100
  num.times { testArray << rand(100) }

  allResults = []
  # to work out the time difference 100 times
  for i in 1..100 do
    # myArray.shuffle    # commented out when not timing the sort method
    startTime = Time.now.nsec
    testArray.last # or reverse or shuffle or sort
    endTime = Time.now.nsec
    # to store each time difference in the allResults array
    allResults << (endTime - startTime)
    i += 1
  end
  # to remove the outliers...
  outliers = allResults.sort.pop(10)
  # ...and store only the remainung results
  benchmarkResults = allResults - outliers

  puts "Average = #{benchmarkResults.reduce(:+) / benchmarkResults.length.to_f}"
end

benchmarkThis(5000)
benchmarkThis(10000)
benchmarkThis(15000)
benchmarkThis(20000)
benchmarkThis(25000)
benchmarkThis(30000)
benchmarkThis(35000)
benchmarkThis(40000)
benchmarkThis(45000)
benchmarkThis(50000)
benchmarkThis(55000)
benchmarkThis(60000)
benchmarkThis(65000)
benchmarkThis(70000)
benchmarkThis(75000)
benchmarkThis(80000)
benchmarkThis(85000)
benchmarkThis(90000)
benchmarkThis(95000)
benchmarkThis(100000)
