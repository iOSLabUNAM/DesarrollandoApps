import XCTest

func fibonacci(_ n: Int) -> Int {
    if n < 2 {
        return n
    } else {
        return fibonacci(n-1) + fibonacci(n-2)
    }
}


class FunctionsTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    override func tearDown() {
        super.tearDown()
    }
    
    func testFactorial() {
        let sequence = [0, 1, 1, 2, 3, 5, 8, 13, 21]
        for (idx, num) in sequence.enumerated() {
            XCTAssertEqual(num, fibonacci(idx))
        }
    }
}

FunctionsTests.defaultTestSuite.run()

