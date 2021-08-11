close all;
%Liquid level control system block diagram transfer functions

%Pump transfer function
Kpm=2; % pump gain
tp=0.2; % time constant
Gpm=tf([0, Kpm],[tp, 1]);

%Valve transfer function
Kv=2.2e-3; % valve gain
x =2; %position of valve
Gv=tf([0, Kv*x],1);

%Tank transfer function
Kt=24.2; % Tank gain
tt=3.3; % time constant
Gt=tf([0, Kt],[tt, 1]);

%Level sensor transfer function
Kl=1; % sensor gain
Gl=tf([0, 1],1);

OLTF= Gpm*Gv*Gt; % open loop transfer function
CLTF = feedback(OLTF, Gl); %closed loop transfer function
step(CLTF)
stepinfo(CLTF)
% Design of controller

s = tf('s');
figure(1);
rlocus(CLTF) % root locus of system
PD = s + 9.21; % Proportional derivative controller
TF1 = PD * CLTF;
figure(2);
rlocus(TF1)
K = 116.5; % controller gain
TF2 = K * TF1;
TF3 = feedback(TF2,1); % closed loop controller transfer function
figure(3);
step(TF3)
stepinfo(TF3)
figure(4);
margin(TF2)