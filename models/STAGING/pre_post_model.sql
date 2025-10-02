{{ config(
    materialized="table",
        pre_hook="delete from {{ this }} where ID is null",
        post_hook="TRUNCATE TABLE {{ref('customers')}}"
    
) }}


WITH tb1 as(
    select 
    *
    from {{ref('customers')}})
select * from tb1