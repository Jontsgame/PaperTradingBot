FROM freqtradeorg/freqtrade:stable
COPY config.json /freqtrade/user_data/config.json
COPY strategy.py /freqtrade/user_data/strategies/strategy.py
CMD [ "trade", "--config", "/freqtrade/user_data/config.json", "--strategy", "SampleStrategy", "--dry-run" ]
