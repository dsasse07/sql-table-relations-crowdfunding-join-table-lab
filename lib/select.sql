.headers on
.mode column
.width auto

-- SELECT * FROM users;
-- SELECT * FROM projects;
-- SELECT * FROM pledges

--selects_the_titles_of_all_projects_and_their_pledge_amounts_alphabetized_by_title
-- SELECT projects.title, SUM(pledges.amount) AS "Total Pledged" FROM projects INNER JOIN pledges ON projects.id = pledges.project_id GROUP BY projects.title ORDER BY projects.title ASC

--selects_the_user_name_age_and_pledge_amount_for_all_pledges_alphabetized_by_name
-- SELECT users.name, users.age, SUM(pledges.amount) AS "Pledge Total" FROM users INNER JOIN pledges ON users.id = pledges.user_id GROUP BY users.id ORDER BY users.name ASC

-- selects_the_titles_and_amount_over_goal_of_all_projects_that_have_met_their_funding_goal
-- SELECT projects.title, SUM(pledges.amount) - projects.funding_goal AS "Amount Over-Funded" FROM projects INNER JOIN pledges ON projects.id = pledges.project_id GROUP BY projects.id HAVING (SUM(pledges.amount) - projects.funding_goal) >= 0;

-- selects_user_names_and_amounts_of_all_pledges_grouped_by_name_then_orders_them_by_the_summed_amount
-- SELECT users.name, SUM(pledges.amount) FROM users INNER JOIN pledges ON users.id = pledges.user_id GROUP BY users.name ORDER BY SUM(pledges.amount);

-- selects_the_category_names_and_pledge_amounts_of_all_pledges_in_the_music_category
-- SELECT projects.category, pledges.amount FROM projects INNER JOIN pledges ON projects.id = pledges.project_id WHERE projects.category = "music";

-- selects_the_category_name_and_the_sum_total_of_the_all_its_pledges_for_the_books_category
SELECT projects.category, SUM(pledges.amount) AS "Pledge Total" FROM projects INNER JOIN pledges ON projects.id = pledges.project_id GROUP BY projects.category HAVING projects.category = "books";