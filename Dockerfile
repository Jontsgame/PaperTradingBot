FROM freqtradeorg/freqtrade:stable
COPY config.json /freqtrade/user_data/config.json
COPY sample_strategy.py /freqtrade/user_data/strategies/sample_strategy.py
CMD [ "trade", "--config", "/freqtrade/user_data/config.json", "--strategy", "SampleStrategy", "--dry-run" ]
