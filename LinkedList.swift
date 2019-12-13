import UIKit

//#Linked List

class Node {
    let value: Int
    var next: Node?
    
    init(value: Int, next: Node?) {
        self.value = value
        self.next = next
    }
}


class LinkedList {
    
    var head: Node?
    
    func displayListItems(){
        print("Here is all item inside the linked List")
        var current = head
        while current != nil {
            print(current?.value ?? 0)
            current = current?.next
        }
    }
    
    //# 1. Insert Items
    func insert(value: Int) {
        if(head == nil) {//incase of empty list
            head = Node(value: value, next: nil)
        } else {
            var current = head
            while current?.next != nil {
                current = current?.next
            }
            current?.next = Node(value: value, next: nil)
        }
    }
    
    //#2. Delete Items
    func delete(value: Int?) {
        if head?.value == value {
            head = head?.next
        } else {
            var prev: Node?
            var current = head
            
            while current != nil && current?.value != value {
                prev = current
                current = current?.next
            }
            prev?.next = current?.next
        }
    }
    
    
}


let sampleList = LinkedList()
//1 -> 2 -> 3 -> nil
sampleList.insert(value: 4)
sampleList.insert(value: 1)
sampleList.insert(value: 3)
sampleList.insert(value: 2)
sampleList.insert(value: 5)
sampleList.insert(value: 6)
sampleList.insert(value: 8)
sampleList.insert(value: 34)

sampleList.delete(value: 4)
sampleList.delete(value: 34)

sampleList.displayListItems()

