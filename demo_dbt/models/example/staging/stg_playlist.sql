{{ config(materialized='view') }}

with source as (
    select * 
    from {{ source('music', 'playlist') }}
), 

renamed as (
    select 
        playlistid as playlist_id,
        name as playlist_name 
    from source
) 

select * from renamed