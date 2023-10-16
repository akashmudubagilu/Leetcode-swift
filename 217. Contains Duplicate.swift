class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        var dictionary = [Int: Bool]()

        for num in nums {
            if let exists = dictionary[num] {
                return true
            }else {
                dictionary[num] = true
            }
        }
        return false
    }
}


//Alternate Solution
class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
       return nums.count != Set(nums).count
    }
}