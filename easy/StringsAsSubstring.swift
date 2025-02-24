class Solution {
    func numOfStrings(_ patterns: [String],_ word: String) -> Int {
        var counter = 0
        for pattern in patterns {
            if word.contains(pattern) {
                counter += 1
            }
        }

        return counter
    }
}

let sol = Solution()

let patterns = ["a", "abc", "bc", "d"]
let word = "abc"
let result = sol.numOfStrings(patterns, word)
print(result)