# DailySales: NO pk

SELECT  date_id, make_name, count(distinct lead_id) as unique_leads, 
        count(distinct partner_id) as unique_partners
FROM    dailysales
GROUP BY date_id, make_name