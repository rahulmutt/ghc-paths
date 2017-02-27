{-# LANGUAGE CPP #-}

module GHC.Paths (libdir) where

import System.Directory

{-# NOINLINE libdir #-}
libdir :: FilePath
libdir  = unsafePerformIO $ getAppUserDataDirectory "eta"
