
class Solution {
    
    func lengthOfLongestSubstring(_ s: String) -> Int {
        
        let characters = Array(s)
        
        var dic: [Character : Int] = [:]
        
        var leftIndex = 0
        
        var rightIndex = 0
        
        var maxLength = 0
        
        for (index, _ ) in characters.enumerated() {
            
            rightIndex = index
            
            let value = characters[rightIndex]
            
            if dic[value] != nil {
                
                leftIndex = max( dic[value]! + 1 , leftIndex)
                
            }
            
            dic[value] = rightIndex
            
            let lenghth = rightIndex - leftIndex + 1
            
            maxLength = max(lenghth, maxLength)
            
        }
        
        return maxLength
        
    }
}
