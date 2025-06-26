-- ============================================
-- Script para remover todos os objetos do banco
-- Tabelas, Views, Procedures, Functions, Sequences
-- Compatível com SQL Server
-- ============================================

-- Apagar Foreign Keys
DECLARE @sql NVARCHAR(MAX) = N'';

SELECT @sql += 'ALTER TABLE [' + s.name + '].[' + t.name + '] DROP CONSTRAINT [' + fk.name + '];' + CHAR(13)
FROM sys.foreign_keys fk
JOIN sys.tables t ON fk.parent_object_id = t.object_id
JOIN sys.schemas s ON t.schema_id = s.schema_id;

EXEC sp_executesql @sql;

-- Apagar Tabelas
SET @sql = N'';

SELECT @sql += 'DROP TABLE [' + s.name + '].[' + t.name + '];' + CHAR(13)
FROM sys.tables t
JOIN sys.schemas s ON t.schema_id = s.schema_id;

EXEC sp_executesql @sql;

-- Apagar Views
SET @sql = N'';

SELECT @sql += 'DROP VIEW [' + s.name + '].[' + v.name + '];' + CHAR(13)
FROM sys.views v
JOIN sys.schemas s ON v.schema_id = s.schema_id;

EXEC sp_executesql @sql;

-- Apagar Stored Procedures
SET @sql = N'';

SELECT @sql += 'DROP PROCEDURE [' + s.name + '].[' + p.name + '];' + CHAR(13)
FROM sys.procedures p
JOIN sys.schemas s ON p.schema_id = s.schema_id;

EXEC sp_executesql @sql;

-- Apagar Functions (escalares, table-valued, inline)
SET @sql = N'';

SELECT @sql += 'DROP FUNCTION [' + s.name + '].[' + o.name + '];' + CHAR(13)
FROM sys.objects o
JOIN sys.schemas s ON o.schema_id = s.schema_id
WHERE o.type IN ('FN', 'TF', 'IF');

EXEC sp_executesql @sql;

-- Apagar Sequences
SET @sql = N'';

SELECT @sql += 'DROP SEQUENCE [' + s.name + '].[' + seq.name + '];' + CHAR(13)
FROM sys.sequences seq
JOIN sys.schemas s ON seq.schema_id = s.schema_id;

EXEC sp_executesql @sql;

-- ============================================
-- Fim do script
-- ============================================
