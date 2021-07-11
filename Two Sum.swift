class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        
        var dic: [Int : Int] = [:]
        
        for (i, num) in nums.enumerated() {
            
            let second = target - num
            
            if let secondIndex = dic[second] {
                
                return [ i, secondIndex]
                
            } else {
                
                dic[num] = i
                
            }
            
        }
        
        return []
    }
}

let solution = Solution()

print(solution.twoSum([3,3] ,6 ))
