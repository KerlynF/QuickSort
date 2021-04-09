main :: IO ()
main = undefined

qS :: [Int] -> [Int]
qS [] = []
qS list = qS lList ++ pList ++ qS rList
    where 
        p :: Int
        p = head list

        lList :: [Int]
        lList = filter (<p) list

        rList :: [Int]
        rList = filter (>p) list

        pList :: [Int]
        pList = filter (==p) list
