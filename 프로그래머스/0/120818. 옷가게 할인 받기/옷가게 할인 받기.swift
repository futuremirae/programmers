import Foundation

func solution(_ price:Int) -> Int {
    
    

    if price >= 100000 && price < 300000 {
    return Int(floor(Double(price) - Double(price)*0.05))}
    
    else if price >= 300000 && price < 500000 { 
    return Int(floor(Double(price) - Double(price)*0.1))}
    
    else if price >= 500000 {
    return Int(floor(Double(price) - Double(price)*0.2)) }
        
    return price
}