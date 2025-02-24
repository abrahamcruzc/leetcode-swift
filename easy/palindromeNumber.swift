class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        let str = String(x)

        var left = str.startIndex
        var right = str.index(before: str.endIndex)

        while left < right {
            if str[left] != str[right] {
                return false
            }
            left  = str.index(after: left)
            right = str.index(before: right)
        }

        return true
    }
}