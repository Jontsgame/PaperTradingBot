from freqtrade.strategies import IStrategy
from pandas import DataFrame
import talib.abstract as ta

class MyStrategy(IStrategy):
    INTERFACE_VERSION = 3
    minimal_roi = {
        "0": 0.05
    }
    stoploss = -0.10
    timeframe = '5m'

    def populate_indicators(self, dataframe: DataFrame, metadata: dict) -> DataFrame:
        dataframe['rsi'] = ta.RSI(dataframe, timeperiod=14)
        return dataframe

    def populate_entry_trend(self, dataframe: DataFrame, metadata: dict) -> DataFrame:
        dataframe.loc[(dataframe['rsi'] < 30), 'enter_long'] = 1
        return dataframe

    def populate_exit_trend(self, dataframe: DataFrame, metadata: dict) -> DataFrame:
        dataframe.loc[(dataframe['rsi'] > 70), 'exit_long'] = 1
        return dataframe
