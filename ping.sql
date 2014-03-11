SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `ping`
--

-- --------------------------------------------------------

--
-- 表的结构 `ping`
--

CREATE TABLE IF NOT EXISTS `ping` (
  `num` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `utime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`num`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `ping`
--

INSERT INTO `ping` (`num`, `ip`, `status`, `utime`) VALUES
(1, 'www.google.com.tw', 'Good round trip:9.364', '2014-03-11 15:40:15'),
(2, 'tw.yahoo.com', 'Good round trip:7.563', '2014-03-11 15:40:15'),
(3, 'www.google.com', 'Good round trip:11.291', '2014-03-11 15:40:15'),
(4, 'www.pchome.com.tw', 'Good round trip:6.792', '2014-03-11 15:40:15');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
