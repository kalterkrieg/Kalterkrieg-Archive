import os;
import io;
from unidecode import unidecode

path = os.path.join(os.getcwd(), "localisation", "english")
if os.path.exists(path):
    print("yippee")
else:
    while(True):
        print("Enter path to localisation:")
        path = input()
        if ("localisation" in path and os.path.exists(path)):
            print(f'you entered {path}')
            break;
        else:
            print("Either the path does not exist, or path is not a path")

files = os.walk(path)
ymlFiles = [os.path.join(root, f) for root, _, files in os.walk(path) for f in files if f.endswith('.yml')]
errors = []
for dir in ymlFiles:
    if (os.path.exists(dir)):
        f = io.open(dir, "r", encoding="utf-8-sig")
        for x in f:
            x = x.lower()
            if "placeholder" in x or ": \"\"" in x:
                errors.append((dir, x))

for e in errors:
    ePath = e[0]
    ePath = ePath.split("/")[-1].replace(".yml", "")
    print(f'{ePath} = {e[1]}'.strip())
print(len(errors))