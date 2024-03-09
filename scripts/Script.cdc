// Import CountryStruct Contract
import CountryStruct from 0x05

pub fun main(id: UInt64): CountryStruct.Animal? {
    // Retrieve an Animal by its unique Id using the imported contract
    return CountryStruct.getAnimal(id: id)!
}
