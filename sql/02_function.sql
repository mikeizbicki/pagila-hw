/*
 * Find the actor_id of every actor whose first name starts with the indicated string.
 * Order the results from low to hi.
 */
CREATE OR REPLACE FUNCTION get_actor_ids(text) RETURNS TABLE(actor_id INTEGER) AS
$$
select actor_id from actor where first_name ilike $1 || '%' order by actor_id
$$
LANGUAGE SQL
IMMUTABLE
RETURNS NULL ON NULL INPUT;

SELECT * FROM get_actor_ids('a');
SELECT * FROM get_actor_ids('b');
SELECT * FROM get_actor_ids('c');
SELECT * FROM get_actor_ids('d');
SELECT * FROM get_actor_ids('e');
SELECT * FROM get_actor_ids('f');
SELECT * FROM get_actor_ids('g');
SELECT * FROM get_actor_ids('h');
SELECT * FROM get_actor_ids('i');
SELECT * FROM get_actor_ids('j');
SELECT * FROM get_actor_ids('k');
SELECT * FROM get_actor_ids('l');
SELECT * FROM get_actor_ids('m');
SELECT * FROM get_actor_ids('mi');
SELECT * FROM get_actor_ids('n');
SELECT * FROM get_actor_ids('o');
SELECT * FROM get_actor_ids('p');
SELECT * FROM get_actor_ids('q');
SELECT * FROM get_actor_ids('r');
SELECT * FROM get_actor_ids('s');
SELECT * FROM get_actor_ids('t');
SELECT * FROM get_actor_ids('u');
SELECT * FROM get_actor_ids('v');
SELECT * FROM get_actor_ids('w');
SELECT * FROM get_actor_ids('x');
SELECT * FROM get_actor_ids('y');
SELECT * FROM get_actor_ids('z');
