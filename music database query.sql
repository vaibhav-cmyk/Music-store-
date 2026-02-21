-- who is the senior most employee based on the job title
select * from employee
order by levels desc
limit 1

-- which country has the most invoices
select count(*) as c, billing_country
from invoice
group by billing_country
order by c desc


-- what are top 3 values of total invoices
select total from invoice
order by total desc 
limit 3

-- which city has the best customers ?
-- we would like to throw a promotional music festival in the city we made the most money. 
-- write a query that returns one city that has highest sum of invoice total.
-- return both the city and sum of all invoice totals
select sum(total) as invoice_total, billing_city
from invoice
group by billing_city
order by invoice_total desc


-- who is the best customer? 
-- the customer who has spent the most money will be declared as the best customer. 
-- write a query that returns the person whoc has spent the most  money.
select customer.customer_id, customer.first_name, customer.last_name, sum(invoice.total) as total
from customer
join invoice on customer.customer_id = invoice.customer_id
group by customer.customer_id
order by total DESC
limit 1


-- write a query to return email, first nam, laast name, genre of all rock music listener. 
-- return your list ordered alphabetically by email starting with A 
select distinct  email,first_name, last_name
from customer
join invoice on customer.customer_id = invoice.customer_id 
join invoice_line on invoice.invoice_id = invoice_line.invoice_id
where track_id in(
	select track_id from track
	join genre on track.genre_id = genre.genre_id
	where genre.name like 'Rock'
)
order by email;


-- lets invite the artist who has written the most rock music in our dataset. 
-- write a query that returns artist name and total track count of the top 10 rock bands
select artist.artist_id, artist.name, count(artist.artist_id) as number_of_songs
from track 
join album on album.album_id = track.album_id
join artist on artist.artist_id = album.artist_id
join genre on genre.genre_id = track.genre_id
where genre.name like 'Rock'
group by artist.artist_id
order by number_of_songs desc
limit 10

-- returns all the track names that have
-- a song length 
-- longer than the average song length.
-- return the name and milliseconds for 
-- each track. order by the 
-- length with the longest songs listed first.

select name, milliseconds
from track 
where milliseconds > (
	select avg(milliseconds) as avg_lenght
	from track
)
order by milliseconds desc















