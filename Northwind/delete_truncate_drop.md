# SQL Data Removal Commands Comparison

## DELETE
- **DML** command
- **Purpose**: Selectively removes specific rows based on conditions
- **Structure Impact**: Preserves table structure and associated objects
- **Transaction Support**: Can be rolled back within transactions
- **Performance**: Slower for large datasets (logs individual deletions)
- **Use Case**: When specific data needs to be removed while keeping other records

## TRUNCATE
- **DDL** command
- **Purpose**: Removes all rows at once
- **Structure Impact**: Maintains table structure and associated objects
- **Transaction Support**: Cannot be rolled back
- **Performance**: Faster than DELETE (no individual row logging)
- **Use Case**: When needing to quickly clear all data while keeping table structure

## DROP
- **DDL** command
- **Purpose**: Completely removes table
- **Structure Impact**: removes table structure, data, and all associated objects(like indexes and constraints)
- **Transaction Support**: Cannot be rolled back
- **Performance**: Immediate table removal
- **Use Case**: When the entire table needs to be removed from database
