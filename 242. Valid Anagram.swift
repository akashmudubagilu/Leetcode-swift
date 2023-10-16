class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        guard s.count == t.count else {return false}
        
        var dictionary = [Character: Int]()

        for c in s {
            dictionary[c] = dictionary[c, default: 0] + 1
        }

        for c in t {
            if let count = dictionary[c] {
                if count == 1 {
                    dictionary[c] = nil
                }else {
                    dictionary[c] = count - 1
                }
            }else {
                return false
            }
        }

        return dictionary.keys.count == 0
    }
}