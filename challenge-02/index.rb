def noIterate(strArr)
  strLength = strArr[1].size
  maxIndex = strArr[0].size

  while strLength <= maxIndex
    strLength.times do |i|
      origSample = strArr[1].split('')
      newSample = strArr[0][i, strLength].split('')
      newSampleCopy = newSample.join('')
      hits = 0

      origSample.each do |l|
        if newSample.include?(l)
          newSample.delete_at(newSample.index(l))
          hits += 1
        end
      end

      return newSampleCopy if origSample.size == hits
    end

    strLength += 1
  end

  ''
end

# keep this function call here
p noIterate(["ahffaksfajeeubsne", "jefaa"]) # "aksfaje"
p noIterate(["aksfaje", "jefaa"]) # "aksfaje"
p noIterate(["aaffhkksemckelloe", "fhea"]) # "affhkkse"
