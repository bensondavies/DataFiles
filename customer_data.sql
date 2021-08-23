SELECT customerid, region, state, gender, age, address, city, customer_type, payment_type, income,
case 
	when region = 'East' then 
		case 
		when state in ('New York', 'New Jersey') and gender = 'Female' then 19.99
		else 
			29.99
		end
	when region = 'South' then 
		case when state in ('Florida', 'Georgia') and gender = 'Male' then 25.99
		else 
			35.99
		end
	when region = 'West' then 
		case 
		when state in ('California', 'Nevada') and gender = 'Female' then  29.99
		else 
			39.99
		end
	when region = 'Midwest' then 
		case 
		when state in ('Iowa','South Dakota') and gender = 'Male' then  21.99 
		else 31.99
		end 
else 0
end "promotion_price"
FROM public.customer_data;
