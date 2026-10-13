{{ config(materialized='view') }}

with source as (
    select * 
    from {{ source('music', 'genre') }}
), 

renamed as (
    select 
        genreid as genre_id,
        name as genre_name 
    from source
) 

select * from renamed