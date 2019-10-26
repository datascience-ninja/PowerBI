<<<<<<< HEAD
(x as text) as text =>
let
    maxIterations = Table.RowCount(ConversionTable) ,
 Iterations = List.Generate( () =>
              [Result = Replacer.ReplaceValue(x, ConversionTable[OldText]{0}, ConversionTable[NewText]{0}), Counter = 0],
                    each [Counter] < maxIterations,
                    each [Result = Replacer.ReplaceValue([Result], ConversionTable[OldText]{Counter}, ConversionTable[NewText]{Counter}),
                Counter = [Counter] +1], each [Result]),
  output = Iterations{maxIterations-1}
in
=======
(x as text) as text =>
let
    maxIterations = Table.RowCount(ConversionTable) ,
 Iterations = List.Generate( () =>
              [Result = Text.Replace(x, ConversionTable[OldText]{0}, ConversionTable[NewText]{0}), Counter = 0],
                    each [Counter] < maxIterations,
                    each [Result = Text.Replace([Result], ConversionTable[OldText]{Counter}, ConversionTable[NewText]{Counter}),
                Counter = [Counter] +1], each [Result]),
  output = Iterations{maxIterations-1}
in
>>>>>>> b6497497703d161e542f71c745bc188674cb2ec7
    output