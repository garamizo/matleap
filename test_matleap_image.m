fps = 50;
T = 10;
N = T * fps;

idxs = zeros(N, 1);
times = zeros(N, 1);

idx = -1;
while idx == -1
    [img1, img2, idx] = matleap_image;
end
h = imshow(permute([img1 img2], [2 1]));

t0 = tic;
for k = 1 : N
    tic
    [img1, img2, idx] = matleap_image;
    set(h, 'CData', permute([img1 img2], [2 1]))
    
    idxs(k) = idx;
    times(k) = toc(t0);
    
    pause(1/fps - toc)
end
toc(t0)
