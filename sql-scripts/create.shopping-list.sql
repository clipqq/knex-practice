DROP TYPE IF EXISTS grocery;
create type grocery as enum
(
        'Main',
        'Snack',
        'Lunch',
        'Breakfast'
    );

CREATE TABLE IF NOT EXISTS shopping_list
(
    id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
    name text not null,
    price decimal(12,2) NOT NULL,
    date_added TIMESTAMP DEFAULT now() NOT NULL,
    checked BOOLEAN DEFAULT false,
    category grocery not null


);
