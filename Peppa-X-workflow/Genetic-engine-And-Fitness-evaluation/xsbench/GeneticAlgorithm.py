import copy
import random
import sys
from datetime import datetime
from Chromosome import Chromosome


class GeneticAlgorithm:

    def __init__(self, bounds, pm, pc, pop_size, max_gen):
        """
        """
        self.bounds = bounds
        self.pm = pm
        self.pc = pc
        self.pop_size = pop_size
        self.max_gen = max_gen

        self.pop = []
        self.bests = [0] * max_gen
        self.g_best = 0

    def ga(self):
        """
        :return:
        """
        now = datetime.now()
        dt_string = now.strftime("%d/%m/%Y %H:%M:%S")

        logF = open("ga-output.log", 'a')
        logF.write("**** [TIME] **** : " + str(dt_string) + "\n")
        logF.close()

        self.init_pop()
        best = self.find_best()
        self.g_best = copy.deepcopy(best)
        y = [0] * self.pop_size
        for i in range(self.max_gen):
            self.cross()
            self.mutation()
            self.selectR()
            best = self.find_best()
            self.bests[i] = best
            if self.g_best.y < best.y:
                self.g_best = copy.deepcopy(best)

            logF = open("ga-output.log", 'a')
            logF.write("--> Best score at gen " + str(i) + ": " + str(self.bests[i].y) + "\n")
            logF.write("--> Best score so far " + ": " + str(self.g_best.y) + "\n")
            logF.write("-------------------------------------------------------\n")
            logF.close()


        # plt
        #plt.figure(1)
        #x = range(self.pop_size)
        #plt.plot(x, y)
        #plt.ylabel('generations')
        #plt.xlabel('function value')
        #plt.show()


    def init_pop(self):
        """
        :return:
        """
        for i in range(self.pop_size):
            chromosome = Chromosome(self.bounds)
            self.pop.append(chromosome)

    def cross(self):
        """
        :return:
        """
        for i in range(int(self.pop_size / 2)):
            if self.pc > random.random():
                # randon select 2 chromosomes in pops
                i = 0
                j = 0
                while i == j:
                    i = random.randint(0, self.pop_size - 1)
                    j = random.randint(0, self.pop_size - 1)
                chs_i = self.pop[i]
                chs_j = self.pop[j]

                index = random.randint(0, len(chs_i.x) - 1)
                
                vi = chs_i.x[index]
                vj = chs_j.x[index]
                chs_j.x[index] = vi
                chs_i.x[index] = vj

    def mutation(self):
        """
        :return:
        """
        for i in range(self.pop_size):
            if self.pm > random.random():
                chm = self.pop[i]

                #logF = open("output.log", 'a')
                #for k in range(0, len(bounds)):
                #    logF.write(">>>> Mutation from " + str(chm.x[k]) + "\n")

                mutation_index = random.randint(0, len(self.pop[i].x) - 1)
                org_value = self.pop[i].x[mutation_index]
                mutation_amount = (bounds[mutation_index][1] - bounds[mutation_index][0] ) * 0.2
                new_value = random.randint(int(mutation_amount*-1), int(mutation_amount)) + org_value
                if new_value > bounds[mutation_index][1]:
                    new_value = bounds[mutation_index][1]
                elif new_value < bounds[mutation_index][0]:
                    new_value = bounds[mutation_index][0]
                chm.x[mutation_index] = new_value

                #logF = open("output.log", 'a')
                #for k in range(0, len(bounds)):
                #    logF.write(">>>> Mutation to " + str(chm.x[k]) + "\n")

    def selectT(self):
        for i in range(self.pop_size):
            self.pop[i].func()

        max = self.pop[0].y
        maxI = 0
        for i in range(self.pop_size):
            if self.pop[i].y > max:
                max = self.pop[i].y
                maxI = i
        v = []
        for j in range(self.pop_size):
            if j < (float(self.pop_size) / 4):
                v.append(self.pop[i])
                logF = open("ga-output.log", 'a')
                logF.write("--> Add input: " + str(self.pop[i].inputString) + "\n")   
            k = random.randint(0, len(self.pop) - 1)
            v.append(self.pop[k])
            logF = open("ga-output.log", 'a')
            logF.write("--> Add input: " + str(self.pop[k].inputString) + "\n")   
        self.pop = v
        
  
                
    def selectR(self):
        """
        :return:
        """
        # calculate fitness function
        sum_f = 0
        for i in range(self.pop_size):
            self.pop[i].func()

        # guarantee fitness > 0
        min = self.pop[0].y
        max = self.pop[0].y
        maxI = 0
        for i in range(self.pop_size):
            if self.pop[i].y < min:
                min = self.pop[i].y
            if self.pop[i].y > max:
                max = self.pop[i].y
                maxI = i
        if min < 0:
            for i in range(self.pop_size):
                self.pop[i].y = self.pop[i].y + (-1) * min
        v = []
        v.append(self.pop[i])

        # As time goes on, we may want to have random chm introduced to the population
        chromosome = Chromosome(self.bounds)
        v.append(chromosome)

        # roulette
        for i in range(self.pop_size):
            sum_f += self.pop[i].y
        p = [0] * self.pop_size
        for i in range(self.pop_size):
            p[i] = self.pop[i].y / sum_f
        q = [0] * self.pop_size
        q[0] = 0
        for i in range(self.pop_size):
            s = 0
            for j in range(0, i+1):
                s += p[j]
            q[i] = s
        # start roulette
        for i in range(self.pop_size):
            r = random.random()
            if r < q[0]:
                v.append(self.pop[0])
            for j in range(1, self.pop_size):
                if q[j - 1] < r <= q[j]:
                    v.append(self.pop[j])
        self.pop = v
        #logF = open("output.log", 'a')
        #logF.write("\n--> Inputs selected in population: " + str(self.pop) + "\n" )
        

    def find_best(self):
        """
        :return:
        """
        best = copy.deepcopy(self.pop[0])
        for i in range(self.pop_size):
            if best.y < self.pop[i].y:
                best = copy.deepcopy(self.pop[i])
        return best


if __name__ == '__main__':
    bounds = [[1, 20000], [1, 20000]]
    algorithm = GeneticAlgorithm(bounds, 0.2, 0.05, 5, int(sys.argv[1]))
    try:
         algorithm.ga()
    except (KeyboardInterrupt, SystemExit):
         sys.exit()
    pass

