
-- sum of  vectors
addVectors :: (Num a) => (a,a) -> (a,a) ->(a,a)
addVectors (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)

addVectors' :: (Num a) => (a,a) -> (a,a) ->(a,a)
addVectors' a b = (fst a + fst b, snd a + snd b)

crossProduct :: (Num a) => (a,a,a) -> (a,a,a) -> (a,a,a)
crossProduct (x,y,z) (x2,y2,z2) = (ox, oy, oz)
    where
        ox = (y * z2) - (y2 * z)
        oy = (z * x2) - (z2 * x)
        oz = (x * y2) - (x2 * y)