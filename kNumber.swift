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
