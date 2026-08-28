import Pair
import Symmetry
import Symmetry_Pair
import Testing

@Suite
struct `Symmetry Pair Tests` {

    @Test
    func `Phase Value pairs a phase with its payload`() {
        let value: Phase.Value<String> = Pair(.quarter, "east")

        #expect(value.first == .quarter)
        #expect(value.second == "east")
    }

    @Test
    func `Phase Value retains Pair transformations`() {
        let value: Phase.Value<Int> = Pair(.half, 2)
        let mapped = value.map(second: { $0 * 45 })

        #expect(mapped.first == .half)
        #expect(mapped.second == 90)
    }
}
