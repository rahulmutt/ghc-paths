{-# OPTIONS_GHC -fno-full-laziness #-}
{-# LANGUAGE CPP #-}

module GHC.Paths (libdir) where

import System.IO.Unsafe
import System.Directory

{-# NOINLINE libdir #-}
libdir :: FilePath
libdir  = unsafePerformIO $ getAppUserDataDirectory "eta"
