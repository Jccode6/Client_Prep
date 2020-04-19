test_string = 'The quick brown brown fox jumped jumped over the dog'
test_string2 = test_string.split()
new_list = []
for x in test_string2:
    if x not in new_list:
        new_list.append(x)
print(new_list)

