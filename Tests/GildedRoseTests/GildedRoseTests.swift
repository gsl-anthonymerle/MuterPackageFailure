@testable import GildedRose
import XCTest
import ApprovalTests_Swift

class GildedRoseTests: XCTestCase {
    fileprivate func doUpdateQuality(_ name: String, _ sellIn: Int, _ quality: Int) -> String {
        let items = [Item(name: name, sellIn: sellIn, quality: quality)]
        let app = GildedRose(items: items)
        
        app.updateQuality()

        return items[0].description
    }

    func testItems() throws {
        try CombinationApprovals.verifyAllCombinations(
            doUpdateQuality(_:_:_:),
            ["foo", "Aged Brie", "Backstage passes to a TAFKAL80ETC concert"],
            [0],
            [0, 1, 2]
        )
    }
}
