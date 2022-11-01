//
//  main.swift
//  optionalBiding
//


import Foundation

// MARK: - 옵셔널 바인딩 (Optional Binding)
// 옵셔널 내에 값이 있는지 없는지 if let, guard let, switch 조건문을 사용해서 확인 후 활용하는 언래핑 방법
var productsList: [String?] = ["볼펜", "텀블러", "다이어리", "에코백", "머그컵", "후드집업"]

func optionalBindingWithIf() {
    for (index, goods) in productsList.enumerated() {
        if let product = goods {
            print("\(index)번 상품은 \(product)입니다.")
        } else {
            print("비어있는 칸입니다.")
        }
    }
}

func optionalBindingWithguard() {
    for (index, goods) in productsList.enumerated() {
        guard let product = goods else {
            return print("비어있는 칸입니다.")
        }
        print("\(index)번 상품은 \(product)입니다.")
    }
}

func optionalBindingWithSwitch() {
    for (index, goods) in productsList.enumerated() {
        switch goods {
        case .some(let product):
            print("\(index)번 상품은 \(product)입니다.")
        case .none:
            print("비어있는 칸입니다.")
        }
    }
}

optionalBindingWithIf()
print("--------------------")
optionalBindingWithguard()
print("--------------------")
optionalBindingWithSwitch()
