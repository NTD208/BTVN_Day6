//
//  main.swift
//  BaitapBuoi6
//
//  Created by Chu Du on 30/05/2021.
//

import Foundation

// MARK: - Bài 1: Chèn phần tử có giá trị X vào phía sau phần tử có giá trị lớn nhất trong mảng.
func findIndexOfMax(nums:[Float]) -> Int {
    var max:Float = nums[0]
    var pos:Int = 0
    

    for (index, value) in nums.enumerated() {
        if max < value {
            max = value
            pos = index
        }
    }
    return pos
}

func bai1() {
    var nums:[Float] = [1,3,2,5,7,10,4,38,27,19]
    print("Mảng ban đầu: \(nums)")
    print("Mời nhập giá trị X:", terminator: " ")
    let X = Float(readLine()!)!
    nums.insert(X, at: findIndexOfMax(nums: nums) + 1)
    print("Mảng sau khi thêm phần tử X: \(nums)")
}

print("Bài 1")
bai1()

// MARK: - Bài 2: Chèn phần tử có giá trị X vào mảng sao cho mảng vẫn có thứ tự tăng dần.
func bai2() {
    var nums:[Float] = [1,2,5,8,9,10,15,18,20]
    print("Mảng ban đầu: \(nums)")
    print("Mời nhập giá trị X:", terminator: " ")
    let X = Float(readLine()!)!
    for index in (0...(nums.count - 1)).reversed() {
        if X >= nums[index] {
            nums.insert(X, at: index + 1)
            break
        } else if X < nums[0] {
            nums.insert(X, at: 0)
            break
        }
    }
    print("Mảng sau khi thêm phần tử X: \(nums)")
}

print("Bài 2")
bai2()

// MARK: - Bài 3: Cho số nguyên n. Kiểm tra n có phải là số nguyên tố hay không?
func isPrime(n:Int) -> Bool {
    var count = 0
    if n < 2 {
        return false
    }
    if n == 2 || n == 3 {
        return true
    }
    for i in 2...Int(sqrt(Double(n))){
        if n % i == 0 {
            count = 1
        }
    }
    if count == 0 {
        return true
    }
    return false
}

func KTSNT() {
    print("Mời nhập 1 số:", terminator: " ")
    let num = Int(readLine()!)!
    if num < 0 {
        print("Nhập số nguyên dương")
        KTSNT()
    }
    if isPrime(n: num) {
        print("\(num) là số nguyên tố")
    } else {
        print("\(num) không phải số nguyên tố")
    }
}

print("Bài 3")
KTSNT()

// MARK: - Bài 4: Đếm số nguyên tố trong đoạn [a, b].

func bai4() {
    print("Mời nhập giá trị đầu:", terminator: " ")
    let a = Int(readLine()!)!
    print("Mời nhập giá trị cuối:", terminator: " ")
    let b = Int(readLine()!)!
    
    if a >= b {
        print("Mời nhập lại.")
        bai4()
    } else {
        var count = 0
        var nums = [Int]()
        
        for i in a...b {
            if isPrime(n: i) {
                count += 1
                nums.append(i)
            }
        }
        print("Trong đoạn [\(a), \(b)] có \(count) số nguyên tố")
//        print("Đó là: \(nums)")
    }
}

print("Bài 4")
bai4()
