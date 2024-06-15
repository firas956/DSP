%This function implements the Discret Fourrier Transfor 
%This function also works for periodic discret functions(DFS)
%input: x vector 
%       N the length of the vector by default taken as the length of x
%       third variable padd :zero padds the signal (converges to the DTFT)
%output:X the FDT of x
% -- Later updates to do: -add input features
%                         -plot the |X|
%                         -loop over indicies



function X = DFT(x,N,varargin)

% control input 

if nargin == 2 && N ~= length(x)
    error("Give a proper length of x, you can zero padd by adding a third parameter");
elseif nargin == 3 && varargin{1} <= 0
    error("Padding must be a positive number")
elseif nargin > 3
    error("give proper parameters max 3")
elseif nargin == 1
    N = length(x);
elseif nargin == 3
    padd = varargin{1};
    padded_by = (1:padd)*0;
    x = [x padded_by];
    N = N + padd; 
end
%end control input

w = exp(-1i*2*pi/N);
W =w.^((0:N-1)'*(0:N-1));
X = W*x';
A = 0:N-1;
P = (real(X).^2 + imag(X).^2).^0.5;
stem(A,P,'filled');
%plot(A,P,'kx');
%hold on;
%plot(A,real(X),'r-');
%hold on;
%plot(A,imag(X),'b-');

end