{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE FlexibleInstances #-}

module Database.Relational.Schema.SQLite3Syscat.IndexList where

import Data.Int (Int64)
import Database.Relational.Query.TH (defineTableTypesAndRecord)

import Database.Relational.Schema.SQLite3Syscat.Config (config)


$(defineTableTypesAndRecord config
  "pragma" "index_list"
  [
-- pragma "main.index_list"
-- column                type                NULL
-- --------------------- ------------------- ------
-- seq                   integer             No
    ("seq", [t|Int64|]),
-- name                  text                No
    ("name", [t|String|]),
-- unique                integer             No
    ("unique", [t|Int64|])
  ]
  [''Show])
