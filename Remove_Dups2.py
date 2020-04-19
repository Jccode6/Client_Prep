def Remove_Dups2(x):
test_string2 = x.split()
new_list = []
for y in test_string2:
    if y not in new_list:
        new_list.append(y)
    return new_list
test_string = 'The quick brown brown fox jumped jumped over the dog'
Remove_Dups2(test_string)


