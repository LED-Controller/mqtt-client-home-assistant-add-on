def processresponse(payload, lamp):
    if 'color' in payload:
        if(payload['state'] == "ON"):
            lamp['on']= True
        else:
            lamp['on'] = False
        lamp['color']['r'] = payload['color']['r']
        lamp['color']['g'] = payload['color']['g']
        lamp['color']['b'] = payload['color']['b']
    else:
        if 'brightness' in payload:
            if (payload['state'] == "ON"):
                lamp['on'] = True
            else:
                lamp['on'] = False
            if (round(payload['brightness'] / 255 * 100)<1):
                lamp['brightness'] = 1
            else:
                lamp['brightness'] = round(payload['brightness'] / 255 * 100)
        else:
            if (payload['state'] == "ON"):
                lamp['on'] = True
            else:
                lamp['on'] = False
    return lamp
