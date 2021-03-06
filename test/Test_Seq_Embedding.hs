module Test_Seq_Embedding where
{-
import Test.Tasty
import Test.Tasty.HUnit
import Aetherling.ASTs.Sequence
import Aetherling.Interpretations.Sequence_Shallow_To_Deep
import Aetherling.Types.Declarations
import Data.Proxy
import GHC.TypeLits
import GHC.TypeLits.Extra
import Data.Either
import Aetherling.Types.Isomorphisms
two_abs = sym_input_int >>= absC >>> absC 
two_abs_DAG = DAG {
  nodes = [InputN {t = IntT},AbsN,AbsN],
  edges = [DAG_Edge {source = 0, sink = 1},DAG_Edge {source = 1, sink = 2}]}
two_abs_DAG_builder = DAG_Builder two_abs_DAG 3

add_of_two_abs = do
  x_val <- sym_input_int
  y_val <- sym_input_int
  x_abs <- absC x_val
  y_abs <- absC y_val
  x_y_abs_zipped <- atom_tupleC x_abs y_abs 
  addC x_y_abs_zipped
add_of_two_abs_DAG_builder = DAG_Builder
  (DAG
    [InputN {t = IntT},InputN {t = IntT}, AbsN, AbsN,
     ATupleN {t0 = IntT, t1 = IntT},AddN]
    [DAG_Edge {source = 0, sink = 2}, DAG_Edge {source = 1, sink = 3},
     DAG_Edge {source = 2, sink = 4}, DAG_Edge {source = 3, sink = 4},
     DAG_Edge {source = 4, sink = 5}])
  6

mapped_add = do
  x_val :: Seq 2 0 (Atom_Tuple Atom_Int Atom_Int) <- sym_input_seq
  mapC (Proxy @2) addC x_val

mapped_add_output = DAG_Builder
  (DAG
    {nodes = [InputN {t = SeqT 2 0 (ATupleT IntT IntT)},
              MapN {n = 2, i = 0, f = DAG {nodes = [AddN],
                                           edges = [DAG_Edge {source = -1, sink = 0}]}}],
      edges = [DAG_Edge {source = 0, sink = 1}]})
  2
  
reduce_add = do
  x_val :: Seq 5 0 Atom_Int <- sym_input_seq
  reduceC (Proxy @5) addC x_val
  
reduce_add_output = DAG_Builder {
  get_builder_dag = DAG {nodes = [InputN {t = SeqT 5 0 IntT},
                                  ReduceN {n = 5, i = 0, f = DAG {nodes = [AddN],
                                                               edges = [DAG_Edge {source = -1, sink = 0}]}}],
                          edges = [DAG_Edge {source = 0, sink = 1}]},
  next_DAG_index = 2}

get_dag_no_errors f = fromRight empty_dag (get_deep_dag f)
sequence_embedding_tests = testGroup "Verifying Sequence Shallow To Deep Embeddings"
  [
    testCase "compose two unary functions" $ get_dag_no_errors two_abs @?= two_abs_DAG_builder,
    testCase "zip two unary functions into binary function" (
      get_dag_no_errors add_of_two_abs @?= add_of_two_abs_DAG_builder
      ),
    testCase "adding two sequences of length two" (
      get_dag_no_errors mapped_add @?= mapped_add_output
      ),
    testCase "reducing a sequence with add" (
      get_dag_no_errors reduce_add @?= reduce_add_output)
  ]
-}
