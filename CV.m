% aval file ro baz mikonim
% baad mikhoonimesh va zakhirash mikonim
% baad mibandimesh :
F = fopen('C:\Users\sigma\Desktop\Test_00.ppm');
File_content = fread(F);
fclose(F);

% 16 character e aval e file, information raje be tasvir
% hast va etelaat e khode tasvir az character e 17 be baad
% shoroo mishe pas image_data = File_content(17:end)

image_data = File_content(17:end);

% hala ye matrix 3D be abaad e width X heigth X 3 
% ijad mikonim chon tasvir RGB e va be 3 channel baraye
% rang ehtiaj darim

I = zeros(852, 1282, 3);

% hala etelaat e image_data ro be matrix I
% montaghel mikonim:

k = 1;
for i = 1 : 852
    for j = 1 : 1282
        for p = 1: 3
            I(i, j, p) = image_data(k);
            k = k + 1;
        end
    end
end

% inja tasvir ro ba imread mikhoonim ta 
% motmaen shim ke karemoon ro dorost anjam dadim:
% hala tasvir ro neshoon midim:
real_image = imread('C:\Users\sigma\Desktop\Test_00.ppm');
imshow([uint8(I), real_image], []);
