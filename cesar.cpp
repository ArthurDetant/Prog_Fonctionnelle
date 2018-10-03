#include <algorithm>
#include <array>
#include <cmath>
#include <fstream>
#include <iostream>
#include <numeric>

using namespace std;

using Distribution = array<double,26>;

string chiffrerCesar(int n, const string & str) {
    string str2 = str;
    for (char & c : str2)
        if ('a' <= c and c <= 'z')
            c = 'a' + (c - 'a' + n) % 26;
    return str2;
}

int compterOccurences(char c, const string & str) {
    return count(begin(str), end(str), c);
}

int compterLettres(const string & str) {
    return count_if(begin(str), end(str), 
            [](char c) { return 'a'<=c and c<='z'; });
}

Distribution calculerFrequences(const string & str) {
    Distribution fs;
    const double nbLettres = compterLettres(str);
    for (int n=0; n<26; n++)
        fs[n] = double(compterOccurences('a'+n, str)) / nbLettres;
    return fs;
}

double calculerChi2(const Distribution & fs1, const Distribution & fs2) {
    return inner_product(begin(fs1), end(fs1), begin(fs2), 0.0, plus<double>(),
            [](double f1, double f2) { return pow(f1-f2, 2) / f2; });
}

int casserCesar(const string & str, const Distribution & fs) {
    int nBest = 0;
    double cBest = numeric_limits<double>::infinity();
    for (int n=0; n<26; n++) {
        const string strn = chiffrerCesar(n, str);
        const Distribution fsn = calculerFrequences(strn);
        const double c = calculerChi2(fsn, fs);
        if (c < cBest) {
            cBest = c;
            nBest = n;
        }
    }
    return nBest;
}

Distribution frequencesUk = {
    0.082, 0.015, 0.028, 0.043, 0.127, 0.022, 0.02, 0.061, 0.07,
    0.002, 0.008, 0.04, 0.024, 0.067, 0.075, 0.019, 0.001, 0.06,
    0.063, 0.091, 0.028, 0.01, 0.024, 0.002, 0.02, 0.001
};

int main(int argc, char ** argv) {
    if (argc != 2) {
        cout << "specify input filename";
    }
    else {
        ifstream ifs(argv[1]);
        string ligne, texte;
        while (getline(ifs, ligne))
            texte += ligne + '\n';
        const int clef = casserCesar(texte, frequencesUk);
        cout << chiffrerCesar(clef, texte) << endl;
        cout << clef << endl;
    }
    return 0;
}

