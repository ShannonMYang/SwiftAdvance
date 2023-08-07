//
//  main.swift
//  SwiftAdvanceFirstPass
//
//  Created by 11146 on 2023/8/7.
//

import Foundation

// 斐波那契数列
let fibs = [0, 1, 1, 2, 3, 5]
var mutableFibs = [0, 1, 1, 2, 3, 5]
mutableFibs.append(8)
mutableFibs.append(contentsOf: [13, 21])
print(mutableFibs)  // [0, 1, 1, 2, 3, 5, 8, 13, 21]

print("----------分-----割-----线----------")

var x = [1, 2, 3]
var y = x
y.append(4)
print(y)  // [1, 2, 3, 4]
print(x)  // [1, 2, 3]

print("----------分-----割-----线----------")

let a = NSMutableArray(array: [1, 2, 3])
// 我们不想让b发生改变
let b: NSArray = a
// 但是事实上它依然能够被a影响并改变
a.insert(4, at: 3)
print(b) // (1, 2, 3, 4)

// 正确的方式，先复制后赋值
let c = NSMutableArray(array: [1, 2, 3])
// 我们不想让d发生改变
let d = c.copy() as! NSArray
c.insert(4, at: 3)
print(d) // (1, 2, 3)

print("----------分-----割-----线----------")

var squared: [Int] = []
for fib in fibs {
    squared.append(fib * fib)
}
print(squared)

let squares = fibs.map { fib in
    fib * fib
}
print(squares)
