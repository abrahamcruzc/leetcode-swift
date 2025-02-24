class Solution {
    func isPrefixString(_ s: String,_ words: [String]) -> Bool {
        var concatenated = ""
        let sCount = s.count

        for word in words {
            if concatenated.count + word.count > sCount {
                return false
            }

            concatenated += word
            if concatenated == s {
                return true
            }
        }

        return false 
    }
}

let sol = Solution()

let words = ["i","love","leetcode","apples"]
let s = "iloveleetcode"

print(sol.isPrefixString(s, words))

let words2 = ["apples","i","love","leetcode"]
let s2 = "iloveleetcode"

print(sol.isPrefixString(s2, words2))

