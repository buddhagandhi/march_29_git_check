from configparser import ConfigParser

parser = ConfigParser()
parser.read('config.ini')

PW = parser.get('userpassword', 'password')
BS_USER = parser.get('browserstack', 'user')
BS_ACCESSKEY = parser.get('browserstack', 'access_key')


