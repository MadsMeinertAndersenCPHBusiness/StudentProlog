student(mads).
student(benjamin).

class(ufo).
class(mal).
class(dbd).

room(1).
room(2).
room(3).

date(11).
date(12).
date(13).
date(14).
date(15).
date(16).
date(17).
date(18).
date(19).

enrolled_in(mads, ufo).
enrolled_in(mads, dbd).
enrolled_in(benjamin, ufo).
enrolled_in(benjamin, mal).

class_room(ufo, 1).
class_room(mal, 2).
class_room(dbd, 3).

class_date(ufo, 11).
class_date(ufo, 14).
class_date(ufo, 17).

class_date(mal, 12).
class_date(mal, 15).
class_date(mal, 18).

class_date(dbd, 13).
class_date(dbd, 16).
class_date(dbd, 19).


is_enrolled_in(Student, Class) :- enrolled_in(Student, Class), student(Student), class(Class).

has_class_on_day(Student,Date):- enrolled_in(Student,Class), class_date(Class,Date), student(Student), date(Date), write('class '), write(Class), nl.

is_room_taken(Date, Room):- class_date(Class,Date),class_room(Class, Room), date(Date), room(Room).




