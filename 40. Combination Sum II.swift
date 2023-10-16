class Solution {
    func combinationSum2(_ candidates: [Int], _ target: Int) -> [[Int]] {
        let sortedCandidates = candidates.sorted()
        var result = [[Int]]()
        var solution = [Int]()

        func findCombination(_ currentSum: Int,_ index: Int, _ solution: inout [Int]) {
            //print("\(currentSum) \(index) \(solution)")
       
            if currentSum == target {
                result.append(solution)
                return 
            }
            if currentSum > target {
                return
            }
            guard index < sortedCandidates.count else { return }
            let candidate = sortedCandidates[index]

            for i in index..<sortedCandidates.count {

                if i > index && sortedCandidates[i] == sortedCandidates[i-1] {
                    continue
                }
                solution.append(sortedCandidates[i])
                findCombination(currentSum + sortedCandidates[i], i+1, &solution )
                solution.removeLast()
            }
            
        }

        findCombination(0, 0, &solution)
        return result

    }
}