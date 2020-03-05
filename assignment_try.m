clc
close all

A=[13  23 35 38;

    10 9  88 99;

    44 55 77 88]

[m,n]=size(A)
disp(m);
disp(n);
if m~=n-1

    error('Dimentionis not same!')

end



for i=2:m

    for j=i:m

 %       A(j,:)=A(j,:)-(A(i-1,:);
         %disp ("i= ")
         %disp ("j= ")
         A(j,:)
         A(j,:)=A(j,:)-(A(i-1,:)/A(i-1,i-1)*A(j,i-1))
    end

end

%ans=zeros(1,m)


% 
% for i=m:-1:1
% 
%     c=0;
% 
%     for j=m:-1:1
% 
%         c=c+A(i,j)*ans(j);
% 
%     end
% 
%     ans(i)=(A(i,n)-c)/A(i,i)
% 
% end