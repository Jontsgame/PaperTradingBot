FROM freqtradeorg/freqtrade:stable
COPY config.json /freqtrade/user_data/config.json
COPY MyStrategy.py /freqtrade/user_data/strategies/MyStrategy.py
CMD [ "trade", "--config", "/freqtrade/user_data/config.json", "--strategy", "MyStrategy", "--dry-run" ]
