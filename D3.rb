# SUBSET A

Array.prototype.myMap = function(fn) {
	var answer = [];

	this.forEach (function(el) {
		answer.push(fn(el))
		});
	return answer;
}

SELECT 
employees.*
FROM
employees 
JOIN 
departments ON employee.department_id = department.id
WHERE
department.name = "given_name"


# SUBSET B

SELECT 
COUNT(*)
FROM
users;

User.count;

SELECT
COUNT(*)
FROM
users
WHERE 
users.status == "active";

User.where(status: "active").length;

SELECT
COUNT(*)
FROM 
users
WHERE 
users.last_visit BETWEEN DATETIME() AND given_time;

User.where("last_visit > Time.now - given_time").length

def folding_cipher(string)
	folded_alphabet = Hash[('a'..'z').to_a.zip(('a'..'z').to_a.reverse)]
	array = string.chars.map do |char|
		folded_alphabet[char]
	end

	return array.join("")
end