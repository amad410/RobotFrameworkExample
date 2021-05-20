def getBaseURL(env):

    if env == 'DEV':
        domain = 'www.google.com'

    elif env == 'QA':
        domain = 'www.espn.com'

    elif env == 'UAT':
        domain = 'www.soccer.com' 
    
    elif env == 'Sample':
        domain = 'statsroyale.com/'

    return 'http://' + domain