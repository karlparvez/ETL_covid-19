from bs4 import BeautifulSoup
import requests
import pandas as pd

def COVID_scrape():
    
    url = 'https://data.humdata.org/dataset/novel-coronavirus-2019-ncov-cases'

    response = requests.get(url)
    soup = BeautifulSoup(response.text, 'lxml')
    scraped = soup.find_all('a', class_='resource-url-analytics')

    confirmed = scraped[0]['href']
    deaths = scraped[1]['href']
    recovered = scraped[2]['href']

    confirmed_df = pd.read_csv(confirmed)
    deaths_df = pd.read_csv(deaths)
    recovered_df = pd.read_csv(recovered)
    
    lastupdate = []
    for col in confirmed_df.columns:
        lastupdate.append(col)

    lastupdate = lastupdate[-1]
    
    return {"confirmed": confirmed_df, "deaths": deaths_df, "recovered": recovered_df, "lastupdate": lastupdate}
    