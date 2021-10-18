module TypesDoc where
{-
'Int' - range (+- 536870911) = (2^29 - 1)

'Integer' - unbounded type without underflow/overflow

Float, Double

Data.Ratio for 'Ratio'
Data.Char for 'Char'


List - [1, 2, 3] - Linked list
    Structure [1] -> [2] -> [3] -> [], where hear = [1], tail = [2] ++ [3] ++ []

    each list can handle elements of only a single type
    functions:
        reverse, [1, 2, 3] ++ [4, 5, 6] same as [Char]

        1 : 2 : 3 : [] -> [1, 2, 3]

        `null` - List -> Bool. is null list

        head [1, 2, 3] = 1
        tail [1, 2, 3] = [2, 3]

     or [True, ...] :: if any val = True => expr = True. Empty = False
    and [True, ...] :: if all val = True => expr = True. Empty = True

Bool :  True, False, &&, ||, not, ==, >, <, >=, <=
        /= - Not Equal

-}
