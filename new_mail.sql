
CREATE TABLE IF NOT EXISTS `new_mail` (
  `mail_id` int(11) NOT NULL auto_increment,
  `date` datetime NOT NULL,
  `from` varchar(128) character set latin1 NOT NULL,
  `to` varchar(128) character set latin1 NOT NULL,
  `subject` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `charset` varchar(32) character set latin1 NOT NULL,
  `mail` longblob NOT NULL,
  `spam_score` float NOT NULL,
  `hash` char(32) character set latin1 NOT NULL,
  `content_type` varchar(64) character set latin1 NOT NULL,
  `recipient` varchar(128) character set latin1 NOT NULL,
  `has_attach` int(11) NOT NULL,
  `ip_addr` varchar(15) NOT NULL,
  `delivered` bit(1) NOT NULL default b'0',
  `attach_info` text NOT NULL,
  `dkim_valid` tinyint(4) default NULL,
  PRIMARY KEY  (`mail_id`),
  KEY `to` (`to`),
  KEY `hash` (`hash`),
  KEY `date` (`date`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8
;

