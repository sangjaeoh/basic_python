import requests
from bs4 import BeautifulSoup
import re

r = requests.get('https://codingeverybody.github.io/scraping_sample/1.html')

soup = BeautifulSoup(r.text, 'html.parser')

print(soup.title.string)
articles = soup.findAll('div',{'class' : 'em'})
print(articles[0].text)
