def getBaseAPIURL(env):

    if env == 'DEV':
        domain = 'www.google.com'

    elif env == 'QA':
        domain = 'www.google.com'

    elif env == 'UAT':
        domain = 'www.google.com'
    
    elif env == 'Sample':
        domain = 'www.google.com'

    return 'http://' + domain
    