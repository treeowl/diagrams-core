-----------------------------------------------------------------------------
-- |
-- Module      :  Graphics.Rendering.Diagrams
-- Copyright   :  (c) 2011 diagrams-core team (see LICENSE)
-- License     :  BSD-style (see LICENSE)
-- Maintainer  :  diagrams-discuss@googlegroups.com
--
-- The core library of primitives forming the basis of an embedded
-- domain-specific language for describing and rendering diagrams.
-- For most library-level and user-level code, it should be sufficient
-- to import this module, which simply re-exports useful functionality
-- from other modules in the core library.  Library writers needing
-- finer-grained access or functionality may occasionally find it
-- useful to directly import one of the constituent core libraries:
--
--   * "Graphics.Rendering.Diagrams.Transform" for invertible linear
--     and projective transformations
--
--   * "Graphics.Rendering.Diagrams.Points" for points (as distinct from vectors)
--
--   * "Graphics.Rendering.Diagrams.Names" for names used to identify locations
--     within diagrams
--
--   * "Graphics.Rendering.Diagrams.Bounds" for functional bounding regions.
--
--   * "Graphics.Rendering.Diagrams.HasOrigin" for a type class governing things
--     with an intrinsic notion of a \"local origin\".
--
--   * "Graphics.Rendering.Diagrams.Basics" for backends and the
--     'Diagram' type itself.
--
-----------------------------------------------------------------------------

module Graphics.Rendering.Diagrams
       ( -- * Associated vector spaces

         V

         -- * Points

       , Point(..), origin, (*.)

         -- * Transformations
       , Transformation
       , inv
       , apply
       , papply
       , fromLinear

         -- ** Some specific transformations
       , translation, translate, moveTo
       , scaling, scale

         -- ** The Transformable class

       , Transformable(..)

         -- * Names

       , Name, IsName(..), Qualifiable(..)
       , NameSet
       , fromNames
       , rememberAs

       , lookupN

         -- * Backends

       , Backend(..)
       , MultiBackend(..)
       , Renderable(..)

         -- * Attributes and styles

       , AttributeClass
       , Attribute, mkAttr, unwrapAttr

       , Style, HasStyle(..)
       , getAttr, setAttr, addAttr
       , applyAttr

         -- * Primtives

       , Prim(..), nullPrim

         -- * Bounds

       , Bounds(..)
       , Boundable(..)
       , boundary
       , diameter, radius

         -- * Things with local origins

       , HasOrigin(..), moveOriginBy

         -- * Diagrams

       , AnnDiagram, mkAD, Diagram
       , prims
       , bounds, names, annot, sample

       , named

       , atop

         -- * Annotations

       , Annot(..)

         -- ** Freezing and thawing

       , freeze

       ) where

import Graphics.Rendering.Diagrams.V
import Graphics.Rendering.Diagrams.Transform
import Graphics.Rendering.Diagrams.Bounds
import Graphics.Rendering.Diagrams.HasOrigin
import Graphics.Rendering.Diagrams.Annot
import Graphics.Rendering.Diagrams.Points
import Graphics.Rendering.Diagrams.Names
import Graphics.Rendering.Diagrams.Style
import Graphics.Rendering.Diagrams.Core


