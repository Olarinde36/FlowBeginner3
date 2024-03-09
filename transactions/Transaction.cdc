// Import CountryStruct Contract
import CountryStruct from 0x01

// Transaction to add an animal
transaction(id: UInt64, name: String, population: UInt64) {
    
    // Prepare phase: No account modifications needed
    prepare(acct: AuthAccount) {}

    // Execution phase: Add an Animal using the imported contract
    execute {
        CountryStruct.addAnimal(id: id, name: name, population: population)
        log("Animal Added Successfully")
    }
}
