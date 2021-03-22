#pragma once
#ifndef TREE_H
#define TREE_H
#include <iostream>

class Tree {
	int height;
public:
	Tree(int treeHeight) : height(treeHeight) {} //Constructor
	~Tree() { std::cout << "*"; } //Destructor
	friend std::ostream& operator<<(std::ostream& os, const Tree* t) {
		return os << "Tree height is: "
			<< t->height << std::endl;
	} //overloaded operator
};
#endif //TREE_H ///:~