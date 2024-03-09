pub contract CountryStruct {

    // Structure definition for an Animal entity
    pub struct Animal {
        pub let id: UInt64 // Unique identifier assigned to the animal
        pub let name: String // Official name of the animal
        pub let population: UInt64 // Total population of the animal

        // Constructor method to initialize an Animal instance
        init(id: UInt64, name: String, population: UInt64) {
            self.id = id
            self.name = name
            self.population = population
        }
    }

    // Storage of animals using their unique Ids as keys in a dictionary
    pub var animals: {UInt64: Animal}

    // Contract initialization with an empty dictionary for animals
    init() {
        self.animals = {}
    }

    // Method to add a new Animal to the dictionary using its unique Id
    pub fun addAnimal(id: UInt64, name: String, population: UInt64) {
        let animal = Animal(id: id, name: name, population: population)
        self.animals[id] = animal
    }

    // Method to retrieve an Animal by its unique Id from the dictionary
    pub fun getAnimal(id: UInt64): Animal? {
        return self.animals[id]
    }
}
