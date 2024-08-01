import os
import io
from unidecode import unidecode
characterPath = os.path.join(os.getcwd(), "common", "characters") 
characterFiles = []
localizationPath = os.path.join(os.getcwd(), "localisation", "english", "KRG_country_specific")

def FixCharacterName(name: str, country: str):
    if (not "\"" in name):
        return [name, "N/A"]
    
    splitName = name.split("=")
    temp = splitName[1].replace("\n","").strip()[1:-1]
    tempKey = ''.join(letter for letter in temp if letter.isalnum() or letter == " ")
    splitName[1] = unidecode(country + "_" + tempKey.replace(" ", "_"))
    temp2 = splitName[1]

    return ["=".join(splitName), f"{temp2.strip()}: \"{temp.strip()}\""]

if (os.path.isdir(characterPath)):
    characterFiles = os.listdir(characterPath)
else:
    print("oopsie :3c")
    exit(0)

characterKeys = []

for file in characterFiles: 
    charFile = os.path.join(characterPath, file)
    f =  io.open(charFile, "r", encoding="utf-8-sig")
    new = ""
    for line in f:
        if ("name" in line):
            result = FixCharacterName(line, file.replace(".txt", ""))
            new += result[0]
            if not "\n" in result[0]:
                new += "\n"
            if result[1] != "N/A":
                characterKeys.append(result[1])
        else:
            new += line
    f.close()
    f = io.open(charFile, "w", encoding="utf-8-sig")
    f.write(new)
    f.close()
    
if (os.path.isdir(localizationPath)):
    for r in characterKeys:
        needsToAdd = True
        for file in characterFiles:
            countryTag = file.replace(".txt", "")
            
            if (not r.startswith(countryTag)):
                continue
            
            fileName = os.path.join(localizationPath, "KRG_" + countryTag + "_l_english.yml")
            if (os.path.exists(fileName)):
                f = io.open(fileName, "r", encoding="utf-8-sig")
                for line in f:
                    if r in line:
                        print(f"found {r} in {fileName}")
                        needsToAdd = False
                f.close()
                if (needsToAdd):
                    f = io.open(fileName, "a", encoding="utf-8-sig")
                    f.write(r + "\n")
            else:
                f = open(fileName, "a", encoding="utf-8-sig")
                f.write("l_english:")
                f.write(r + "\n")
                f.close()