import sys
import webbrowser

query = sys.stdin.read()
if len(query) > 1:
    query = query.replace(" ", "+")
    webbrowser.open("https://duckduckgo.com/?q={}".format(query))
