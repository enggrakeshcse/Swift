// LinkedList Node
class Node <T: Equatable>{
  var value: T?
  var next: Node?
}

//LinkedList Class
class LinkedList <T: Equatable> {
  var head = Node<T>()
  
  //Insert New Element in LinkedList
  func insert(value: T) {
    if self.head.value == nil {
      self.head.value = value
    } else {
        var lastNode = self.head
        while lastNode.next != nil {
          lastNode = lastNode.next!
        }
        let newNode = Node<T>()
        newNode.value = value
        lastNode.next = newNode
    }
  }
  
  //Print all Element in LinkedList
  func printAllElement() {
    var currentNode: Node! = self.head
    if currentNode.value == nil {
      print("there is no element to show")
    } else {
    while currentNode != nil {
      print("\(String(describing: currentNode.value!))")
      currentNode = currentNode.next 
    }
    }
  }
  
  //Remove a Element from LinkedList
  func remove(value: T) {
    if self.head.value == value {
      self.head = self.head.next!
    }
    if self.head.value != nil {
      var node = self.head
      var previousNode = Node<T>()
      while node.value != value && node.next != nil {
        previousNode = node
        node = node.next!
      }
      if node.value == value {
        if node.next == nil {
          previousNode.next = nil
        } else {
            previousNode.next = node.next
        }
      }
    }
  }
}
