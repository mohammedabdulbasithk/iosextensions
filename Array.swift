extension Array {
    
    func randomItem() -> Element {
        let index = Int(arc4random_uniform(UInt32(self.count)))
        return self[index]
    }
    func getItem(index: Int) -> Element {
        if(index>self.count){
            assertionFailure("index out of bounds")
        }
        return self[index]
    }
    func getNextItem() -> Element {
       return self[0]
    }
    func getPreviousItem() -> Element {
        return self[0]
    }

    mutating func push(element: Element) {
        self.append(element)
    }
    mutating func pop() {
        self.remove(at: self.endIndex-1)
    }
}