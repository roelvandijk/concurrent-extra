{-# LANGUAGE NoImplicitPrelude, UnicodeSyntax #-}

module Main where

-------------------------------------------------------------------------------
-- Imports
-------------------------------------------------------------------------------

-- from base:
import System.IO ( IO )

-- from concurrent-extra:
import qualified Control.Concurrent.Event.Test         as Event     ( tests )
import qualified Control.Concurrent.Lock.Test          as Lock      ( tests )
import qualified Control.Concurrent.STM.Lock.Test      as STM.Lock  ( tests )
import qualified Control.Concurrent.RLock.Test         as RLock     ( tests )
import qualified Control.Concurrent.Broadcast.Test     as Broadcast ( tests )
import qualified Control.Concurrent.ReadWriteLock.Test as RWLock    ( tests )
import qualified Control.Concurrent.ReadWriteVar.Test  as RWVar     ( tests )

-- from test-framework:
import Test.Framework ( Test, defaultMain, testGroup )


-------------------------------------------------------------------------------
-- Tests
-------------------------------------------------------------------------------

main ∷ IO ()
main = defaultMain tests

tests ∷ [Test]
tests = [ testGroup "Pessimistic locking"
          [ testGroup "Event"         Event.tests
          , testGroup "Lock"          Lock.tests
          , testGroup "STM.Lock"      STM.Lock.tests
          , testGroup "RLock"         RLock.tests
          , testGroup "Broadcast"     Broadcast.tests
          , testGroup "ReadWriteLock" RWLock.tests
          , testGroup "ReadWriteVar"  RWVar.tests
          ]
        ]


-- The End ---------------------------------------------------------------------
