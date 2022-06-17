use lib 'lib';
use MIME::Base64;
use Twitter;
my Twitter $t .= new:
    consumer-key        => 'lködsjfklöajsdfklöjasldfkjlö',
    consumer-secret     => 'dklfjgklödfjgljsdflögjlödfkjgklödsfjglökdjgsdlödgd',
	access-token        => 'sdfkljgöldkjsfgölsdfjglöksdfjgölskjdfglöksdjfglöjC',
	access-token-secret => 'sdfögklösdfkgsgkjlsdfhgkljsdfhgklsdhfgjklshdf';


# basec text tweet
my %reply = $t.tweet: 'so uhhh yeah I guess';
say "posted tweet " ~ %reply<id> ~ " to account @" ~ %reply<screen_name>;
