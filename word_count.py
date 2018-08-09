import sys
import string
import re
from collections import Counter

def main(file_name):
    f = open(file_name,'r')
    html = f.read()
    f.close()
    content = re.compile(r'<[^>]+>').sub("", html)
    words = content.translate(None, string.punctuation).split()
    print "The most occuring word is: " + Counter(words).most_common()[0][0]

if __name__ == '__main__':
    main(sys.argv[1])