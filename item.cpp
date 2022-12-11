#include <iostream>
#include <stdlib.h>
#include <string>
#include <time.h>
#include <fstream>

using namespace std;

string Value(string day, string num, string item, int number)
{
    string type = "('B";
    type.append("202212");
    type.append(day);
    type.append("002");
    type.append(num);
    type.append("',");
    type.append(item);
    type.append(",");
    type.append(to_string(number));
    type.append("),");

    return type;
}
int main()
{
    srand(time(0));
    string days[] = {"08", "09", "10", "11"};
    string num[] = {"001", "002"};
    string item[] = {"'C001'",
                     "'C002'",
                     "'C003'",
                     "'C004'",
                     "'C005'",
                     "'C006'",
                     "'C007'",
                     "'C008'",
                     "'C009'",
                     "'T001'",
                     "'W001'",
                     "'W002'",
                     "'B001'",
                     "'B002'",
                     "'F001'",
                     "'F002'",
                     "'F003'",
                     "'F004'",
                     "'S001'",
                     "'S002'",
                     "'S003'"};

    ofstream out("d.txt");
    for (int i = 0; i < 4; i++)
    {
        for (int j = 0; j < 2; j++)
        {
            for (int k = 0; k < 21; k++)
            {
                out << Value(days[i], num[j], item[k], (rand() % 40 + 10)) << endl;
            }
            out << " " << endl;
        }
        out << " " << endl;
    }
    out.close();
    return 0;
}