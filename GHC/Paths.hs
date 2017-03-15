{-# OPTIONS_GHC -fno-full-laziness #-}
{-# LANGUAGE CPP #-}

module GHC.Paths (libdir, ghc) where

import System.IO.Unsafe
import System.Directory

{-# NOINLINE libdir #-}
libdir :: FilePath
libdir  = unsafePerformIO $ getAppUserDataDirectory "eta"

{-# NOINLINE ghc #-}
ghc :: FilePath
ghc  = unsafePerformIO $ findExecutable "eta"
