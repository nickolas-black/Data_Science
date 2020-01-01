"""
3. Написать программу, которая обходит не взвешенный ориентированный граф без петель, в котором все вершины связаны,
по алгоритму поиска в глубину (Depth-First Search).
Примечания:
a. граф должен храниться в виде списка смежности;
b. генерация графа выполняется в отдельной функции, которая принимает на вход число вершин


Генерация графа выполняется не самым оптимальным алгоритмом, но этого и не требоваолсь
- удалением из полносвязного графа ребер с проверкой связности алгоритмом дейкстры
"""
import random



def dijkstralist(graph, start):
    sv_start = start
    length = len(graph)
    is_visited = [False] * length
    cost = [float('inf')] * length
    parent = [-1] * length

    cost[start] = 0
    min_cost = 0
    while min_cost < float('inf'):
        is_visited[start] = True
        for i in graph[start]:
            if not is_visited[i]:

                if cost[i] > 1 + cost[start]:
                    cost[i] = 1 + cost[start]
                    parent[i] = start

        min_cost = float('inf')
        for i in range(length):
            if min_cost > cost[i] and not is_visited[i]:
                min_cost = cost[i]
                start = i
    return cost


def GenerateGraph(n):
    # пустой граф в виде матрицы смежности
    gr = [[0] * n for i in range(n)]
    # проставим ребра
    for i in range(n):
        for j in range(n):
            gr[i][j] = 1 if i != j else 0
    return gr


def MatrixToList(graph):
    return [[i for i, col in enumerate(row) if col == 1] for row in graph]


def ReduceGraphList(graph, num_iterations):
    result = []
    cnt = num_iterations
    length = len(graph)
    #print(f"len {length}")
    #print(graph)

    while cnt > 0:
        #s = sum([len(i) for i in graph])
        #print('len', s)
        is_good = True
        for i in range(len(graph)):
            r = dijkstralist(graph, i)
            if float('inf') in r:
                is_good = False
                break
        if is_good:
            #result = list(graph)
            result = [i.copy() for i in graph]
            cnt = num_iterations
        else:
            cnt -= 1
            graph = [i.copy() for i in result]
        to_delete_cnt = 5
        while cnt > 0 and to_delete_cnt > 0:
            a = random.randint(0, length - 1)
            if len(graph[a]) == 1:
                cnt -= 1
                continue
            b = random.randint(0, len(graph[a]) - 1)
            #print(f"a {a}, b {b}")
            graph[a].remove(graph[a][b])
            to_delete_cnt -= 1
            break
    return result

def dfs(graph, used, idx, lvl):
    used[idx] = True
    print(f"{'  '*lvl}{idx}")
    for i in graph[idx]:
        if not used[i]:
            dfs(graph, used, i, lvl + 1)




n = int(input("Введите Число узлов: "))

print("Генерируется граф... ")
graph = GenerateGraph(n)
graph = MatrixToList(graph)
graph = ReduceGraphList(graph, 10)

print("Исходный граф: ")
print(graph)

print("\n\nОбход в глубину: (величина отступа слева соответствует уровню \"глубины\" вершины, два пробела = один уровень )")
used = [False for i in range(len(graph))]
dfs(graph, used, 0, 0)


