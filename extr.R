library(twitteR)
library(RCurl)
api_key<-"xxxxxxx"
api_secret_key<-"xxxxxxx"
access_token<-"xxxxxx"
access_token_secret<-"xxxxxxxxx"
setup_twitter_oauth(api_key,api_secret_key,access_token,access_token_secret)
start_time<-Sys.time()
tweets <- searchTwitter("Brexit -filter:retweets", n=200000,lang ="en",
                        since="2019-01-01")
tweets.df<-twListToDF(tweets)
write.csv(tweets.df,file="xxx.csv")
end_time<-Sys.time()
end_time-start_time

