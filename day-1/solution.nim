import strutils, sequtils, math

proc fuelRequired(mass: int): int =
  mass.div(3) - 2

let
  strMasses = readFile("input.txt").strip().splitLines()
  individualFuel = strMasses.map(parseInt).map(fuelRequired)
  totalFuelRequired = individualFuel.sum()

echo totalFuelRequired