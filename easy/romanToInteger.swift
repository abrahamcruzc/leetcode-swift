class Solution {
    func romanToInt(_ s: String) -> Int {
        let romanNumbers: [Character:Int] =  [
            "I": 1,
            "V": 5,
            "X": 10,
            "L": 50,
            "C": 100,
            "D": 500,
            "M": 1000
        ]

        var sum = 0
        var prevValue = 0

        for char in s.reversed() {
            let currentValue = romanNumbers[char] ?? 0
            if currentValue < prevValue {
                sum -= currentValue
            } else {
                sum += currentValue
            }
            prevValue = currentValue
        }

        return sum
    }
}

let s = "IX"

let sol = Solution()
print(sol.romanToInt(s))