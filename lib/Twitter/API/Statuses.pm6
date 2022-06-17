unit role Twitter::API::Statuses;

method statuses-update (Str:D $tweet-text) {
    my $res
    = self!ua.request: 'POST', 'statuses/update', %(status => $tweet-text);
}

method upload-image ($base64file) {
    my $res
    = self!ua.upload-request: 'POST', %('media_category' => 'tweet_image', 'media_data' => $base64file);
}

method image-tweet (Str:D $tweet-text, Str:D $picture-id) {
    my $res
    = self!ua.request: 'POST', 'statuses/update', %('status' => $tweet-text, 'media_ids' => $picture-id);
}
