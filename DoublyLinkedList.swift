//Node Class
class Node<T: Equatable>{
  var value: T?
  var next: Node?
  var previous: Node?
}
//LinkedList Class
class LinkedList<T: Equatable> {
  var head = Node<T>()
  //Insert a element in linkedList
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
      newNode.previous = lastNode
      lastNode.next = newNode
    }
  }
  func printAllElement(){
    var currentNode : Node! = self.head
    if currentNode.value == nil {
      print("There is element in LinkedList")
    } else {
      while currentNode != nil {
        print((String(describing: currentNode.value!)))
        currentNode = currentNode.next
      }
    }
  }
  func remove(value: T){
    if self.head.value == value {
      head.next?.previous = nil
    }
    if self.head.value != nil {
      var prevNode = Node<T>()
      var currentNode = self.head
      while currentNode.value != value || currentNode.next != nil {
        prevNode = currentNode
        currentNode = currentNode.next!
      }
      if currentNode.next == nil {
        prevNode.next = nil
      } else {
        currentNode.previous = nil
        prevNode.next = currentNode.next
      }
    }
  }
}
