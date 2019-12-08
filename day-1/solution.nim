import strutils, sequtils, math

proc fuelRequired(mass: int): int =
  mass.div(3) - 2

proc additionalFuelRequired(mass: int): int =
  var newMass = fuelRequired(mass)
  var addFuel = 0
  while newMass > 0:
    addFuel.inc(newMass)
    newMass = fuelRequired(newMass)

  addFuel

let
  strMasses = readFile("input.txt").strip().splitLines()
  masses = strMasses.map(parseInt)
  totalFuelRequired = masses.map(fuelRequired).sum()
  totalAdditionalFuelRequired = masses.map(additionalFuelRequired).sum()

echo totalFuelRequired
echo totalAdditionalFuelRequired
