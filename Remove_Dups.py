def Remove_Dups(x):
    new_words = []
    for i in words:
        if i not in new_words:
            new_words.append(i)
    return print(new_words)
words = ['Hi','Hello','Hello','Goodbye', 'Bye', 'Bye']
Remove_Dups(words)






