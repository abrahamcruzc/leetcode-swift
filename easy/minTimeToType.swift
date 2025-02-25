class Solution {
    func minTimeToType(_ word: String) -> Int {
        var tiempoTotal = 0
        var actual: Character = "a"

        for char in word {
            let distanciaHorario = abs(Int(char.asciiValue!) - Int(actual.asciiValue!))
            let distanciaAntihorario = 26 - distanciaHorario
            
            tiempoTotal += min(distanciaHorario, distanciaAntihorario) + 1
            actual = char
        }

        return tiempoTotal
    }
}

let sol = Solution()

let word = "zjpc"

print(sol.minTimeToType(word))

