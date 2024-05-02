-- write your queries here

SELECT * FROM owners JOIN vehicles ON owners.id = vehicles.owner_id;

SELECT owners.first_name, owners.last_name, count(*) FROM owners JOIN vehicles ON owners.id = vehicles.owner_id GROUP BY first_name, last_name ORDER BY owners.first_name;

SELECT owners.first_name, owners.last_name, round(avg(vehicles.price)) AS average_price, count(*) FROM owners JOIN vehicles ON owners.id = vehicles.owner_id GROUP BY first_name, last_name HAVING count(*) > 1 AND round(avg(vehicles.price)) > 10000 
