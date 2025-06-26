SELECT 
    t.name AS Tabela,
    SUM(ISNULL(fk_counts.Numero_Conexoes, 0)) AS Conexoes
FROM sys.tables t
LEFT JOIN (
    SELECT 
        object_name(parent_object_id) AS Tabela,
        COUNT(*) AS Numero_Conexoes
    FROM sys.foreign_keys
    GROUP BY object_name(parent_object_id)
    
    UNION ALL
    
    SELECT 
        object_name(referenced_object_id) AS Tabela,
        COUNT(*) AS Numero_Conexoes
    FROM sys.foreign_keys
    GROUP BY object_name(referenced_object_id)
) AS fk_counts
    ON t.name = fk_counts.Tabela
GROUP BY t.name
ORDER BY Conexoes DESC, Tabela;
