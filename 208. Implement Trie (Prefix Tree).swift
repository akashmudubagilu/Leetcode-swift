/**
 * Your Trie object will be instantiated and called as such:
 * let obj = Trie()
 * obj.insert(word)
 * let ret_2: Bool = obj.search(word)
 * let ret_3: Bool = obj.startsWith(prefix)
 */
class Trie {
    var root: TrieNode

    init() {
        root = TrieNode()
    }
    
    func insert(_ word: String) {
        var cur = root
        for c in word {
            if let child = cur.children[c] {
                cur = child
            }else {
                let newNode = TrieNode()
                cur.children[c] =  newNode
                cur = newNode
            }
        }
        cur.isWordEnd = true
        //print(root)
    }
    
    func search(_ word: String) -> Bool {
        var cur = root
        for c in word {
            if let child = cur.children[c] {
                cur = child
            }else {
                return false
            }
        }
        return cur.isWordEnd
    }
    
    func startsWith(_ prefix: String) -> Bool {
        var cur = root
        for c in prefix {
            if let child = cur.children[c] {
                cur = child
            }else {
                return false
            }
        }
        return true
    }
}

class TrieNode: CustomStringConvertible {
    var isWordEnd = false 
    var children:[Character: TrieNode] = [Character: TrieNode]()

    var description: String { 
        "\(children)"
    }
}
