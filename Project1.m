im_background = imread("background.jpg");
im_group = imread("group_pic.jpg");
imtool(im_group)
im_gray_group = rgb2gray(im_group);
imtool(im_gray_group)
[x_max, y_max] = find(im_gray_group == max(im_gray_group));
max_coord_group = [y_max(1), x_max(1)];


[x_min, y_min] = find(im_gray_group == 0);
min_coord_group = [y_min(1), x_min(1)];

im_group_size = size(im_gray_group);
bytesize = im_group_size(1,1) * im_group_size(1,2)/1000;

im_spliced = im_gray_group

% im_separated = splice(im_gray_group);
% figure;
% imshow(im_separated)
% im_separated = splice(im_separated);
% figure;
% imshow(im_separated)


function im_separate = splice(x)
    im_separate = x(:, (1:2:end));
    im_separate = x((1:2:end),:);
end
