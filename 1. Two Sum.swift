class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dictionary = [Int:Int]()

        for (index,num) in nums.enumerated() {
            let counterpart = target - num
            if let counterpartIndex = dictionary[counterpart] {
                return [index,counterpartIndex ]
            } else {
                dictionary[num] = index
            }
        }

        return []
    }
}