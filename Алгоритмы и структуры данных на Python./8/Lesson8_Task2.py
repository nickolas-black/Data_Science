"""
2. Доработать алгоритм Дейкстры (рассматривался на уроке), чтобы он дополнительно возвращал список вершин,
которые необходимо обойти.

"""
g = [
    [0, 0, 1, 1, 9, 0, 0, 0],
    [0, 0, 9, 4, 0, 0, 5, 0],
    [0, 9, 0, 0, 3, 0, 6, 0],
    [0, 0, 0, 0, 0, 0, 0, 0],
    [0, 0, 0, 0, 0, 0, 1, 0],
    [0, 0, 0, 0, 0, 0, 5, 0],
    [0, 0, 7, 0, 8, 1, 0, 0],
    [0, 0, 0, 0, 0, 1, 2, 0]
]


def dijkstra(graph, start):
    sv_start = start
    length = len(graph)
    is_visited = [False] * length
    cost = [float('inf')] * length
    parent = [-1] * length

    cost[start] = 0
    min_cost = 0
    while min_cost < float('inf'):

        is_visited[start] = True

        for i, vertex in enumerate(graph[start]):
            if vertex != 0 and not is_visited[i]:

                if cost[i] > vertex + cost[start]:
                    cost[i] = vertex + cost[start]
                    parent[i] = start

        min_cost = float('inf')
        for i in range(length):
            if min_cost > cost[i] and not is_visited[i]:
                min_cost = cost[i]
                start = i
    print(f"parent = {parent}")

    #Восстановим пути до всех вершин из вершины sv_start
    for k in range(length):
        i = k
        path = []
        if parent[i] > -1:
            path.append(i)
            while True:
                p = parent[i]
                if p == -1:
                    break
                path.append(p)
                i = p
        elif i == sv_start:
            path.append(i)

        path.reverse()
        print(f"Маршрут из {sv_start} в {k}: {path if len(path) > 0 else 'Не существует'}")
    return cost

print('Исходный граф: ')
print(*g, sep='\n')

s = int(input('\nОт какой вершины идти: '))
dijkstra(g, s)



