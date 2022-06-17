use lib 'lib';
use MIME::Base64;
use Twitter;
my Twitter $t .= new:
    consumer-key        => 'rmSQMmFYTycugncd9OlFSNbiD',
    consumer-secret     => 'W7zrXiC19hhiHdMYWvTsBh1VucTXamyn1tNwd2Wi0dICRbo7Kd',
	access-token        => '3202129871-VOsTVGdvPrVn2uQJxNMJ8ArZfI2iS6oSutl3FDC',
	access-token-secret => '0wsspSoQir4N7rwc5tIxlz7Lyzn8GyEIH7hVhLcDgqubw';


# basec text tweet
my %reply = $t.tweet: 'so uhhh yeah I guess';
say "posted tweet " ~ %reply<id> ~ " to account @" ~ %reply<screen_name>;
