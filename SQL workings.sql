/* INSERT statements for populating the initial tables. */

/* Stadium details */
INSERT INTO STADIA
(VENUE_ID, VENUE_NAME, CAPACITY, ROOF)
VALUES
(1, "MCG", 105000, "N"),
(2, "Docklands Stadium", 60000, "Y"),
(3, "Football Park", 50000, "N"),
(4, "Adelaide Oval", 45000, "N"),
(5, "GABBA", 45000, "N"),
(6, "Subiaco Oval", 54000, "N"),
(7, "Kardinia Park", 40000, "N"),
(8, "Gold Coast Oval", 35000, "N"),
(9, "Sydney Showgrounds", 60000, "N"),
(10, "SCG", 45000, "N"),
(11, "York Park", 25000, "N"),
(12, "Bellerive Oval", 18000, "N"),
(13, "Stadium Australia", 100000, "N"),
(14, "Punt Road", 15000, "N"),
(15, "Moorabin Oval", 15000, "N"),
(16, "Princess Park", 30000, "N"),
(17, "Victoria Park", 27000, "N"),
(18, "Windy Hill", 27000, "N");


/* Club Details */
INSERT INTO CLUB_DETAILS 
(CLUB_ID, CLUB_NAME, CLUB_NICKNAME, COLOURS, ESTABLISHED, MEMBERS, HOME_VENUE_ID, ALT_HOME_VENUE_ID) 
VALUES 
(1, "Adelaide", "Crows", "navy blue, red and yellow", 1995, 56000, 3, 4),
(2, "Brisbane", "Lions", "maroon and gold", 1987, 37000, 5, ""),
(3, "Carlton", "Blues", 'navy blue', 1897, 54000, 2, 16),
(4, "Collingwood", "Magpies", 'black and white', 1897, 70000, 1, 17),
(5, "Essendon", "Bombers", 'red and black', 1897, 56000, 2, 18),
(6, "Fremantle", "Dockers", "purple, red, white and teal", 1995, 35000, 6, ""),
(7, "Geelong", "Cats", 'navy blue and white', 1897, 55000, 1, 7),
(8, "Gold Coast", "Suns", 'red and yellow', 2010, 25000, 8, ""),
(9, "Greater Western Sydney", "Giants", 'grey and orange', 2011, 15000, 9, ""),
(10, "Hawthorn", "Hawks", 'brown and gold', 1925, 66000, 1, 11),
(11, "Melbourne", "Demons", 'red and blue', 1897, 35000, 1, ""),
(12, "North Melbourne", "Kangaroos", 'royal blue and white', 1925, 49000, 1, 12),
(13, "Port Adelaide", "Power", 'black and teal', 1897, 40000, 3, 4),
(14, "Richmond", "Tigers", 'yellow and black', 1897, 63000, 1, 14),
(15, "St Kilda", "Saints", 'black, white and red', 1897, 45000, 2, 15),
(16, "Sydney", "Swans", 'red and white', 1897, 50000, 10, 13),
(17, "West Coast", "Eagles", 'yellow and blue', 1987, 45000, 6, ""),
(18, "Western", "Bulldogs", 'red, white and blue', 1925, 35000, 2, "");

/* Return Clubs and their Home Grounds */
SELECT c.CLUB_NAME, s.VENUE_NAME
FROM CLUB_DETAILS c
LEFT OUTER JOIN STADIA s
ON c.HOME_VENUE_ID = s.VENUE_ID;

INSERT INTO