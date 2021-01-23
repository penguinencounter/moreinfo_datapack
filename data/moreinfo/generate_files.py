from jinja2 import Environment, FileSystemLoader, select_autoescape
import os
env = Environment(
    loader=FileSystemLoader('C:\\Users\\Miles\\bin\\MultiMC\\instances\\1.16.2 FABRIC\\.minecraft\\saves\\farm team\\datapacks\\moreinfo\\data\\moreinfo\\templates'),
    autoescape=select_autoescape([])
)

slot_processing = env.get_template('slot_template.mcfunction.j2')
print(os.listdir('.'))
for x in range(0, 36):
    print(f'slot_{x}.mcfunction')
    with open(f'data/moreinfo/functions/slot_processing/slot_{x}.mcfunction', 'w') as f:
        f.write(slot_processing.render(slot_number=x))
