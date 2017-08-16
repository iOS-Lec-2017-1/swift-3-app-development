//: Playground - noun: a place where people can play

import UIKit

for angle in 0..<360 {
    let radian = Double(angle) * M_PI/180
    let y1 = sin(radian)
    let y2 = sin(radian*3)
    let y3 = abs(y2)
}
