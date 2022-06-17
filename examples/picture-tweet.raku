use lib 'lib';
use MIME::Base64;
use Twitter;
my Twitter $t .= new:
    consumer-key        => 'flkgjödfklgjkdlöf',
    consumer-secret     => 'dlfgjöldjfgklöjdsgklöjösdlgjölsdfgjösggl0dICRbo7Kd',
	access-token        => 'lksdfjglkjdsfögkjdklgjlösdfgjlösdjglösfg6oSutl3FDC',
	access-token-secret => 'sdjrgklöjdtrhölskdrjhösldjrhkdjhH7hVhLcDgqubw';


# picture tweet

# first upload base64 encoded picture

# this one is found in the same directory as script
my $imagename = 'image.jpg'; 

# load the image
my $based = MIME::Base64.encode($imagename.IO.slurp(:bin), oneline => True);
say "sending upload request...";  # this can take a while
my %reply = $t.upload-image: $based;

# then you need to use the media id to create a tweet
# the reply is of the format 
my $tweet_text = 'hi guys, just checking';
my %res = $t.image-tweet($tweet_text, %reply<media_id>);
say "posted tweet " ~ %res<id> ~ " with an image to account @" ~ %res<screen_name>;
