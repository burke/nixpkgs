{ cabal, deepseq, nonNegative, parsec, QuickCheck, random
, storableRecord, utilityHt
}:

cabal.mkDerivation (self: {
  pname = "numeric-prelude";
  version = "0.4.1";
  sha256 = "1y1dg4bk811xmz3p23g8kjl6vxns3gs8qj671971c06nccfl1h5r";
  isLibrary = true;
  isExecutable = true;
  buildDepends = [
    deepseq nonNegative parsec QuickCheck random storableRecord
    utilityHt
  ];
  meta = {
    homepage = "http://www.haskell.org/haskellwiki/Numeric_Prelude";
    description = "An experimental alternative hierarchy of numeric type classes";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
    maintainers = [ self.stdenv.lib.maintainers.andres ];
  };
})