#include <iostream>
#include <exception>
#include <signal.h>

double **matrix{ nullptr };
size_t row_count{ 0 }, column_count{ 0 }, first_column{ 0 }, second_column{ 0 };
int state = 0;

int enter_parametrs(size_t &row_count, size_t &column_count);
int allocate_memory(double **&matrix, size_t &row_count, size_t &column_count);
int enter_matrix(double **&matrix, size_t &row_count, size_t &column_count);
int print_matrix(double **&matrix, size_t &row_count, size_t &column_count);
int enter_two_column_number(size_t &row_count, size_t &column_count, size_t &first_column, size_t &second_column);
int swap_columns(double **&matrix, size_t &row_count, size_t &column_count, size_t &first_column, size_t &second_column);
char continue_y_n();
int deallocate_memory(double **&matrix, size_t &row_count, size_t &column_count);

int enter_parametrs(size_t &row_count, size_t &column_count)
{
    std::cout << "Enter row count: ";
    std::cin >> row_count;
    std::cout << "Enter column count: ";
    std::cin >> column_count;
    if (row_count == 0 || column_count == 0)
    {
        std::cout << "Error: degenerate matrix(size less then 1)" << std::endl;
        return 1;
    }
    else
        return 0;
}

int allocate_memory(double **&matrix, size_t &row_count, size_t &column_count)
{
	size_t i = 0;
    try
    {
        matrix = new double *[row_count];
        for (; i < row_count; i++)
            matrix[i] = new double[column_count];
    }
    catch (std::exception &ex)
    {
        std::cout << ex.what() << std::endl;
        std::cout << "Memory error, try to decrease martix size" << std::endl;
		deallocate_memory(matrix, i, column_count);
        return 1;
    }
    return 0;
}

int enter_matrix(double **&matrix, size_t &row_count, size_t &column_count)
{
    std::cout << "Enter matrix " << row_count << "x" << column_count << "(use \" \" to separate elements)" << std::endl;
    //std::cout << "For example 3x3:\n1 -3 -5\n13 6 3\n-8 6 -3\n:\n";
    for (size_t i = 0; i < row_count; i++)
        for (size_t j = 0; j < column_count; j++)
            std::cin >> matrix[i][j];
    return 0;
}

int print_matrix(double **&matrix, size_t &row_count, size_t &column_count)
{
    for (size_t i = 0; i < row_count; i++)
    {
        for (size_t j = 0; j < column_count; j++)
            std::cout << matrix[i][j] << " ";
        std::cout << std::endl;
    }
    return 0;
}

int enter_two_column_number(size_t &row_count, size_t &column_count, size_t &first_column, size_t &second_column)
{
    std::cout << "Enter two column number for exchange(numeration starts with 0): ";
    std::cin >> first_column >> second_column;
    if (first_column >= column_count || second_column >= column_count)
    {
        std::cout << "Error: column number is greater then matrix size " << std::endl;
        return 1;
    }
    return 0;
}

int swap_columns(double **&matrix, size_t &row_count, size_t &column_count, size_t &first_column, size_t &second_column)
{
    for (size_t i = 0; i < row_count; i++)
    {
        std::swap(matrix[i][first_column], matrix[i][second_column]);
    }
    return 0;
}

char continue_y_n()
{
    std::cout << "Do you want to repeat?(Y/N): ";
    char decision;
    std::cin >> decision;
    return decision;
}

int deallocate_memory(double **&matrix, size_t &row_count, size_t &column_count)
{
	size_t i = 0;
    for (; i < row_count; i++)
    {
        if (matrix[i] != nullptr)
            delete[] matrix[i];
    }
    if (matrix != nullptr)
        delete[] matrix;
	return 0;
}

void ctrl_c(int s) 
{
	deallocate_memory(matrix, row_count, column_count);
	exit(0);
}

int main(int argc, char **argv)
{
    std::cout << "Welcome! For exit press ctrl+C" << std::endl;
    std::cout << "Press Enter to continue ..." << std::endl;
    std::cin.get();

    
	signal(SIGINT, ctrl_c);
    while (state != 10)
    {
        switch (state)
        {
        case 0:
			deallocate_memory(matrix, row_count, column_count);
            if(enter_parametrs(row_count, column_count)) 
                state = continue_y_n() == 'Y' ? state : 10;
			else
				state++;
            break;
        case 1:
            if(allocate_memory(matrix, row_count, column_count))
            { 
                state = continue_y_n() == 'Y' ? state-- : 10;   
            }
            else
                state++;    
            break;
        case 2:
			enter_matrix(matrix, row_count, column_count);
			state++;
			break;
		case 3:
			std::cout << "You entered:" << std::endl;
			print_matrix(matrix, row_count, column_count);
			state++;
			break;
		case 4:
			if(enter_two_column_number(row_count, column_count, first_column, second_column))
				state = continue_y_n() == 'Y' ? state : state++;
			else
				state++;
			break;
		case 5:
			swap_columns(matrix, row_count, column_count, first_column, second_column);
			state++;
			break;
		case 6:
			print_matrix(matrix, row_count, column_count);
			state = continue_y_n() == 'Y' ? 0 : 10;
			//state++;
			break;
        default:
            std::cout << state << std::endl;
            state=10;
            break;        
        }
    }
	
	std::cin.get();
	std::cin.get();
    return 0;
}