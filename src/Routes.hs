{-# LANGUAGE OverloadedStrings, TypeFamilies, QuasiQuotes,
             TemplateHaskell, GADTs, FlexibleContexts,
             MultiParamTypeClasses, DeriveDataTypeable,
             GeneralizedNewtypeDeriving, ViewPatterns #-}
module Routes where
import Yesod
import Model

pRoutes = [parseRoutes|
  / HomeR GET
  /api/authors AuthorsR GET POST
  /api/authors/#AuthorId AuthorR GET PUT DELETE

  /api/posts PostsR GET POST
  /api/posts/#PostId PostR GET PUT DELETE

  /api/tags TagsR GET POST
  /api/tags/#TagId TagR GET PUT DELETE

  /api/collections CollectionsR GET POST
  /api/collections/#CollectionId CollectionR GET PUT DELETE

  /api/collections/#CollectionId/posts PostCollectionsR GET
  /api/collections/#CollectionId/posts/#PostId PostCollectionR POST DELETE
|]

{-
/login LoginR GET POST
/logout LogoutR GET
/error ErrorR GET



/api/collections CollectionsR GET POST
/api/collections/#CollectionId CollectionR GET PUT DELETE
-}
