class Solution {
    func isHappy(_ n: Int) -> Bool {
        if n == 1 {
            return true
        }

        var number = n
        var sumValue = 0

        var dupCheck = Set<Int>()
        var digits = [Int]()

        while true {
            sumValue = 0
            digits = String(number).map({Int(String($0))!})
            for digit in digits {
                sumValue += digit * digit
            }

            print(sumValue)

            if sumValue == 1 {
                return true
            }

            if dupCheck.contains(sumValue){
                return false
            }

            dupCheck.insert(sumValue)
            number = sumValue
        }
    }
}
