//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func insert(x: Int, var intoSortedList xs: [Int]) -> [Int] {
    var didInsertX = false
    for i in 0..<xs.count {
        if (x < xs[i]) {
            xs.insert(x, atIndex: i)
            didInsertX = true
            break
        }
    }
    if !didInsertX {
        xs.append(x)
    }
    return xs
}

insert(3, intoSortedList: [1, 2, 4, 5])

func insertion_sort(xs: [Int]) -> [Int] {
    var sortedSoFar = [Int]()
    for x in xs {
        sortedSoFar = insert(x, intoSortedList: sortedSoFar)
    }
    return sortedSoFar
}

insertion_sort([8, 6, 7, 5, 3, 0, 9])


func select(xs: [Int], startingAt k: Int) -> Int {
    var minIndex = k
    for i in (k+1)..<xs.count {
        if xs[i] < xs[minIndex] {
            // we found a new minimum
            minIndex = i
        }
    }
    return minIndex
}

select([0, 1, 2, 3, 9, 5, 4, 6], startingAt: 4)
select([8, 6, 7, 5, 3, 0, 9], startingAt: 0)

func selection_sort(inout xs: [Int]) -> [Int] {
    for sortedSoFar in 0..<xs.count {
        let minIndex = select(xs, startingAt: sortedSoFar)
        (xs[sortedSoFar], xs[minIndex]) = (xs[minIndex], xs[sortedSoFar])
    }
    return xs
}

var xs = [8, 6, 7, 5, 3, 0, 9]
selection_sort(&xs)

//a simple switch method
//var x = 3
//var y = 5
//
//(x, y) = (y, x)
//
//print(x)
//print(y)

