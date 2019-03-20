module Aetherling.LanguageDeclarations.SequenceDeclaration where 
import Aetherling.Types.TypeDeclarations
import Aetherling.Types.TypeFunctions
import Data.Bits
import Data.Proxy
import GHC.TypeLits
import GHC.TypeLits.Extra
import Data.Typeable
import GHC.Exts (Constraint)
import qualified Data.Vector.Sized as V

class Monad m => Space_Time_Language m where
  -- unary operators
  id :: (Check_Type_Is_Atom a) => a -> m a
  absC :: Atom_Int -> m Atom_Int
  notC :: Atom_Bit -> m Atom_Bit

  -- binary operators
  addC :: Atom_Tuple Atom_Int Atom_Int -> m Atom_Int
  eqC :: (Check_Type_Is_Atom a) =>
    Atom_Tuple a a -> m Atom_Bit

  -- generators
  lut_genC :: (KnownNat (Type_Size a), Check_Type_Is_Atom a) =>
    [a] -> Atom_Int -> m a

  const_genC :: (KnownNat (Type_Size a), Check_Type_Is_Atom a) =>
    a -> Atom_Unit -> m a

  -- sequence operators
  up_1d_sC :: (KnownNat n, 1 <= n, KnownNat (Type_Size a),
               Check_Type_Is_Atom a, Typeable (Proxy a)) =>
    Proxy n -> SSeq 1 a -> m (SSeq n a)
  up_1d_tC :: (KnownNat n, 1 <= n, KnownNat (Type_Size a),
               Check_Type_Is_Atom a, Typeable (Proxy a)) =>
    Proxy n -> TSeq 1 (n-1) a -> m (TSeq n 0 a)

  down_1d_sC :: (KnownNat n, 1 <= n, KnownNat (Type_Size a),
                 Check_Type_Is_Atom a, Typeable (Proxy a)) =>
    Proxy n -> SSeq n a -> m (SSeq 1 a)
  down_1d_tC :: (KnownNat n, 1 <= n, KnownNat (Type_Size a),
                 Check_Type_Is_Atom a, Typeable (Proxy a)) =>
    Proxy n -> TSeq n 0 a -> m (TSeq 1 (n-1) a)

  partition_tsC :: (KnownNat no, KnownNat ni, 1 <= no, 1 <= ni) =>
    Proxy no -> Proxy ni ->
    TSeq 1 (no-1) (SSeq (no GHC.TypeLits.* ni) a) -> m (TSeq no 0 (Seq ni a))

  unpartition_tsC :: (KnownNat no, KnownNat ni, 1 <= no, 1 <= ni) =>
    Proxy no -> Proxy ni ->
    TSeq no 0 (Seq ni a) -> m (TSeq 1 (no-1) (SSeq (no GHC.TypeLits.* ni) a))

  partition_ssC :: (KnownNat no, KnownNat ni, 1 <= no, 1 <= ni) =>
    Proxy no -> Proxy ni ->
    SSeq (no GHC.TypeLits.* ni) a -> m (SSeq no (Seq ni a))

  unpartition_ssC :: (KnownNat no, KnownNat ni, 1 <= no, 1 <= ni) =>
    Proxy no -> Proxy ni ->
    SSeq no (Seq ni a) -> m (SSeq (no GHC.TypeLits.* ni) a)

  -- higher order operators
  map_sC :: (KnownNat n) =>
    Proxy n -> (a -> m b) -> (Seq n a -> m (Seq n b))
  map_tC :: (KnownNat n) =>
    Proxy n -> (a -> m b) -> (Seq n a -> m (Seq n b))

  -- tuple operations
  fstC :: (Check_Type_Is_Atom a, Check_Type_Is_Atom b) =>
    Atom_Tuple a b -> m a
  sndC :: (Check_Type_Is_Atom a, Check_Type_Is_Atom b) =>
    Atom_Tuple a b -> m b
  nthC :: (KnownNat i, KnownNat n, (i+1) <= n) =>
    Proxy i -> Atom_NTuple n a -> m a

  zipC :: (Check_Types_Conform a b) =>
    a -> b -> m (Zipped_Types a b)

  -- composition operators
  (>>>) :: (a -> m b) -> (b -> m c) -> (a -> m c)

class Space_Time_Language m => Symbolic_Space_Time_Language m where
  input_unit :: m Atom_Unit
  input_int :: m Atom_Int
  input_bit :: m Atom_Bit
  input_tuple :: m (Atom_Tuple a b)
  input_ntuple :: m (Atom_NTuple n a)
  input_sseq :: m (SSeq n a)
  input_tseq :: m (TSeq n v a)
