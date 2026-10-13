{{ config(materialized='view') }}

with source as (
    select * 
    from {{ source('music', 'album') }}
), 

renamed as (
    select 
        albumid as album_id,
        title as album_title,
        artistid as artist_id, 
        prod_year,
        cd_year
    from source
) 

select * from renamed