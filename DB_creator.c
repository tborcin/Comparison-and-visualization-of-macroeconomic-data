#include <stdio.h>
#include <stdlib.h>
#include <float.h>
#include <stdarg.h>

#define INPUT_BUFFER_SIZE 80
#define MAX_STATE_NAME_SIZE 40
#define NUMBER_OF_YEARS 55
#define NUMBER_OF_STATES 250
#define LOOP 250
#define BASE_YEAR 1960

struct year_data
{
    long double GDP;
    long double GDP_per_capita;
    long double Inflation;
    long double Unemployment;
    long double Consumer_price_index;
    long long int Central_government_debt_LCU;
    long double Central_government_debt_GDP;
    float Big_Mac_Index;
};

struct state
{
    char name[MAX_STATE_NAME_SIZE];
    struct year_data year[NUMBER_OF_YEARS];

};


int main(int argc, char ** argv)
{
    int index_of_state = 0, year = 0;
    struct state staty[NUMBER_OF_STATES];
    char buffer[argc - 1][INPUT_BUFFER_SIZE];

    //input files opening
    FILE *inputFiles[argc - 1];
    for (int i = 0; i < argc; i++)
    {
        inputFiles[i] = fopen(argv[i + 1], "r");
    }

    //input file creating
    FILE *output = fopen("XML.txt", "w");

    //input data reading
    while (LOOP)
    {
        for(int i = 0; i < argc; i++)
        {
            if (fgets(buffer[i], INPUT_BUFFER_SIZE, inputFiles[i]) == NULL) break;
        }

        sscanf(buffer[0], " %lf %[^\t\n]", &staty[index_of_state].year[year].GDP, staty[index_of_state].name);
        sscanf(buffer[1], " %lf %[^\t\n]", &staty[index_of_state].year[year].GDP_per_capita, staty[index_of_state].name);
        sscanf(buffer[2], " %lf %[^\t\n]", &staty[index_of_state].year[year].Inflation, staty[index_of_state].name);
        sscanf(buffer[3], " %lf %[^\t\n]", &staty[index_of_state].year[year].Unemployment, staty[index_of_state].name);
        sscanf(buffer[4], " %lf %[^\t\n]", &staty[index_of_state].year[year].Consumer_price_index, staty[index_of_state].name);
        sscanf(buffer[5], " %lli %[^\t\n]", &staty[index_of_state].year[year].Central_government_debt_LCU, staty[index_of_state].name);
        sscanf(buffer[6], " %lf %[^\t\n]", &staty[index_of_state].year[year].Central_government_debt_GDP, staty[index_of_state].name);
        sscanf(buffer[7], " %f %*s %[^\t\n]", &staty[index_of_state].year[year].Big_Mac_Index, staty[index_of_state].name);

        year++;
        if (year == NUMBER_OF_YEARS)
        {
            year = 0;
            index_of_state++;
        }
    }

    //input files closing
    for(int i = 0; i < argc; i++)
    {
        fclose(inputFiles[i]);
    }

    //data output creating
    fprintf(output, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n\n");
    fprintf(output, "<countries>\n");

    for(int i = 0; i < index_of_state; i++)
    {
        fprintf(output, "  <country country_id = \"%d\" country_name = \"%s\">\n", i, staty[i].name);

        for(int j  = 0; j < NUMBER_OF_YEARS; j++)
        {
            fprintf(output, "    <year_data year = \"%d\">\n", j + BASE_YEAR);
            fprintf(output, "      <GDP>%.5lf</GDP>\n", staty[i].year[j].GDP);
            fprintf(output, "      <GDP_per_capita>%.12lf</GDP_per_capita>\n", staty[i].year[j].GDP_per_capita);
            fprintf(output, "      <Inflation>%.14lf</Inflation>\n", staty[i].year[j].Inflation);
            fprintf(output, "      <Unemployment>%.14lf</Unemployment>\n", staty[i].year[j].Unemployment);
            fprintf(output, "      <Consumer_price_index>%.13lf</Consumer_price_index>\n", staty[i].year[j].Consumer_price_index);
            fprintf(output, "      <Central_government_debt_LCU>%lli</Central_government_debt_LCU>\n", staty[i].year[j].Central_government_debt_LCU);
            fprintf(output, "      <Central_government_debt_GDP>%.13lf</Central_government_debt_GDP>\n", staty[i].year[j].Central_government_debt_GDP);
            fprintf(output, "      <Big_Mac_Index>%.2f</Big_Mac_Index>\n", staty[i].year[j].Big_Mac_Index);
            fprintf(output, "    </year_data>\n");
        }

        fprintf(output, "  </country>\n");
    }

    fprintf(output, "</countries>\n");

    //output file closing
    fclose(output);
    return 0;
}

