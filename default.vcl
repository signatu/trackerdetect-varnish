vcl 4.0;

backend default {
    .host = "trackerdetect";
    .port = "7500";
}

sub vcl_backend_response {
    set beresp.ttl = 1d;
}
