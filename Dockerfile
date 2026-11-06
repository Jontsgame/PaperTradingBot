FROM freqtradeorg/freqtrade:stable
COPY config.json /freqtrade/user_data/config.json
CMD [ "trade", "--config", "/freqtrade/user_data/config.json", "--strategy", "SampleStrategy", "--dry-run" ]
