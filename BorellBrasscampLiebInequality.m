%%% Borell-Brasscamp-Lieb egyenlőtlenség demonstrációja
%% Paraméterek legenerálása
% Summary of example objective
syms x
x_data = linspace(-100,100,300);
f1 = abs(x)
f2 = x.^2/(100)
f3 = abs(x.^3)/(1000*10)
f = matlabFunction(f1);
g = matlabFunction(f2);
h = matlabFunction(f3);
s = 0.5
n = 2
p = 1
M(a,b,s,p)
plot(x_data,f(x_data),x_data, g(x_data),x_data, h(x_data))
%% egszerű integrálásos összefüggés
int_f = matlabFunction(int(f1))
int_g = matlabFunction(int(f2))
int_h = matlabFunction(int(f3))
nagyobbik = int_h(x_data)
kisebbik = int_g(x_data) + int_h(x_data)
plot(x_data, kisebbik, x_data, nagyobbik)
%% Section 2 Title
% Description of second code block

%% függvények
function result = M(a,b,s,p)
    if a*b == 0
        result = 0
    else
        result = ((1-s)*a^p + s*b^p)^(1/p)
    end
end