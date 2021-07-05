#VOD single
ffplay https://sm-multidrm.arrisi.com:8443/contents/dash_vod/tmp/dash_vod_single/hls_mpd.xml -loglevel debug


#VOD multi
ffplay "https://sm-multidrm.arrisi.com:8443/contents/dash_vod/tmp/dash_vod_multi/hls_mpd.xml" -loglevel debug

# LIVE single
ffplay "https://sm-multidrm.arrisi.com:8443/contents/dash_live/dash_live_single/lab_mpd.xml" -loglevel debug

#LIVE multi
ffplay "https://sm-multidrm.arrisi.com:8443/contents/dash_live/dash_live_multi/lab_mpd.xml" -loglevel debug 
