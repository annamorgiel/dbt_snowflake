{{ config(materialized='view') }}

with source as (
    select * 
    from {{ source('music', 'artist') }}
), 

renamed as (
    select 
        artistid as artist_id,
        name as artist_name,
        birthyear as birth_year,
        country 
    from source
) 

select * from renamed