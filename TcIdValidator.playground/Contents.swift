import UIKit


func TcIdValidate(identity: String) -> Bool{

    
    //Data type must convert String to Int for operation.
    var identityNumber = [Int]()
    
    for char in identity {
        if let i = Int(String(char)){
            identityNumber.append(i)
        }
        
    }
    
    //T.C. Identity Number should be 11 digits.
    var firstCondition: Bool = identityNumber.count == 11
    
    
    //The ones digit of the sum of the first 10 digits is equal to the 11th digit.
    var secondCondition: Bool =  Int((identityNumber[0] + identityNumber[1] + identityNumber[2] + identityNumber[3] + identityNumber[4] + identityNumber[5] + identityNumber[6] + identityNumber[7] + identityNumber[8] + identityNumber[9]) % 10) == identityNumber[10]
    
    
    //The ones digit of 7 times the sum of the 1st, 3rd, 5th, 7th and 9th digits and 9 times the sum of the 2nd, 4th, 6th and 8th digits equals the 10th digit.
    var thirdCondition: Bool = (((identityNumber[0] + identityNumber[2] + identityNumber[4] + identityNumber[6] + identityNumber[8]) * 7) + ((identityNumber[1] + identityNumber[3] + identityNumber[5] + identityNumber[7]) * 9)) % 10 == identityNumber[9]
    
    
    
    //The ones digit of 8 times the sum of 1, 3, 5, 7, and 9 is equal to the 11th digit.
    var fourthCondition = ((identityNumber[0] + identityNumber[2] + identityNumber[4] + identityNumber[6] + identityNumber[8]) * 8) % 10 == identityNumber[10]
    
    
    
    return firstCondition && secondCondition && thirdCondition && fourthCondition
}
TcIdValidate(identity: "11111111111")

