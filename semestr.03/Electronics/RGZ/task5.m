clear
clc

% ������ �� �������
v = 2;
k = 1;
Ik0 = 16;
E = 10;

% �������
k15 = 15-k;
Ik = Ik0*k15*10^(-3);
i = [50 100 150 200]*k15*10^(-6);
i0 = i(v+1)-3*i(v)/4;
Id = 3*i0;
Rk = E/(2*Ik);
Rb = E/Id;

% �����
fprintf('\t\t����\n');
fprintf('k = %d\n',k);
for j = 1:4
    fprintf('��� ���� %d\n',j);
    fprintf('i�%1d = %3d*(15-%02d) = %4d ���\n',j,50*j,k,50*j*k15); 
end
fprintf('\t�� �������\n');
fprintf('���������� �������\n');
fprintf('E   = %2d �\n',E);
fprintf('��� ����������\n');
fprintf('Ik  = %2d*(15-%02d) = %4d ��\n',Ik0,k,Ik0*k15);
fprintf('��� ���� 0\n');
fprintf('i�0 = %4d ���\n',50*((v+1)*k15-3*v*k15/4));
fprintf('\n');

fprintf('\t\t�������\n');
fprintf('�� ������� ������ ���� �������� ������� 3-5 ���� ���� ������� 3:\n');
fprintf('Id  = 3*i�0 = %4d ���\n',3*50*((v+1)*k15-3*v*k15/4));
fprintf('��������� ������������� ����������\n');
fprintf('Rk  = E/(2*Ik) = %10.6f  ��\n',Rk);
fprintf('��������� ������������� ����\n');
fprintf('Rb  = E/Id = %10.6f ���\n',Rb*10^(-3));
fprintf('��� ���������� ������� ��������� �������������� ������������\n');
fprintf('������� �������� ������� ������� (�� ����� ��� �� ����� ��)\n');
fprintf('Cp1 = %3d ��\n',33);
fprintf('Cp2 = %3d ��\n',33);
fprintf('������� ���������� ������������� 25 �, ��� � %.1f ���� ������ E',25/E);