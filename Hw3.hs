module Hw3 where

import Data.List (union, delete)

type Symbol = String

data Expr
  = Var Symbol
  | App Expr Expr
  | Lambda Symbol Expr
  deriving Eq

instance Show Expr where
  show (Var x) = x
  show (App e1 e2) = "(" ++ show e1 ++ " " ++ show e2 ++ ")"
  show (Lambda x e) = "(\\ " ++ x ++ " -> " ++ show e ++ ")"

eval :: Expr -> Expr
eval e = case reduce e of
  Nothing -> e
  Just e' -> eval e'

reduce :: Expr -> Maybe Expr
reduce (Var _) = Nothing
reduce (App (Lambda x e1) e2) = Just (subst e1 x e2)
reduce (App e1 e2) = case reduce e1 of
  Just e1' -> Just (App e1' e2)
  Nothing -> case reduce e2 of
    Just e2' -> Just (App e1 e2')
    Nothing -> Nothing
reduce (Lambda x e) = case reduce e of
  Just e' -> Just (Lambda x e')
  Nothing -> Nothing

subst :: Expr -> Symbol -> Expr -> Expr
subst (Var y) x e
  | x == y = e
  | otherwise = Var y
subst (App e1 e2) x e = App (subst e1 x e) (subst e2 x e)
subst (Lambda y expr) x e
  | x == y = Lambda y expr
  | y `elem` freeVars expr = subst (alphaConvert $ Lambda y expr) x e
  | otherwise = Lambda y $ subst expr x e

freeVars :: Expr -> [Symbol]
freeVars (Var x) = [x]
freeVars (App e1 e2) = freeVars e1 `union` freeVars e2
freeVars (Lambda x expr) = delete x $ freeVars expr

alphaConvert :: Expr -> Expr
alphaConvert (Lambda x expr) =
    let z = freshVar $ freeVars expr in Lambda z $ subst expr x $ Var z

freshVar :: [Symbol] -> Symbol
freshVar used =
    let maxNumUsed = maximum $ -1 : map getNum used in "a" ++ show maxNumUsed

getNum :: String -> Int
getNum s =
    case reads $ drop 1 s of [(n, "")] -> n; _ -> -1

main :: IO ()
main = do 
    putStrLn "Hello World!"