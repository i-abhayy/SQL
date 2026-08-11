select * from Cinema 
where Mod(id,2)<>0 and description !='Boring'
order by rating DESC;
