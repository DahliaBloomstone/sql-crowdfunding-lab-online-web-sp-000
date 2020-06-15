def selects_the_titles_of_all_projects_and_their_pledge_amounts
"SELECT projects.title, SUM(pledges.amount) FROM projects
    INNER JOIN pledges
      ON projects.id = pledges.project_id
    GROUP BY projects.title;"
end

def selects_the_user_name_age_and_pledge_amount_for_all_pledges_alphabetized_by_name
"SELECT name, age, SUM(pledges.amount) AS pledge_amount FROM users INNER JOIN pledges ON pledges.user_id = users.id GROUP BY name"
end

def selects_the_titles_and_amount_over_goal_of_all_projects_that_have_met_their_funding_goal
"SELECT title, (SUM(pledges.amount) - funding_goal) AS amount_over FROM projects INNER JOIN pledges ON pledges.project_id = projects.id GROUP BY title HAVING SUM(pledges.amount) >= projects.funding_goal"
end

def selects_user_names_and_amounts_of_all_pledges_grouped_by_name_then_orders_them_by_the_amount_and_users_name
"SELECT name, SUM(pledges.amount) AS amount_pledged FROM users INNER JOIN pledges ON pledges.user_id = users.id GROUP BY name ORDER BY amount_pledged ASC, name ASC"
end

def selects_the_category_names_and_pledge_amounts_of_all_pledges_in_the_music_category
"SELECT category, pledges.amount FROM projects INNER JOIN pledges ON pledges.project_id = projects.id WHERE category = 'music'"
end

def selects_the_category_name_and_the_sum_total_of_the_all_its_pledges_for_the_books_category
"SELECT category, SUM(pledges.amount) AS pledge_amount FROM projects INNER JOIN pledges ON pledges.project_id = projects.id WHERE category = 'books' GROUP BY category"
end
