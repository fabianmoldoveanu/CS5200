CREATE TABLE `organizer` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `EMAIL` varchar(255) DEFAULT NULL,
  `FIRSTNAME` varchar(255) DEFAULT NULL,
  `JOINED` date DEFAULT NULL,
  `LASTNAME` varchar(255) DEFAULT NULL,
  `PASSWORD` varchar(255) DEFAULT NULL,
  `USERNAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `sheet` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `EVENTDATE` date DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `organizer_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_SHEET_organizer_id` (`organizer_id`),
  CONSTRAINT `FK_SHEET_organizer_id` FOREIGN KEY (`organizer_id`) REFERENCES `organizer` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `timeslot` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NOTES` varchar(255) DEFAULT NULL,
  `SLOTDATE` date DEFAULT NULL,
  `WHO` varchar(255) DEFAULT NULL,
  `sheet_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_TIMESLOT_sheet_id` (`sheet_id`),
  CONSTRAINT `FK_TIMESLOT_sheet_id` FOREIGN KEY (`sheet_id`) REFERENCES `sheet` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `address` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CITY` varchar(255) DEFAULT NULL,
  `STATE` varchar(255) DEFAULT NULL,
  `STREET1` varchar(255) DEFAULT NULL,
  `STREET2` varchar(255) DEFAULT NULL,
  `ZIP` varchar(255) DEFAULT NULL,
  `SHEET_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_ADDRESS_SHEET_ID` (`SHEET_ID`),
  CONSTRAINT `FK_ADDRESS_SHEET_ID` FOREIGN KEY (`SHEET_ID`) REFERENCES `sheet` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
