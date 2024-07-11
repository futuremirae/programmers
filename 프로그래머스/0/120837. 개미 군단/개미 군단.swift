import Foundation

func solution(_ hp:Int) -> Int {
	var hp = hp
	var result = 0
	for i in [5,3,1] {
		result += hp / i
        hp %= i
	
		
	}
	
	return result
}