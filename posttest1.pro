predicates
  film(symbol) - nondeterm (o)
  judul(symbol) - nondeterm (o)
  film_tayang(symbol,symbol) - nondeterm (o,o)

clauses
  film(action).
  film(horor).
  film(comedi).
  film(drama).

  judul(the_raid).
  judul(rumah_dara).
  judul(ngenest).
  judul(police_story).
  judul(goblin).

  film_tayang(comedi,ngenest).
  film_tayang(horor,rumah_dara).
  film_tayang(action,the_raid).

goal
  film_tayang(Genre,Judul).
