class Solution {
    func combinationSum(_ candidates: [Int], _ target: Int) -> [[Int]] {
        var result = [[Int]]()
        let sortedCadidates = candidates.sorted()
        var temp = [Int]()

        func backtrack(_ newTarget: Int, _ index: Int, _ temp: inout [Int]) {
            if newTarget == 0 {
                result.append(temp)
                return
            }
            guard newTarget > 0 else { return }

            for i in index..<sortedCadidates.count {
                let candidate = sortedCadidates[i]
                temp.append(candidate)
                backtrack(newTarget - candidate, i, &temp)
                temp.removeLast()
            }
        }
        backtrack(target, 0, &temp)
        return result
    }
}