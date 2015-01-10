
--names 3d (X , Y , Z)

vector3down =       (0,-1,0)
vector3up =           (0,1,0)
vector3right =        (1,0,0)
vector3left =          (-1,0,0)
vector3forward =    (0,0,1)
vector3backward = (0,0,-1)


-- operations

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
		
magnitude :: (RealFloat a) => (a,a,a) -> a		
magnitude (x,y,z) =   sqrt(x^2 + y^2 + z^2)