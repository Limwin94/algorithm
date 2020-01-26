import Foundation

var count = Int(readLine()!)
var countArray = [Int](repeating: 0, count: 10001)
var value:Int

for _ in 0..<count! {
    value = Int(readLine()!)!
    
    countArray[value]+=1
}

for index in 0..<10001 {
    for _ in 0..<countArray[index] {
        print(index)
    }
}
