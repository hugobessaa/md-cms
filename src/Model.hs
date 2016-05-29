{-# LANGUAGE OverloadedStrings, TypeFamilies, QuasiQuotes,
             TemplateHaskell, GADTs, FlexibleContexts,
             MultiParamTypeClasses, DeriveDataTypeable,
             GeneralizedNewtypeDeriving, ViewPatterns #-}
module Model where
import Yesod
import Data.Text

pModel :: [EntityDef]
pModel = [persistLowerCase|
Author json
  name Text
  nick Text
  password Text
  deriving Show

Post
  title Text
  content Text
  publishDate Text
  authorId Text
  deriving Show

Tag
  name Text
  authorId AuthorId
  deriving Show

Collection
  name Text
  authorId AuthorId
  deriving Show

PostTag
  postId PostId
  authorId AuthorId
  deriving Show

PostCollection
  postId PostId
  collectionId CollectionId
  deriving Show
|]