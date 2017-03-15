{-# OPTIONS_GHC -fno-full-laziness #-}
{-# LANGUAGE CPP #-}

module GHC.Paths (libdir, ghc) where

import System.IO.Unsafe
import System.Directory
import Data.Maybe (fromJust)

{-# NOINLINE libdir #-}
libdir :: FilePath
libdir  = unsafePerformIO $ getAppUserDataDirectory "eta"

{-# NOINLINE ghc #-}
ghc :: FilePath
ghc  = unsafePerformIO $ fmap fromJust (findExecutable "eta")
