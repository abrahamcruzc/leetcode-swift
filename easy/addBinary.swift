class Solution {
    func addBinary(_ a: String, _ b: String) -> String {
        var carry = 0
        var result: [Character] = []

        var (i, j) = (a.count - 1, b.count - 1)

        let aArray = Array(a)
        let bArray = Array(b)
        
        while i >= 0 || j >= 0 || carry > 0 {
            let bitA = i >= 0 ? Int(String(aArray[i]))! : 0
            let bitB = j >= 0 ? Int(String(bArray[j]))! : 0

            let sum = bitA + bitB + carry

            result.append(Character(String(sum % 2)))
            carry = sum / 2

            i -= 1
            j -= 1
        }

        return String(result.reversed())
    }
}