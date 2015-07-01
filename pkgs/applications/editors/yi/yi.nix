# This file was auto-generated by cabal2nix. Please do NOT edit manually!

{ cabal, binary, Cabal, cautiousFile, dataDefault, derive, dlist
, dynamicState, dyre, exceptions, filepath, glib, gtk, hashable
, hint, HUnit, lens, mtl, ooPrototypes, pango, parsec, pointedlist
, QuickCheck, random, regexBase, regexTdfa, safe, semigroups, split
, tagged, tasty, tastyHunit, tastyQuickcheck, text, time
, transformersBase, unixCompat, unorderedContainers, utf8String
, vty, wordTrie, xdgBasedir, yiLanguage, yiRope
}:

cabal.mkDerivation (self: {
  pname = "yi";
  version = "0.11.1";
  sha256 = "15m1wwrxmszl930az79lpgyz5rxg72gy8vi17ibpac1cszfdx192";
  isLibrary = true;
  isExecutable = true;
  buildDepends = [
    binary Cabal cautiousFile dataDefault derive dlist dynamicState
    dyre exceptions filepath glib gtk hashable hint lens mtl
    ooPrototypes pango parsec pointedlist QuickCheck random regexBase
    regexTdfa safe semigroups split tagged text time transformersBase
    unixCompat unorderedContainers utf8String vty wordTrie xdgBasedir
    yiLanguage yiRope
  ];
  testDepends = [
    filepath HUnit lens QuickCheck semigroups tasty tastyHunit
    tastyQuickcheck text yiLanguage yiRope
  ];
  configureFlags = "-fpango -fvty";
  noHaddock = self.stdenv.lib.versionOlder self.ghc.version "7.8";
  meta = {
    homepage = "http://haskell.org/haskellwiki/Yi";
    description = "The Haskell-Scriptable Editor";
    license = self.stdenv.lib.licenses.gpl2;
    platforms = self.ghc.meta.platforms;
    maintainers = with self.stdenv.lib.maintainers; [ fuuzetsu ];
  };
})