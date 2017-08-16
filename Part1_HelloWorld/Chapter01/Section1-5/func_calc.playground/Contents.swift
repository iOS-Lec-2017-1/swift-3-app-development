//: Playground - noun: a place where people can play

import UIKit

// calc()함수를 정의합니다
func calc(unitPrice:Int, quantity:Int) -> Int {
    let amount = unitPrice * quantity
    return amount
}

// calc()함수를 사용해 계산합니다
let ans = calc(unitPrice: 2500, quantity: 3)

