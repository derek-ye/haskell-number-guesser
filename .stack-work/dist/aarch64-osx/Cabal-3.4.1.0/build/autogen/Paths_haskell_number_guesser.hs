{-# LANGUAGE CPP #-}
{-# LANGUAGE NoRebindableSyntax #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
{-# OPTIONS_GHC -Wno-missing-safe-haskell-mode #-}
module Paths_haskell_number_guesser (
    version,
    getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

#if defined(VERSION_base)

#if MIN_VERSION_base(4,0,0)
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#else
catchIO :: IO a -> (Exception.Exception -> IO a) -> IO a
#endif

#else
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#endif
catchIO = Exception.catch

version :: Version
version = Version [0,1,0,0] []
bindir, libdir, dynlibdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/Users/derek/haskell-number-guesser/.stack-work/install/aarch64-osx/9e382fd68f4dcc5602bba9d988831a5d683a4d02fcf82269e313ada2988ae67b/9.0.2/bin"
libdir     = "/Users/derek/haskell-number-guesser/.stack-work/install/aarch64-osx/9e382fd68f4dcc5602bba9d988831a5d683a4d02fcf82269e313ada2988ae67b/9.0.2/lib/aarch64-osx-ghc-9.0.2/haskell-number-guesser-0.1.0.0-5n3ClNo3LZw6N3hoZLpgIT"
dynlibdir  = "/Users/derek/haskell-number-guesser/.stack-work/install/aarch64-osx/9e382fd68f4dcc5602bba9d988831a5d683a4d02fcf82269e313ada2988ae67b/9.0.2/lib/aarch64-osx-ghc-9.0.2"
datadir    = "/Users/derek/haskell-number-guesser/.stack-work/install/aarch64-osx/9e382fd68f4dcc5602bba9d988831a5d683a4d02fcf82269e313ada2988ae67b/9.0.2/share/aarch64-osx-ghc-9.0.2/haskell-number-guesser-0.1.0.0"
libexecdir = "/Users/derek/haskell-number-guesser/.stack-work/install/aarch64-osx/9e382fd68f4dcc5602bba9d988831a5d683a4d02fcf82269e313ada2988ae67b/9.0.2/libexec/aarch64-osx-ghc-9.0.2/haskell-number-guesser-0.1.0.0"
sysconfdir = "/Users/derek/haskell-number-guesser/.stack-work/install/aarch64-osx/9e382fd68f4dcc5602bba9d988831a5d683a4d02fcf82269e313ada2988ae67b/9.0.2/etc"

getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "haskell_number_guesser_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "haskell_number_guesser_libdir") (\_ -> return libdir)
getDynLibDir = catchIO (getEnv "haskell_number_guesser_dynlibdir") (\_ -> return dynlibdir)
getDataDir = catchIO (getEnv "haskell_number_guesser_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "haskell_number_guesser_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "haskell_number_guesser_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
