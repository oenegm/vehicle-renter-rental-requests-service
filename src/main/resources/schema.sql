create table if not exists rental_requests
(
    id             uuid primary key default uuid_generate_v4(),
    renter_id      uuid     not null,
    vehicle_id     uuid     not null,
    request_date   date     not null,
    rent_date      date     not null,
    return_date    date     not null,
    duration       interval not null,
    accepted_price NUMERIC(11, 2)
);

create table if not exists ratings
(
    id                uuid primary key default uuid_generate_v4(),
    rental_request_id uuid references rental_requests (id),
    vehicle_rating    int2,
    owner_rating      int2,
    renter_rating     int2
)
