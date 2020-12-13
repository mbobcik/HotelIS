CREATE KEYSPACE IF NOT EXISTS rooms WITH replication = {'class': 'SimpleStrategy', 'replication_factor' : 3};
CREATE KEYSPACE IF NOT EXISTS guests WITH replication = {'class': 'SimpleStrategy', 'replication_factor' : 3};

CREATE TABLE IF NOT EXISTS rooms.toOccupy (
    hotel text,
    floor INT,
    roomNumber INT,
    cost float,
    roomId INT,
    hotelId INT,
    PRIMARY KEY (
        (hotel),
        floor,
        roomNumber
    )
) WITH comment = 'Find empty and unoccupied rooms for each hotel';

CREATE TABLE IF NOT EXISTS rooms.toClean (
    hotel text,
    floor INT,
    roomNumber INT,
    roomId INT,
    hotelId INT,
    PRIMARY KEY (
        (hotel),
        floor,
        roomNumber
    )
) WITH comment = 'Find rooms in need of cleaning';

CREATE TABLE IF NOT EXISTS rooms.byHotel (
    hotel text,
    floor INT,
    roomNumber INT,
    cost float,
    guestFullName TEXT,
    toClean boolean,
    roomId INT,
    hotelId INT,
    guestId INT,
    PRIMARY KEY (
        (hotel),
        floor,
        roomNumber
    )
) WITH comment = 'Find rooms for each hotel';


CREATE TABLE IF NOT EXISTS rooms.byGuest (
    guestFullName TEXT,
    hotel text,
    floor INT,
    roomNumber INT,
    cost float,
    toClean boolean,
    roomId INT,
    hotelId INT,
    guestId INT,
    PRIMARY KEY (
        (guestFullName),
        floor,
        roomNumber
    )
) WITH comment = 'Find rooms by guest accomodated';

CREATE INDEX IF NOT EXISTS byHotelId ON rooms.byhotel (hotelId);
CREATE INDEX IF NOT EXISTS toOccupyByHotelId ON rooms.tooccupy (hotelId);
CREATE INDEX IF NOT EXISTS toCleanByHotelId ON rooms.toclean (hotelId);

CREATE TABLE IF NOT EXISTS guests.byName(
    id text,
    firstName text,
    lastName text,
    hotel text,
    roomNumber INT,
    floor INT,
    PRIMARY KEY (
        (lastName),
        id
    )
) WITH comment = 'Find Guests by their name';


CREATE TABLE IF NOT EXISTS guests.byHotel(
    id text,
    firstName text,
    lastName text,
    hotel text,
    roomNumber INT,
    floor INT,
    PRIMARY KEY (
        (hotel),
        firstName,
        lastName
    )
) WITH comment = 'Find Guests by their name';
