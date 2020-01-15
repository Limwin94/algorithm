# algorithm
알고리즘 문제풀이
<br>

1. K번째 수
[프로그래머스 링크](https://programmers.co.kr/learn/courses/30/lessons/42748?language=swift)
```swift
import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    let oriArray = array
    var cutArray=[Int]()
    var value:Int
    var returnArray=[Int]()
    
    for command in commands {
        print(command)
        cutArray = Array(oriArray[command[0]-1...command[1]-1])
        cutArray.sort()
        value = cutArray[command[2]-1]
        returnArray.append(value)
    }
    
    return returnArray
}
```
