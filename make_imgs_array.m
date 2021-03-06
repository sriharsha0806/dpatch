% this is a script to make the 'imgs' struct for the setdataset(imgs,
% datadir, ~) for the 15 scene dataset

% make a list of all the 15 scene images with their full paths (?)
[status, files] = system('find /data/hays_lab/15_scene_dataset');
im_names = textscan(files, '%s\n'); 
im_names = im_names{1};
im_names = im_names(cell2mat(cellfun(@(x) strcmp(x(end-3:end), '.jpg'),im_names,'UniformOutput', false)));

imgs = struct([]);
% make and entry for each image in imgs - [.fullpath, .city (scene category), .imsize]
for i = 1:length(im_names)
    cur_im = imread(im_names{i});
    imgs(i).fullpath = im_names{i};
    imgs(i).city = im_names{i}(33:end-15);
    imgs(i).imsize = size(cur_im);
end

save('dataset15.mat', 'imgs');