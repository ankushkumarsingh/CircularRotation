
func getMaxElementIndexes(a: [Int], rotate: [Int]) -> [Int] {
  var indxesArray = [Int]()
  for r in rotate {
    let index = rotateAndGetMaxIndex(a,r)
    indxesArray.append(index)
  }
  return indxesArray
}

func rotateAndGetMaxIndex(_ a : [Int],_ r : Int) -> Int{
  var tempArray = a
  for _ in 0..<r {
    let temp = tempArray[0]
    for i in 0..<a.count-1 {
      tempArray[i] = tempArray[i+1]
    }
    tempArray[a.count - 1] = temp
  }
  var maxIndex = 0
  var max = tempArray[0]
  for (index,value) in tempArray.enumerated(){
    if value > max {
      max = value
      maxIndex = index
    }
  }
  return maxIndex
}

