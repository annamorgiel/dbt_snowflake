{{ config(materialized='view') }}

with source as (
select * 
from {{source('music', 'album')}}
), 

renamed as (
    select 
    albumid as album_id,
    artistid as artist_id, 
    title as album_title 
    from source
) 
select * from renamed