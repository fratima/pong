
fieldDefinition = {}

-- Definition of mazes
-- Maze -----
-- -1= boundary (not to be used)
--  0= wall
--  1= walk way
--  2= have been there already
--  3= door

fieldDefinition.freeWay       = 1
fieldDefinition.haveBeenThere = 2
fieldDefinition.lockedDoor    = 3 -- this means it is a wall with a door
fieldDefinition.unlockedDoor  = 4 -- this means it is a free space with a door drawn
fieldDefinition.free          = {freeWay,haveBeenThere}
fieldDefinition.blocked       = {lockedDoor}



fieldDefinition.stdField={
{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
{1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0},
{1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0},
{1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0},
{1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0},
{1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0},
{1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0},
{1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0},
{1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0},
{1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0},
{1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0},
{1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0},
{1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0},
{1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0},
{1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0},
{1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0},
{1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0},
{1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0},
{1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0},
{1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0},
{1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0},
{0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}}


fieldDefinition.mazeRunner ={
  {0,0,0,0,0,0,0,1,0,0,0,0,0,0,0},
  {0,1,1,1,1,1,1,1,1,1,1,1,1,1,0},
  {0,1,0,0,1,0,0,1,0,0,1,0,0,1,0},
  {0,1,0,0,1,0,0,1,0,0,1,0,0,1,0},
  {0,1,1,1,1,1,1,1,1,1,1,1,1,1,0},
  {0,1,0,0,1,0,0,1,0,0,0,0,0,1,0},
  {0,1,0,0,1,0,0,1,0,0,0,0,0,1,0},
  {0,1,1,1,1,1,1,1,1,1,1,1,1,1,0},
  {0,1,0,0,1,0,0,1,0,0,0,0,0,1,0},
  {0,1,0,0,1,0,0,1,0,0,0,0,0,1,0},
  {0,1,0,0,1,0,0,1,0,0,0,0,0,1,0},
  {0,1,1,1,1,1,1,1,1,1,1,1,1,1,0},
  {0,1,0,0,1,0,0,1,0,0,0,0,0,1,0},
  {0,1,0,0,1,0,0,1,0,0,0,0,0,1,0},
  {0,1,1,1,1,1,1,1,1,1,1,1,1,1,0},
  {0,0,0,0,0,0,0,1,0,0,0,0,0,0,0}
  }
  
fieldDefinition.moveTheBox = {
{0,0,0,0,0,0,0,0,0},
{0,1,1,1,1,1,1,1,0},
{0,1,1,1,1,1,1,1,0},
{0,1,1,1,1,1,1,1,0},
{0,1,1,1,1,1,1,1,0},
{0,1,1,1,1,1,1,1,0},
{0,1,1,1,1,1,1,1,0},
{0,1,1,1,1,1,1,1,0},
{0,0,0,0,0,0,0,0,0}
}

return fieldDefinition