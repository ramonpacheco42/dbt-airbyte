with dw_faturamento_model as (

    select pro.model as "Model"
        ,sum(pro.price) as "Faturamento"
    from public.airbyte_purchases pur inner join airbyte_products pro
    on pur.product_id = pro.id
    group by pro.model
    order by 2 desc 
)

    select * from dw_faturamento_model;