{{ config(materialized='view') }}

with source as (
    select * 
    from {{ source('music', 'track') }}
), 

renamed as (
    select 
        trackid as track_id,
        name as track_name,
        mediatypeid as media_type_id,
        genreid as genre_id,
        albumid as album_id,
        composer,
        milliseconds,
        bytes,
        unitprice as unit_price
    from source
) 

select * from renamed