import os
import io

eventPath = os.path.join(os.getcwd(), "events")
locPath = os.path.join(os.getcwd(), "localisation")
scriptPath = os.path.join(os.getcwd(), "scripts", "eventNotLocalized.txt")

while (not os.path.exists(eventPath) or not "events" in eventPath):
    print("Enter path to event:")
    eventPath = input()
print(f"Event path exists at {eventPath}")

while (not os.path.exists(locPath) or not "localisation" in locPath):
    print("Enter path to localisation:")
    locPath = input()

print(f"Event path exists at {locPath}")

ymlFiles = [os.path.join(root, f) for root, _, files in os.walk(locPath) for f in files if f.endswith('.yml')]
txtFiles = [os.path.join(root, f) for root, _, files in os.walk(eventPath) for f in files if f.endswith('.txt')]

eventKeys = []
conditions_to_include = ["title", "desc", "name", "text"]
conditions_to_exclude = ["party", "namespace", "\"\"", "immediate", "log"]

for file in txtFiles: 
    # if, for some reason, it gets deleted while we are trying to read it
    if (os.path.exists(file)):
        f = io.open(file, "r", encoding="utf-8-sig")
        for line in f:
            if not line.strip().startswith("#"):
                if any(cond in line for cond in conditions_to_include) and "=" in line and not any(cond in line for cond in conditions_to_exclude):
                    temp = line.strip().split("=")[1]
                    if not temp in eventKeys:
                        eventKeys.append(temp)
        f.close()


for file in ymlFiles: 
    print(file)
    print(f"Before: {len(eventKeys)}")
    # if, for some reason, it gets deleted while we are trying to read it
    if (os.path.exists(file)):
        f = io.open(file, "r", encoding="utf-8-sig")
        for line in f:
            for key in eventKeys:
                if key.strip() in line and not ":\"\"" in line:
                    print(key)
                    eventKeys.remove(key)
                    #print(len(eventKeys))
    print(f"After: {len(eventKeys)}")
if (os.path.exists(scriptPath)):
    os.remove(scriptPath)
for key in eventKeys:
    f = io.open(scriptPath, "a", encoding="utf-8-sig")
    f.write(f"{key}\n")
    f.close()