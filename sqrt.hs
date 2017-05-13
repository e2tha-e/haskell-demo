squareRoot :: Float -> Float
squareRoot n =
  checkGuess 1
  where
    checkGuess guess
      | tryAgain = checkGuess babylonianGuess
      | True = guess
      where
        tryAgain = abs (guess ^ 2 - n) > 0.000001
        babylonianGuess = (guess + (n / guess)) / 2
