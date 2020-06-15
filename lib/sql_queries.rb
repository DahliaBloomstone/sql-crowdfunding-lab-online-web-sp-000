def selects_the_titles_of_all_projects_and_their_pledge_amounts
"Write your SQL query Here"	  "SELECT projects.title, SUM(pledges.amount) FROM projects JOIN pledges ON projects.id = pledges.project_id GROUP BY projects.title;"
end	end


def selects_the_user_name_age_and_pledge_amount_for_all_pledges	def selects_the_user_name_age_and_pledge_amount_for_all_pledges
"Write your SQL query Here"	  "SELECT users.name, users.age, SUM(pledges.amount) FROM users JOIN pledges ON users.id = pledges.user_id GROUP BY users.name;"
end	end


def selects_the_titles_of_all_projects_that_have_met_their_funding_goal	def selects_the_titles_of_all_projects_that_have_met_their_funding_goal
"Write your SQL query Here"	  "SELECT projects.title, (projects.funding_goal - SUM(pledges.amount)) AS amount_left FROM projects JOIN pledges ON projects.id = pledges.project_id GROUP BY projects.title HAVING amount_left <= 0;"
end	end


def selects_user_names_and_amounts_of_all_pledges_grouped_by_name_then_orders_them_by_the_amount	def selects_user_names_and_amounts_of_all_pledges_grouped_by_name_then_orders_them_by_the_amount
"Write your SQL query Here"	  "SELECT users.name, SUM(pledges.amount) FROM users JOIN pledges ON users.id = pledges.user_id GROUP BY users.name ORDER BY SUM(pledges.amount);"
end	end


def selects_the_category_names_and_pledge_amounts_of_all_pledges_in_the_music_category	def selects_the_category_names_and_pledge_amounts_of_all_pledges_in_the_music_category
"Write your SQL query Here"	  "SELECT projects.category, pledges.amount FROM projects JOIN pledges ON projects.id = pledges.project_id WHERE projects.category = 'music';"
end	end


def selects_the_category_name_and_the_sum_total_of_the_all_its_pledges_for_the_book_category	def selects_the_category_name_and_the_sum_total_of_the_all_its_pledges_for_the_book_category
"Write your SQL query Here"	  "SELECT projects.category, SUM(pledges.amount) FROM projects JOIN pledges ON projects.id = pledges.project_id WHERE projects.category = 'books' GROUP BY projects.category;"
end	end
