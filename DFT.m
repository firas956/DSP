%This function implements the Discret Fourrier Transfor 
%This function also works for periodic discret functions(DFS)
%input: x vector 
%       N the length of the vector
%       X the FDT of x
% -- Later updates to do: -add input features
%                         -plot the |X|
%                         -loop over indicies



function X = DFT(x,N)
w = exp(-1i*2*pi/N);
W =w.^((0:N-1)'*(0:N-1));
X = W*x';
A = 0:N-1;
P = (real(X).^2 + imag(X).^2).^0.5;
plot(A,P,'kx');
%hold on;
%plot(A,real(X),'r-');
%hold on;
%plot(A,imag(X),'b-');

end