import particle


p_l = [particle.Particle(1.0, 2.0, 3.0)]*100
print(p_l[0].get_momentum())
# the statement bellow may raise error!
# print(p_1[0].get_momentum_())
print(particle.add_momentum(p_l))
