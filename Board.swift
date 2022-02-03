/*
*
* The Microwave program lets the user enter the food they want to heat up and how
* many of the items they want, then gives them the time they need to heat the items up.
*
* @author Jakob
* @version 1.0
* @since 2020-11-26
*
*/
enum MyError: Error {
    case invalidInteger(String)
}

func lengthCalculator(height: Double, width: Double) -> Double {
    let oneBoardfoot: Double = 144

    let length: Double = oneBoardfoot / (height * width)

    return length
}

do {
    let heightStorage: Double
    let widthStorage: Double
    let lengthStorage: Double

    print("Enter the height(inch): ")
    if let heightInput: Double = Double(readLine()!) {
        heightStorage = heightInput
    } else {
        throw MyError.invalidInteger("Error")
    }
    print("Enter the width(inch): ")
    if let widthInput: Double = Double(readLine()!) {
        widthStorage = widthInput
    } else {
        throw MyError.invalidInteger("Error")
    }

    lengthStorage = lengthCalculator(
        height: heightStorage, width: widthStorage)

    print("The wood should be \(lengthStorage) inch(es) long")

} catch {
    print("That was an invalid input")
}
print("\nDone.")
