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

2. 수 정렬하기 3
[백준 알고리즘 링크](https://www.acmicpc.net/problem/10989)
```swift
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
```
시간초과가 계속뜨길래 한번 찾아보았다..
swift의 언어적 한계로인해 같은 코드인데도 시간초과가 뜬다는 글..[Zedd님 블로그](https://zeddios.tistory.com/648)
