{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE FlexibleInstances #-}

module Database.Relational.Schema.SQLite3Syscat.TableInfo where

import Data.Int (Int16, Int64)
import Database.Relational.Query.TH (defineTableTypesAndRecord)

import Database.Relational.Schema.SQLite3Syscat.Config (config)


$(defineTableTypesAndRecord config
  "pragma" "table_info"
  [
-- View "main.sqlite_master"
-- column                type                NULL
-- --------------------- ------------------- ------
-- cid                   integer             No
    ("cid", [t|Int64|]),
-- name                  text                No
    ("name", [t|String|]),
-- type                  text                No
    ("ctype", [t|String|]),
-- notnull               integer             No
    ("notnull", [t|Int16|]),
-- dflt_value            -                   Yes
    ("dflt_value", [t|Maybe String|]),
-- pk                    integer             No
    ("pk", [t|Int16|])
  ]
  [''Show])
