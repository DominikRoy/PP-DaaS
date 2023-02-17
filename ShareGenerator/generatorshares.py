#!/usr/bin/env python3

import argparse
from random import choice, randint, getrandbits
import sys
#import pdb
#DEBUG = True

attributes = range(1, 5)
values = [range((x - 1) * 10 + 1, x * 10 + 1) for x in attributes]
conditions = range(1, 5)
decisions = range(0, 2)

number_of_targets = 0
number_of_operations = 0
operators = ['smax', 'smin', 'wmax', 'wmin', 'po', 'do', 'fa', 'wea', 'not']

def generate_leaf():
    nonce_leaf = generate_nonce()
    value = choice(decisions)
    value_xored = value^nonce_leaf
    return "[%d]" % value ,"[%d]" % value_xored, "[%d]" % nonce_leaf 

def generate_policy():
    global number_of_targets
    if number_of_targets > 0:
        rand = randint(0, 3)
        if rand == 0:
            operator = generate_operator()
            return operator[0], operator[1], operator[2]
        else:
            target = generate_target()
            return target[0], target[1], target[2]
    else:
        rand = randint(0, 2)
        if rand == 0:
            leaf = generate_leaf()
            return 'not((' + leaf[0] + '))', 'not((' + leaf[1] + '))', 'not((' + leaf[2] + '))'
        elif rand == 1:
            leaf = generate_leaf()
            return 'wea((' + leaf[0] + '))', 'wea((' + leaf[1] + '))', 'wea((' + leaf[2] + '))'
        else:
            leaf = generate_leaf()
            return leaf[0], leaf[1], leaf[2]

def generate_operator():
    operator = choice(operators)
    if operator == 'not':
        subtree = generate_policy()
        return 'not((%s))' % subtree[0], 'not((%s))' % subtree[1], 'not((%s))' % subtree[2]
    elif operator == 'wea':
        subtree = generate_policy()
        return 'wea((%s))' % subtree[0], 'wea((%s))' % subtree[1], 'wea((%s))' % subtree[2]
    else:
        rand = randint(0, 1)
        subtree1 = generate_policy()
        subtree2 = generate_policy()
        if rand == 0:
            return '%s((%s), (%s))' % (operator, subtree1[0], subtree2[0]), '%s((%s), (%s))' % (operator, subtree1[1], subtree2[1]), '%s((%s), (%s))' % (operator, subtree1[2], subtree2[2])
        else:
            return '%s((%s), (%s))' % (operator, subtree2[0], subtree1[0]), '%s((%s), (%s))' % (operator, subtree2[1], subtree1[1]), '%s((%s), (%s))' % (operator, subtree2[2], subtree1[2])

def generate_target():
    global number_of_targets
    attr = choice(attributes)
    val = choice(values[attr - 1])
    cond = choice(conditions)
    number_of_targets -= 1
    subtree = generate_operator()

    nonce_attr = generate_nonce()
    nonce_val = generate_nonce()
    nonce_cond = generate_nonce()

    print("what is going on %d" % len(bin(nonce_attr)))

    attr_xored = attr^nonce_attr
    val_xored = val^nonce_val
    cond_xored = cond^nonce_cond

    #generate_target_XORed(attr, val, cond, subtree)

    return "T(%d, %d, %d, (%s))" % (attr, val, cond, subtree[0]), "T(%d, %d, %d, (%s))" % (attr_xored, val_xored, cond_xored, subtree[1]),  "T(%d, %d, %d, (%s))" % (nonce_attr, nonce_val, nonce_cond, subtree[2])

def generate_target_XORed(attr, val, cond, subtree):


    generate_target_Nonce(nonce_attr,nonce_val,nonce_cond,subtree)
    return "T(%d, %d, %d, (%s))" % (attr_xored, val_xored, cond_xored, subtree)

def generate_target_Nonce(attr, val, cond, subtree):

    return "T(%d, %d, %d, (%s))" % (attr, val, cond, subtree)

def generate_query(query_length):
    query = ""
    for x in range(0, query_length):
        attr = choice(attributes)
        val = choice(values[attr - 1])
        query += "{%s, %s}, " % (attr, val)

    return query[:-2]

