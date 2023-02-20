import requests
from bs4 import BeautifulSoup


URL = "https://www.nerdfonts.com/font-downloads"
page = requests.get(URL)

soup = BeautifulSoup(page.content, "html.parser")

download_buttons = soup.find_all("a", class_="nf-fa-download")

file = open("nerd_font_links.txt", "w")

for dbtn in download_buttons:
    #print(dbtn, dbtn['href'], end="\n"*2)
    file.write(dbtn['href'] + "\n" )

file.close()



