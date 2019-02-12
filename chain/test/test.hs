import           Universum

import           Test.Hspec (hspec)

import           Spec (spec)

import qualified Test.Pos.Chain.Block.Bi
import qualified Test.Pos.Chain.Delegation.Bi
import qualified Test.Pos.Chain.Genesis.Json
import qualified Test.Pos.Chain.Ssc.Bi
import qualified Test.Pos.Chain.Ssc.Json
import qualified Test.Pos.Chain.Txp.Bi
import qualified Test.Pos.Chain.Txp.Json
import qualified Test.Pos.Chain.Update.Bi
import qualified Test.Pos.Chain.Update.Json
import           Test.Pos.Util.Tripping (runTests)
import           Test.Pos.Chain.Block.BlockSpec (spec2)

main :: IO ()
main =
    if True
        then existingTests
        else hspec spec2

existingTests :: IO ()
existingTests = do
    hspec spec
    runTests
        [ Test.Pos.Chain.Block.Bi.tests
        , Test.Pos.Chain.Delegation.Bi.tests
        , Test.Pos.Chain.Genesis.Json.tests
        , Test.Pos.Chain.Ssc.Bi.tests
        , Test.Pos.Chain.Ssc.Json.tests
        , Test.Pos.Chain.Txp.Bi.tests
        , Test.Pos.Chain.Txp.Json.tests
        , Test.Pos.Chain.Update.Bi.tests
        , Test.Pos.Chain.Update.Json.tests
        ]
