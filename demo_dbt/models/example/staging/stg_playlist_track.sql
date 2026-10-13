{{ config(materialized='view') }}

with source as (
    select * 
    from {{ source('music', 'playlisttrack') }}
), 

renamed as (
    select 
        playlistid as playlist_id,
        trackid as track_id 
    from source
) 

select * from renamed