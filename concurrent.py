mport concurrent.futures

def hello(x):
    print('hello')
    return x

with concurrent.futures.ProcessPoolExecutor(max_workers=2) as executor:
    result = {i: executor.submit(hello, i) for i in range(10)}

for k, v in result.items():
    print(f'{k}: {v}')

print(result[1].result())


with concurrent.futures.ThreadPoolExecutor(max_workers=2) as executor:
    result = {i: executor.submit(hello, i) for i in range(10)}

for k, v in result.items():
    print(f'{k}: {v}')

print(result[1].result())

