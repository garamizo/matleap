N = 1000;
idxs = zeros(N, 1);
times = zeros(N, 1);

[img1, img2, idx] = matleap_image;
h = imshow([img1 img2]);

t0 = tic;
for k = 1 : N
    tic
    [img1, img2, idx] = matleap_image;
    set(h, 'CData', [img1 img2])
    
    idxs(k) = idx;
    times(k) = toc(t0);
    
    pause(1/90 - toc)
end
toc(t0)
