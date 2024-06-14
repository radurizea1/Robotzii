function [x, y] = parse_data(filename)
    % file input format:
    % n
    % x0 x1 ... xn
    % y0 y1 ... yn

    % Open the file for reading
    nume_fisier = fopen(filename, 'r');
    % Read n, x, y from the file
    n = fscanf(nume_fisier, '%d', 1); % Read n
    x = fscanf(nume_fisier, '%f', n+1); % Read x values
    y = fscanf(nume_fisier, '%f', n+1); % Read y values
    % Close the file
    fclose(nume_fisier);
end