def generate_dummy_target():
    decisions = [(1, 0, 0), (0, 1, 0), (0, 0, 1)]
    decision = choice(decisions)
    return 'D(%d, %d, %d)' % (decision[0], decision[1], decision[2])


def generate_experiment3(repetitions, max_targets,query_length, original_policy_path, share0_policy_path, share1_policy_path):
    global number_of_targets
    #for t in range(1, max_targets + 1):
    for x in range(1, repetitions + 1):
            t = max_targets
            number_of_targets = max_targets            
            policy = generate_policy()
            query = generate_query(query_length)
            f = open(original_policy_path, "a")
            f.write("[%d, x, 10, %d]===[%s]===[%s]\n" % (t, x, query, policy[0]))
            f.close()
            f = open(share0_policy_path, "a")
            f.write("[%d, x, 10, %d]===[%s]===[%s]\n" % (t, x, query, policy[1]))
            f.close()
            f = open(share1_policy_path, "a")
            f.write("[%d, x, 10, %d]===[%s]===[%s]\n" % (t, x, query, policy[2]))
            f.close()
            print("[%d, x, 10, %d]===[%s]===[%s]" % (t, x, query, policy[0]))
            print("[%d, x, 10, %d]===[%s]===[%s]" % (t, x, query, policy[1]))
            print("[%d, x, 10, %d]===[%s]===[%s]" % (t, x, query, policy[2]))


def generate_nonce():
    nonce = getrandbits(30)
    #nonce = numpy.random.randint(2**32,10**6,dtype='uint32')
    
    return nonce

def generate_shares(original_policy_path, share0_policy_path, share1_policy_path):
    with open(original_policy_path, "r") as infile:
        for line in infile:
            print(line.split("===")[0])
            print(line.split("===")[1])
            print(line.split("===")[2])
            policy = line.split("===")[2]
            policy_share_a = str()
            policy_share_b = str()

            i = 0
            two = False
            
            while i < len(policy):
                #print (policy[i])
                value = 0
                if policy[i].isdigit():
                    if policy[i+1].isdigit():
                        value = int(policy[i]+policy[i+1])
                        print("double %d" % value)
                        two = True
                    else:
                        value = int(policy[i])
                        print("single %d" % value)
                    
                    
                    nonce = generate_nonce()
                    print(nonce)
                    value_xored = value^nonce
                    print(value_xored)
                    if two:
                        policy_share_a += str(value_xored)
                        policy_share_b += str(nonce)
                        i+=1
                        two = False
                    else:
                        policy_share_a += str(value_xored)
                        policy_share_b += str(nonce)
                        #i += 1
                else:
                    policy_share_a +=policy[i]
                    policy_share_b +=policy[i]
                i += 1

            print(line.split("===")[0]+"==="+line.split("===")[1]+"==="+policy)
            print(line.split("===")[0]+"==="+line.split("===")[1]+"==="+policy_share_a)
            print(line.split("===")[0]+"==="+line.split("===")[1]+"==="+policy_share_b)
            f = open(share0_policy_path, "a")
            f.write(line.split("===")[0]+"==="+line.split("===")[1]+"==="+policy_share_a)
            f.close()
            f = open(share1_policy_path, "a")
            f.write(line.split("===")[0]+"==="+line.split("===")[1]+"==="+policy_share_b)
            f.close()


def main():
    targets = [1]
    operations = range(1, 21)
    repetitions = 5 
    query_length = range(1,21)
    print("test")
    repetitions = int(sys.argv[1])
    policy_size = int(sys.argv[2])
    request_size = int(sys.argv[3])
    original = str(sys.argv[4]) #file path to save
    share0 = str(sys.argv[5]) #file path to save
    share1 = str(sys.argv[6]) #file path to save
    generate_experiment3(repetitions, policy_size, request_size, original, share0, share1)
   # pdb.set_trace()
    #generate_experiment3(repetitions, 2, 2)
    #generate_shares()
        #generate_experiment2(targets, operations, repetitions, query_length)

if __name__ == "__main__":
    main()
