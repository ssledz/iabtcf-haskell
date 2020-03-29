module Main where

import qualified Data.ByteString.Char8 as C
import qualified Data.ByteString as B
import qualified Data.ByteString.Base64 as Base64

main :: IO ()
main = do
    let helloHaskell = "Hello, Haskell !"
    let str = C.pack helloHaskell
    let strEnc = show $ Base64.encode str
    putStrLn $ "base64.encoded(" ++ helloHaskell ++ ") = " ++ strEnc
