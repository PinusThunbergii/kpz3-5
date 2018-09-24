double ** matrix{nullptr};
    size_t row_count{0}, column_count{0};

    std::cout << "Welcome! " << std::endl;
    std::cout << "Press Enter to continue ..." << std::endl;
    std::cin.get();

    std::cout << "Enter row count: ";
    std::cin >> row_count;
    std::cout << "Enter column count: ";
    std::cin >> column_count;

    if(row_count == 0 || column_count == 0)
    {
        std::cout << "Error: degenerate matrix(size less then 1)" << std::endl;
        return 1;
    }

    matrix = new double*[row_count];
    for(size_t i = 0; i < row_count; i++)
        matrix[i] = new double[column_count];

    std::cout << "Enter matrix " << row_count << "x" << column_count << "(use \" \" to separate elements)" << std::endl;
    //std::cout << "For example 3x3:\n1 -3 -5\n13 6 3\n-8 6 -3\n:\n";
    for(size_t i = 0; i < row_count; i++)
        for(size_t j = 0; j < column_count; j++)
            std::cin >> matrix[i][j];

    std::cout << "You entered:" << std::endl;
    for(size_t i = 0; i < row_count; i++)
    {
        for(size_t j = 0; j < column_count; j++)
            std::cout <<  matrix[i][j] << " ";
        std::cout << std::endl;
    }

    std::cout << "Enter two column number for exchange(numeration starts with 0): ";
    size_t first_column{0}, second_column{0};
    std::cin >> first_column >> second_column;
    if(first_column >= column_count || second_column >= column_count)
    {
        std::cout << "Error: column number is greater then matrix size " << std::endl;
        return 1;
    }

    for(size_t i = 0; i < column_count; i++)
    {
        std::swap(matrix[i][first_column], matrix[i][second_column]);
    }

    for(size_t i = 0; i < row_count; i++)
    {
        for(size_t j = 0; j < column_count; j++)
            std::cout <<  matrix[i][j] << " ";
        std::cout << std::endl;
    }

    std::cout << "Do you want to continue?(Y/N): ";
    char decision{'N'};
    std::cin >> decision;
    switch (decision)
    {
    case 'N':
        return 1;
    case 'Y':
        break;
    default:
        break;
    }

    for(size_t i = 0; i < row_count; i++)
    {
        if(matrix[i] != nullptr)
            delete[] matrix[i];
    } 
    if(matrix != nullptr)
        delete[] matrix;