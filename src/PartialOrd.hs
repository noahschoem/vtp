module PartialOrd where

-- | Defines a partial ordering.
--   Inspired by Data.Number.PartialOrd,
--   but we won't need everything written there.
--   Additionally, the authors of Data.Number.PartialOrd
--   do some funky things with floats and doubles and
--   need to use the FlexibleInstances, OverlappingInstances,
--   and UndecidableInstances language extensions.
--   We don't, so we're not using the Data.Number.PartialOrd 
--   library.
class PartialOrd a where
  cmp :: a -> a -> Maybe Ordering