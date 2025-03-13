module PyramidalNumbers where
    calcTriangleNumber :: Int -> Int
    calcTriangleNumber n = n * (n + 1) `div` 2

    calcPyramidalNumber :: Int -> Int
    calcPyramidalNumber n = sum [calcTriangleNumber x | x <- [1..n]]