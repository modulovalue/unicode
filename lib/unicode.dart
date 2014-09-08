// This library was created by the tool.

library unicode;

import "dart:io";
import "package:lists/lists.dart";

final SparseList<int> _categories = _generateInt([0, 31, 1, 32, 1, 29, 1, 3, 21, 3, 1, 23, 1, 3, 21, 3, 1, 22, 1, 1, 18, 1, 1, 21, 1, 1, 25, 1, 1, 21, 1, 1, 17, 1, 2, 21, 2, 10, 13, 10, 2, 21, 2, 3, 25, 3, 2, 21, 2, 26, 9, 26, 1, 22, 1, 1, 21, 1, 1, 18, 1, 1, 24, 1, 1, 16, 1, 1, 24, 1, 26, 5, 26, 1, 22, 1, 1, 25, 1, 1, 18, 1, 1, 25, 1, 33, 1, 33, 1, 29, 1, 1, 21, 1, 4, 23, 4, 1, 26, 1, 1, 21, 1, 1, 24, 1, 1, 26, 1, 1, 7, 1, 1, 20, 1, 1, 25, 1, 1, 2, 1, 1, 26, 1, 1, 24, 1, 1, 26, 1, 1, 25, 1, 2, 15, 2, 1, 24, 1, 1, 5, 1, 2, 21, 2, 1, 24, 1, 1, 15, 1, 1, 7, 1, 1, 19, 1, 3, 15, 3, 1, 21, 1, 23, 9, 23, 1, 25, 1, 7, 9, 7, 24, 5, 24, 1, 25, 1, 8, 5, 8, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 2, 5, 2, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 2, 5, 2, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 2, 9, 2, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 3, 5, 3, 2, 9, 2, 1, 5, 1, 1, 9, 1, 1, 5, 1, 2, 9, 2, 1, 5, 1, 3, 9, 3, 2, 5, 2, 4, 9, 4, 1, 5, 1, 2, 9, 2, 1, 5, 1, 3, 9, 3, 3, 5, 3, 2, 9, 2, 1, 5, 1, 2, 9, 2, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 2, 9, 2, 1, 5, 1, 1, 9, 1, 2, 5, 2, 1, 9, 1, 1, 5, 1, 2, 9, 2, 1, 5, 1, 3, 9, 3, 1, 5, 1, 1, 9, 1, 1, 5, 1, 2, 9, 2, 2, 5, 2, 1, 7, 1, 1, 9, 1, 3, 5, 3, 4, 7, 4, 1, 9, 1, 1, 8, 1, 1, 5, 1, 1, 9, 1, 1, 8, 1, 1, 5, 1, 1, 9, 1, 1, 8, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 2, 5, 2, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 2, 5, 2, 1, 9, 1, 1, 8, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 3, 9, 3, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 7, 5, 7, 2, 9, 2, 1, 5, 1, 2, 9, 2, 2, 5, 2, 1, 9, 1, 1, 5, 1, 4, 9, 4, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 69, 5, 69, 1, 7, 1, 27, 5, 27, 18, 6, 18, 4, 24, 4, 12, 6, 12, 14, 24, 14, 5, 6, 5, 7, 24, 7, 1, 6, 1, 1, 24, 1, 1, 6, 1, 17, 24, 17, 112, 12, 112, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 6, 1, 1, 24, 1, 1, 9, 1, 1, 5, 3, 3, 6, 1, 3, 5, 3, 1, 21, 1, 1, 9, 5, 6, 24, 2, 1, 9, 1, 1, 21, 1, 3, 9, 4, 2, 9, 2, 3, 9, 2, 1, 5, 1, 17, 9, 18, 10, 9, 9, 35, 5, 35, 1, 9, 1, 2, 5, 2, 3, 9, 3, 3, 5, 3, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 5, 5, 5, 1, 9, 1, 1, 5, 1, 1, 25, 1, 1, 9, 1, 1, 5, 1, 2, 9, 2, 2, 5, 2, 51, 9, 51, 48, 5, 48, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 26, 1, 5, 12, 5, 2, 11, 2, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 2, 9, 2, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 2, 5, 2, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 2, 39, 9, 40, 3, 6, 1, 6, 21, 7, 40, 5, 40, 2, 21, 1, 1, 17, 3, 4, 26, 2, 1, 23, 2, 46, 12, 45, 1, 17, 1, 1, 12, 1, 1, 21, 1, 2, 12, 2, 1, 21, 1, 2, 12, 2, 1, 21, 1, 1, 12, 9, 35, 7, 32, 8, 7, 3, 2, 21, 13, 17, 2, 6, 3, 25, 3, 2, 21, 2, 1, 23, 1, 2, 21, 2, 2, 26, 2, 11, 12, 11, 1, 21, 1, 1, 2, 2, 3, 21, 2, 32, 7, 32, 1, 6, 1, 10, 7, 10, 21, 12, 21, 10, 13, 10, 4, 21, 4, 2, 7, 2, 1, 12, 1, 99, 7, 99, 1, 21, 1, 1, 7, 1, 7, 12, 7, 1, 2, 1, 1, 26, 1, 6, 12, 6, 2, 6, 2, 2, 12, 2, 1, 26, 1, 4, 12, 4, 2, 7, 2, 10, 13, 10, 3, 7, 3, 2, 26, 2, 1, 7, 1, 14, 21, 15, 2, 2, 1, 1, 7, 1, 1, 12, 1, 30, 7, 30, 27, 12, 29, 91, 7, 89, 11, 12, 11, 1, 7, 15, 24, 13, 10, 33, 7, 33, 9, 12, 9, 2, 6, 2, 1, 26, 1, 3, 21, 3, 1, 6, 6, 27, 7, 22, 4, 12, 4, 1, 6, 1, 9, 12, 9, 1, 6, 1, 3, 12, 3, 1, 6, 1, 5, 12, 7, 17, 21, 16, 26, 7, 25, 3, 12, 5, 3, 21, 66, 84, 7, 68, 80, 12, 31, 1, 10, 1, 54, 7, 54, 1, 12, 1, 1, 10, 1, 1, 12, 1, 1, 7, 1, 3, 10, 3, 8, 12, 8, 4, 10, 4, 1, 12, 1, 2, 10, 2, 1, 7, 1, 7, 12, 7, 10, 7, 10, 2, 12, 2, 2, 21, 2, 10, 13, 10, 1, 21, 1, 1, 6, 1, 15, 7, 15, 1, 12, 1, 2, 10, 3, 9, 7, 10, 4, 7, 4, 24, 7, 23, 8, 7, 8, 2, 7, 4, 7, 7, 6, 3, 12, 1, 1, 7, 1, 3, 10, 3, 4, 12, 6, 4, 10, 4, 4, 10, 2, 1, 12, 1, 1, 7, 9, 9, 10, 5, 6, 7, 3, 4, 7, 3, 2, 12, 4, 12, 13, 10, 2, 7, 2, 2, 23, 2, 6, 15, 6, 1, 26, 1, 1, 23, 6, 7, 12, 2, 1, 10, 2, 7, 7, 10, 6, 7, 4, 24, 7, 23, 8, 7, 8, 3, 7, 3, 3, 7, 3, 3, 7, 4, 3, 12, 2, 4, 10, 3, 2, 12, 6, 6, 12, 4, 5, 12, 6, 4, 12, 8, 11, 7, 5, 2, 7, 8, 17, 13, 10, 2, 12, 2, 3, 7, 3, 1, 12, 12, 13, 12, 2, 1, 10, 2, 10, 7, 10, 4, 7, 4, 23, 7, 23, 8, 7, 8, 3, 7, 3, 6, 7, 7, 3, 12, 1, 1, 7, 1, 3, 10, 3, 5, 12, 6, 3, 12, 2, 1, 10, 2, 3, 10, 2, 1, 12, 3, 3, 7, 16, 17, 7, 2, 2, 12, 4, 12, 13, 10, 1, 21, 1, 1, 23, 16, 16, 12, 1, 2, 10, 3, 9, 7, 10, 4, 7, 4, 24, 7, 23, 8, 7, 8, 3, 7, 3, 6, 7, 7, 3, 12, 1, 1, 7, 1, 1, 10, 1, 1, 12, 1, 1, 10, 1, 4, 12, 6, 4, 10, 4, 4, 10, 2, 1, 12, 9, 9, 12, 1, 1, 10, 5, 6, 7, 3, 4, 7, 3, 2, 12, 4, 12, 13, 10, 1, 26, 1, 1, 7, 1, 6, 15, 16, 11, 12, 1, 1, 7, 2, 7, 7, 9, 6, 7, 4, 5, 7, 7, 5, 7, 3, 2, 7, 2, 3, 7, 5, 5, 7, 5, 6, 7, 6, 15, 7, 16, 6, 10, 2, 1, 12, 1, 2, 10, 5, 6, 10, 4, 4, 10, 3, 1, 12, 3, 3, 7, 7, 7, 10, 15, 24, 13, 10, 3, 15, 3, 6, 26, 6, 1, 23, 1, 1, 26, 6, 6, 12, 1, 3, 10, 4, 9, 7, 9, 4, 7, 4, 24, 7, 24, 17, 7, 19, 4, 7, 1, 3, 12, 3, 4, 10, 5, 4, 12, 4, 5, 12, 11, 9, 12, 3, 3, 7, 8, 8, 7, 2, 2, 12, 4, 12, 13, 18, 15, 15, 7, 1, 26, 2, 2, 12, 1, 2, 10, 3, 9, 7, 9, 4, 7, 4, 24, 7, 24, 11, 7, 11, 6, 7, 7, 3, 12, 1, 1, 7, 1, 1, 10, 1, 1, 12, 1, 5, 10, 6, 2, 12, 1, 2, 10, 3, 3, 10, 2, 2, 12, 9, 9, 10, 9, 8, 7, 2, 3, 7, 2, 2, 12, 4, 12, 13, 11, 3, 7, 16, 15, 12, 1, 2, 10, 3, 9, 7, 9, 4, 7, 4, 42, 7, 43, 3, 7, 1, 3, 10, 3, 4, 12, 5, 4, 10, 4, 4, 10, 3, 1, 12, 1, 1, 7, 9, 9, 10, 9, 10, 7, 2, 2, 12, 4, 12, 13, 10, 6, 15, 9, 4, 26, 1, 6, 7, 8, 4, 10, 3, 19, 7, 21, 27, 7, 25, 10, 7, 10, 2, 7, 3, 9, 7, 10, 4, 12, 5, 7, 10, 3, 3, 12, 4, 2, 12, 2, 9, 10, 14, 16, 13, 12, 4, 10, 2, 1, 21, 13, 60, 7, 48, 1, 12, 1, 2, 7, 2, 7, 12, 11, 5, 23, 1, 6, 7, 6, 1, 6, 1, 8, 12, 8, 1, 21, 1, 10, 13, 10, 2, 21, 39, 39, 7, 3, 2, 7, 3, 4, 7, 3, 2, 7, 3, 3, 7, 7, 10, 7, 5, 8, 7, 8, 4, 7, 4, 2, 7, 2, 2, 7, 3, 4, 7, 3, 5, 7, 4, 1, 12, 1, 2, 7, 2, 6, 12, 7, 3, 12, 2, 1, 7, 3, 7, 7, 6, 2, 6, 2, 7, 12, 8, 12, 13, 12, 6, 7, 36, 33, 7, 1, 3, 26, 3, 15, 21, 15, 1, 26, 1, 1, 21, 1, 3, 26, 3, 2, 12, 2, 6, 26, 6, 10, 13, 10, 10, 15, 10, 1, 26, 1, 1, 12, 1, 1, 26, 1, 1, 12, 1, 1, 26, 1, 1, 12, 1, 1, 22, 1, 1, 18, 1, 1, 22, 1, 1, 18, 1, 2, 10, 2, 8, 7, 9, 37, 7, 40, 18, 12, 14, 1, 10, 1, 5, 12, 5, 1, 21, 1, 2, 12, 2, 5, 7, 5, 11, 12, 12, 37, 12, 37, 9, 26, 8, 1, 12, 1, 6, 26, 7, 3, 26, 2, 5, 21, 5, 4, 26, 4, 2, 21, 39, 80, 7, 43, 2, 10, 2, 4, 12, 4, 1, 10, 1, 6, 12, 6, 1, 10, 1, 2, 12, 2, 2, 10, 2, 2, 12, 2, 1, 7, 1, 10, 13, 10, 6, 21, 6, 6, 7, 6, 2, 10, 2, 2, 12, 2, 4, 7, 4, 3, 12, 3, 1, 7, 1, 3, 10, 3, 2, 7, 2, 7, 10, 7, 3, 7, 3, 4, 12, 4, 13, 7, 13, 1, 12, 1, 2, 10, 2, 2, 12, 2, 6, 10, 6, 1, 12, 1, 1, 7, 1, 1, 10, 1, 10, 13, 10, 3, 10, 3, 1, 12, 1, 2, 26, 2, 38, 9, 39, 2, 9, 6, 6, 9, 3, 45, 7, 43, 1, 21, 1, 1, 6, 1, 332, 7, 333, 5, 7, 6, 9, 7, 8, 2, 7, 2, 5, 7, 6, 43, 7, 42, 5, 7, 6, 35, 7, 34, 5, 7, 6, 9, 7, 8, 2, 7, 2, 5, 7, 6, 17, 7, 16, 58, 7, 58, 5, 7, 6, 69, 7, 69, 5, 12, 3, 9, 21, 9, 20, 15, 23, 19, 7, 16, 10, 26, 16, 91, 7, 96, 12, 17, 1, 620, 7, 620, 2, 21, 2, 17, 7, 17, 1, 29, 1, 26, 7, 26, 1, 22, 1, 1, 18, 4, 78, 7, 75, 3, 21, 3, 3, 14, 3, 8, 7, 15, 20, 7, 14, 5, 7, 4, 3, 12, 14, 29, 7, 18, 3, 12, 3, 2, 21, 11, 27, 7, 18, 2, 12, 14, 25, 7, 14, 4, 7, 4, 3, 12, 14, 64, 7, 52, 2, 12, 2, 1, 10, 1, 7, 12, 7, 8, 10, 8, 1, 12, 1, 2, 10, 2, 11, 12, 11, 3, 21, 3, 1, 6, 1, 3, 21, 3, 1, 23, 1, 1, 7, 1, 1, 12, 3, 12, 13, 16, 16, 15, 16, 12, 21, 6, 1, 17, 1, 4, 21, 4, 3, 12, 3, 1, 2, 2, 11, 13, 16, 41, 7, 35, 1, 6, 1, 52, 7, 60, 49, 7, 41, 1, 12, 1, 1, 7, 6, 75, 7, 80, 41, 7, 32, 4, 12, 3, 4, 10, 4, 2, 12, 2, 3, 10, 7, 6, 10, 2, 1, 12, 1, 6, 10, 6, 3, 12, 7, 5, 26, 4, 5, 21, 2, 10, 13, 10, 30, 7, 32, 7, 7, 16, 55, 7, 48, 21, 10, 17, 7, 7, 7, 2, 10, 8, 16, 13, 10, 1, 15, 4, 37, 26, 34, 23, 7, 23, 2, 12, 2, 2, 10, 2, 1, 12, 3, 4, 21, 2, 53, 7, 53, 1, 10, 1, 1, 12, 1, 1, 10, 1, 7, 12, 8, 2, 12, 1, 1, 10, 1, 1, 12, 1, 2, 10, 2, 8, 12, 8, 6, 10, 6, 10, 12, 12, 3, 12, 1, 10, 13, 16, 16, 13, 16, 13, 21, 7, 1, 6, 1, 6, 21, 8, 16, 12, 14, 1, 11, 66, 69, 12, 4, 1, 10, 1, 47, 7, 47, 1, 12, 1, 1, 10, 1, 5, 12, 5, 1, 10, 1, 1, 12, 1, 5, 10, 5, 1, 12, 1, 2, 10, 2, 7, 7, 11, 14, 13, 10, 7, 21, 7, 10, 26, 10, 9, 12, 9, 9, 26, 12, 5, 12, 2, 1, 10, 1, 30, 7, 30, 1, 10, 1, 4, 12, 4, 2, 10, 2, 2, 12, 2, 1, 10, 1, 3, 12, 3, 2, 7, 2, 10, 13, 10, 44, 7, 44, 1, 12, 1, 1, 10, 1, 2, 12, 2, 3, 10, 3, 1, 12, 1, 1, 10, 1, 3, 12, 3, 2, 10, 10, 12, 21, 4, 36, 7, 36, 8, 10, 8, 8, 12, 8, 2, 10, 2, 2, 12, 5, 8, 21, 5, 10, 13, 13, 6, 7, 3, 10, 13, 10, 30, 7, 30, 6, 6, 6, 2, 21, 66, 72, 21, 16, 11, 12, 3, 1, 21, 1, 13, 12, 13, 1, 10, 1, 7, 12, 7, 4, 7, 4, 1, 12, 1, 4, 7, 4, 2, 10, 2, 1, 12, 1, 2, 7, 3, 3, 12, 8, 50, 5, 44, 63, 6, 63, 13, 5, 13, 1, 6, 1, 34, 5, 34, 37, 6, 37, 54, 12, 60, 10, 12, 4, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 9, 5, 9, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 9, 5, 9, 8, 9, 8, 6, 5, 8, 8, 9, 8, 10, 5, 8, 8, 9, 8, 8, 5, 8, 8, 9, 8, 6, 5, 8, 8, 9, 8, 10, 5, 9, 2, 9, 2, 2, 9, 2, 2, 9, 2, 2, 9, 1, 8, 5, 8, 8, 9, 8, 14, 5, 16, 10, 5, 8, 8, 8, 8, 8, 5, 8, 8, 8, 8, 8, 5, 8, 8, 8, 8, 5, 5, 6, 3, 5, 2, 4, 9, 4, 1, 8, 1, 1, 24, 1, 1, 5, 1, 3, 24, 3, 3, 5, 4, 3, 5, 2, 4, 9, 4, 1, 8, 1, 3, 24, 3, 4, 5, 6, 4, 5, 2, 4, 9, 5, 4, 24, 3, 8, 5, 8, 5, 9, 5, 3, 24, 5, 5, 5, 4, 3, 5, 2, 4, 9, 4, 1, 8, 1, 2, 24, 3, 12, 29, 11, 5, 2, 5, 6, 17, 6, 2, 21, 2, 1, 20, 1, 1, 19, 1, 1, 22, 1, 2, 20, 2, 1, 19, 1, 1, 22, 1, 1, 20, 1, 8, 21, 8, 1, 27, 1, 1, 28, 1, 5, 2, 5, 1, 29, 1, 9, 21, 9, 1, 20, 1, 1, 19, 1, 4, 21, 4, 2, 16, 2, 3, 21, 3, 1, 25, 1, 1, 22, 1, 1, 18, 1, 11, 21, 11, 1, 25, 1, 1, 21, 1, 1, 16, 1, 10, 21, 10, 1, 29, 1, 5, 2, 6, 11, 2, 10, 1, 15, 1, 1, 6, 3, 8, 15, 6, 3, 25, 3, 1, 22, 1, 1, 18, 1, 1, 6, 1, 10, 15, 10, 3, 25, 3, 1, 22, 1, 1, 18, 2, 14, 6, 16, 33, 23, 48, 31, 12, 13, 4, 11, 4, 1, 12, 1, 3, 11, 3, 12, 12, 27, 17, 26, 2, 1, 9, 1, 4, 26, 4, 1, 9, 1, 2, 26, 2, 1, 5, 1, 3, 9, 3, 2, 5, 2, 3, 9, 3, 1, 5, 1, 1, 26, 1, 1, 9, 1, 2, 26, 2, 1, 25, 1, 5, 9, 5, 6, 26, 6, 1, 9, 1, 1, 26, 1, 1, 9, 1, 1, 26, 1, 1, 9, 1, 1, 26, 1, 4, 9, 4, 1, 26, 1, 1, 5, 1, 4, 9, 4, 1, 5, 1, 4, 7, 4, 1, 5, 1, 2, 26, 2, 2, 5, 2, 2, 9, 2, 5, 25, 5, 1, 9, 1, 4, 5, 4, 1, 26, 1, 1, 25, 1, 2, 26, 2, 1, 5, 1, 1, 26, 1, 16, 15, 16, 35, 14, 35, 1, 9, 1, 1, 5, 1, 4, 14, 4, 1, 15, 7, 11, 25, 5, 5, 26, 5, 2, 25, 2, 4, 26, 4, 1, 25, 1, 2, 26, 2, 1, 25, 1, 2, 26, 2, 1, 25, 1, 7, 26, 7, 1, 25, 1, 31, 26, 31, 2, 25, 2, 2, 26, 2, 1, 25, 1, 1, 26, 1, 1, 25, 1, 31, 26, 31, 268, 25, 268, 8, 26, 8, 1, 22, 1, 1, 18, 1, 1, 22, 1, 1, 18, 1, 20, 26, 20, 2, 25, 2, 7, 26, 7, 1, 22, 1, 1, 18, 1, 81, 26, 81, 1, 25, 1, 30, 26, 30, 25, 25, 25, 40, 26, 40, 6, 25, 6, 25, 26, 30, 44, 26, 64, 36, 26, 32, 81, 15, 60, 78, 26, 78, 22, 15, 22, 183, 26, 183, 1, 25, 1, 9, 26, 9, 1, 25, 1, 54, 26, 54, 8, 25, 8, 111, 26, 111, 1, 25, 1, 248, 26, 248, 1, 22, 1, 1, 18, 1, 1, 22, 1, 1, 18, 1, 1, 22, 1, 1, 18, 1, 1, 22, 1, 1, 18, 1, 1, 22, 1, 1, 18, 1, 1, 22, 1, 1, 18, 1, 1, 22, 1, 1, 18, 1, 30, 15, 30, 44, 26, 44, 5, 25, 5, 1, 22, 1, 1, 18, 1, 31, 25, 31, 1, 22, 1, 1, 18, 1, 1, 22, 1, 1, 18, 1, 1, 22, 1, 1, 18, 1, 1, 22, 1, 1, 18, 1, 1, 22, 1, 1, 18, 1, 16, 25, 16, 256, 26, 256, 131, 25, 131, 1, 22, 1, 1, 18, 1, 1, 22, 1, 1, 18, 1, 1, 22, 1, 1, 18, 1, 1, 22, 1, 1, 18, 1, 1, 22, 1, 1, 18, 1, 1, 22, 1, 1, 18, 1, 1, 22, 1, 1, 18, 1, 1, 22, 1, 1, 18, 1, 1, 22, 1, 1, 18, 1, 1, 22, 1, 1, 18, 1, 1, 22, 1, 1, 18, 1, 63, 25, 63, 1, 22, 1, 1, 18, 1, 1, 22, 1, 1, 18, 1, 32, 25, 32, 1, 22, 1, 1, 18, 1, 258, 25, 258, 48, 26, 48, 21, 25, 21, 2, 26, 2, 6, 25, 6, 39, 26, 41, 34, 26, 34, 36, 26, 37, 15, 26, 13, 9, 26, 54, 93, 9, 48, 48, 5, 48, 2, 9, 1, 1, 5, 1, 3, 9, 3, 2, 5, 2, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 4, 9, 4, 1, 5, 1, 1, 9, 1, 2, 5, 2, 1, 9, 1, 6, 5, 6, 2, 6, 2, 3, 9, 3, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 2, 5, 2, 6, 26, 6, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 3, 12, 3, 1, 9, 1, 1, 5, 6, 9, 21, 4, 1, 15, 1, 2, 21, 2, 38, 5, 39, 2, 5, 6, 6, 5, 3, 58, 7, 63, 8, 6, 1, 1, 21, 15, 15, 12, 1, 23, 7, 32, 16, 7, 8, 8, 7, 8, 8, 7, 8, 8, 7, 8, 8, 7, 8, 8, 7, 8, 8, 7, 8, 8, 7, 8, 33, 12, 32, 2, 21, 2, 1, 20, 1, 1, 19, 1, 1, 20, 1, 1, 19, 1, 3, 21, 3, 1, 20, 1, 1, 19, 1, 1, 21, 1, 1, 20, 1, 1, 19, 1, 9, 21, 9, 1, 17, 1, 2, 21, 2, 1, 17, 1, 1, 21, 1, 1, 20, 1, 1, 19, 1, 2, 21, 2, 1, 20, 1, 1, 19, 1, 1, 22, 1, 1, 18, 1, 1, 22, 1, 1, 18, 1, 1, 22, 1, 1, 18, 1, 1, 22, 1, 1, 18, 1, 5, 21, 5, 1, 6, 1, 10, 21, 10, 2, 17, 2, 4, 21, 4, 1, 17, 1, 1, 21, 1, 1, 22, 62, 87, 26, 27, 90, 26, 101, 226, 26, 240, 38, 26, 16, 5, 29, 1, 3, 21, 3, 1, 26, 1, 1, 6, 1, 1, 7, 1, 1, 14, 1, 1, 22, 1, 1, 18, 1, 1, 22, 1, 1, 18, 1, 1, 22, 1, 1, 18, 1, 1, 22, 1, 1, 18, 1, 1, 22, 1, 1, 18, 1, 2, 26, 2, 1, 22, 1, 1, 18, 1, 1, 22, 1, 1, 18, 1, 1, 22, 1, 1, 18, 1, 1, 22, 1, 1, 18, 1, 1, 17, 1, 1, 22, 1, 2, 18, 2, 1, 26, 1, 9, 14, 9, 4, 12, 4, 2, 10, 2, 1, 17, 1, 5, 6, 5, 2, 26, 2, 3, 14, 3, 1, 6, 1, 1, 7, 1, 1, 21, 1, 2, 26, 3, 87, 7, 88, 4, 12, 2, 2, 24, 2, 2, 6, 2, 1, 7, 1, 1, 17, 1, 90, 7, 90, 1, 21, 1, 3, 6, 3, 1, 7, 6, 46, 7, 44, 97, 7, 95, 3, 26, 2, 4, 15, 4, 10, 26, 10, 27, 7, 32, 41, 26, 48, 28, 7, 16, 31, 26, 32, 11, 15, 10, 30, 26, 30, 8, 15, 8, 1, 26, 1, 15, 15, 15, 32, 26, 32, 10, 15, 10, 39, 26, 39, 15, 15, 15, 63, 26, 64, 257, 26, 256, 1, 7, 6581, 6581, 7, 11, 74, 26, 64, 1, 7, 20940, 20940, 7, 52, 72, 7, 21, 1, 6, 1, 1143, 7, 1146, 58, 26, 64, 49, 7, 40, 6, 6, 6, 2, 21, 2, 268, 7, 268, 1, 6, 1, 3, 21, 3, 16, 7, 16, 10, 13, 10, 2, 7, 22, 21, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 7, 1, 1, 12, 1, 3, 11, 3, 1, 21, 1, 10, 12, 10, 1, 21, 1, 1, 6, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 2, 6, 3, 2, 12, 1, 70, 7, 70, 10, 14, 10, 2, 12, 2, 6, 21, 14, 31, 24, 23, 9, 6, 9, 2, 24, 2, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 3, 5, 3, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 6, 1, 8, 5, 8, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 2, 9, 2, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 6, 1, 2, 24, 2, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 2, 2, 9, 1, 1, 5, 1, 1, 9, 1, 3, 5, 3, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 1, 9, 1, 1, 5, 1, 4, 9, 6, 4, 9, 71, 70, 7, 1, 2, 6, 2, 1, 5, 1, 7, 7, 7, 1, 12, 1, 3, 7, 3, 1, 12, 1, 4, 7, 4, 1, 12, 1, 23, 7, 23, 2, 10, 2, 2, 12, 2, 1, 10, 1, 4, 26, 8, 10, 15, 6, 2, 26, 2, 1, 23, 1, 1, 26, 7, 58, 7, 52, 4, 21, 12, 10, 10, 2, 50, 7, 50, 16, 10, 16, 1, 12, 10, 11, 21, 2, 10, 13, 16, 24, 12, 18, 6, 7, 6, 3, 21, 3, 1, 7, 5, 14, 13, 10, 28, 7, 28, 8, 12, 8, 2, 21, 2, 23, 7, 23, 11, 12, 11, 2, 10, 13, 12, 21, 1, 29, 7, 32, 6, 12, 3, 1, 10, 1, 47, 7, 47, 1, 12, 1, 2, 10, 2, 4, 12, 4, 2, 10, 2, 1, 12, 1, 4, 10, 4, 13, 21, 14, 2, 6, 1, 10, 13, 14, 6, 21, 2, 5, 7, 5, 1, 12, 1, 1, 6, 1, 9, 7, 9, 10, 13, 10, 5, 7, 6, 42, 7, 41, 6, 12, 6, 2, 10, 2, 2, 12, 2, 2, 10, 2, 2, 12, 11, 12, 7, 3, 1, 12, 1, 8, 7, 8, 1, 12, 1, 1, 10, 3, 12, 13, 12, 6, 21, 4, 16, 7, 16, 1, 6, 1, 6, 7, 6, 3, 26, 3, 1, 7, 1, 1, 10, 1, 1, 12, 1, 1, 10, 1, 50, 7, 50, 1, 12, 1, 1, 7, 1, 3, 12, 3, 2, 7, 2, 2, 12, 2, 5, 7, 5, 2, 12, 2, 1, 7, 1, 1, 12, 1, 1, 7, 25, 26, 7, 2, 1, 6, 1, 2, 21, 2, 11, 7, 11, 1, 10, 1, 2, 12, 2, 2, 10, 2, 2, 21, 2, 1, 7, 1, 2, 6, 2, 1, 10, 1, 1, 12, 11, 16, 7, 8, 8, 7, 8, 8, 7, 15, 16, 7, 8, 8, 7, 8, 44, 5, 43, 1, 24, 1, 4, 6, 8, 6, 5, 92, 125, 7, 35, 2, 10, 2, 1, 12, 1, 2, 10, 2, 1, 12, 1, 2, 10, 2, 1, 21, 1, 1, 10, 1, 1, 12, 3, 12, 13, 16, 7, 7, 11171, 11171, 7, 13, 35, 7, 27, 53, 7, 53, 5, 4, 895, 896, 4, 128, 128, 4, 1024, 1023, 4, 1, 1, 3, 6399, 6399, 3, 1, 366, 7, 368, 108, 7, 144, 45, 5, 19, 17, 5, 10, 6, 7, 1, 1, 12, 1, 10, 7, 10, 1, 25, 1, 13, 7, 14, 6, 7, 6, 2, 7, 2, 3, 7, 3, 3, 7, 3, 109, 7, 108, 16, 24, 33, 380, 7, 363, 1, 18, 1, 1, 22, 17, 80, 7, 66, 56, 7, 94, 52, 7, 12, 1, 23, 1, 1, 26, 3, 18, 12, 16, 7, 21, 7, 1, 22, 1, 1, 18, 1, 1, 21, 7, 20, 12, 16, 3, 21, 1, 2, 17, 2, 2, 16, 2, 1, 22, 1, 1, 18, 1, 1, 22, 1, 1, 18, 1, 1, 22, 1, 1, 18, 1, 1, 22, 1, 1, 18, 1, 1, 22, 1, 1, 18, 1, 1, 22, 1, 1, 18, 1, 1, 22, 1, 1, 18, 1, 1, 22, 1, 1, 18, 1, 2, 21, 2, 1, 22, 1, 1, 18, 1, 4, 21, 4, 3, 16, 3, 3, 21, 4, 5, 21, 4, 1, 17, 1, 1, 22, 1, 1, 18, 1, 1, 22, 1, 1, 18, 1, 1, 22, 1, 1, 18, 1, 3, 21, 3, 1, 25, 1, 1, 17, 1, 3, 25, 4, 2, 21, 1, 1, 23, 1, 2, 21, 6, 9, 7, 6, 136, 7, 137, 3, 2, 2, 4, 21, 3, 1, 23, 1, 3, 21, 3, 1, 22, 1, 1, 18, 1, 1, 21, 1, 1, 25, 1, 1, 21, 1, 1, 17, 1, 2, 21, 2, 10, 13, 10, 2, 21, 2, 3, 25, 3, 2, 21, 2, 26, 9, 26, 1, 22, 1, 1, 21, 1, 1, 18, 1, 1, 24, 1, 1, 16, 1, 1, 24, 1, 26, 5, 26, 1, 22, 1, 1, 25, 1, 1, 18, 1, 1, 25, 1, 1, 22, 1, 1, 18, 1, 1, 21, 1, 1, 22, 1, 1, 18, 1, 2, 21, 2, 10, 7, 10, 1, 6, 1, 45, 7, 45, 2, 6, 2, 31, 7, 34, 9, 7, 8, 8, 7, 8, 8, 7, 8, 5, 7, 6, 5, 23, 2, 1, 25, 1, 1, 24, 1, 1, 26, 1, 2, 23, 3, 2, 26, 1, 4, 25, 4, 2, 26, 12, 13, 2, 3, 2, 26, 4, 14, 7, 13, 27, 7, 27, 20, 7, 20, 3, 7, 3, 16, 7, 17, 16, 7, 48, 157, 7, 128, 8, 21, 7, 49, 15, 48, 12, 26, 9, 53, 14, 53, 4, 15, 4, 17, 26, 17, 2, 15, 2, 1, 26, 4, 15, 26, 16, 5, 26, 48, 92, 26, 45, 1, 12, 131, 159, 7, 32, 52, 7, 64, 16, 12, 1, 27, 15, 31, 36, 7, 32, 4, 15, 16, 29, 7, 17, 1, 14, 1, 8, 7, 8, 1, 14, 6, 43, 7, 38, 5, 12, 10, 35, 7, 31, 2, 21, 1, 36, 7, 40, 12, 7, 8, 1, 21, 1, 5, 14, 47, 82, 9, 40, 40, 5, 40, 78, 7, 80, 12, 13, 96, 126, 7, 48, 60, 7, 63, 12, 21, 145, 455, 7, 320, 31, 7, 32, 18, 7, 160, 158, 7, 8, 3, 7, 2, 45, 7, 45, 3, 7, 5, 4, 7, 3, 25, 7, 24, 2, 21, 1, 8, 15, 8, 23, 7, 23, 2, 26, 2, 7, 15, 7, 31, 7, 39, 17, 15, 89, 102, 7, 22, 6, 15, 9, 4, 21, 1, 26, 7, 31, 6, 21, 65, 120, 7, 62, 8, 7, 66, 65, 7, 1, 3, 12, 4, 3, 12, 7, 9, 12, 4, 4, 7, 5, 4, 7, 4, 28, 7, 31, 7, 12, 7, 5, 12, 1, 8, 15, 16, 17, 21, 16, 36, 7, 29, 2, 15, 2, 1, 21, 1, 29, 7, 29, 3, 15, 35, 40, 7, 8, 1, 26, 1, 28, 7, 28, 2, 12, 6, 9, 15, 5, 7, 21, 16, 63, 7, 57, 10, 21, 7, 22, 7, 24, 10, 15, 8, 19, 7, 24, 13, 15, 8, 18, 7, 25, 11, 21, 16, 19, 15, 87, 153, 7, 608, 566, 15, 416, 386, 10, 1, 1, 12, 1, 1, 10, 1, 53, 7, 53, 15, 12, 15, 7, 21, 11, 24, 15, 20, 10, 13, 25, 18, 12, 3, 1, 10, 1, 45, 7, 45, 3, 10, 3, 4, 12, 4, 2, 10, 2, 2, 12, 2, 2, 21, 2, 1, 2, 1, 4, 21, 18, 39, 7, 32, 17, 13, 16, 9, 12, 3, 36, 7, 36, 5, 12, 5, 1, 10, 1, 8, 12, 9, 11, 13, 10, 4, 21, 16, 47, 7, 35, 1, 12, 1, 2, 21, 2, 1, 7, 10, 11, 12, 2, 1, 10, 1, 48, 7, 48, 3, 10, 3, 9, 12, 9, 2, 10, 2, 4, 7, 4, 4, 21, 8, 5, 21, 3, 12, 13, 10, 1, 7, 7, 26, 15, 31, 29, 7, 19, 26, 7, 25, 3, 10, 3, 3, 12, 3, 2, 10, 2, 1, 12, 1, 1, 10, 1, 2, 12, 2, 6, 21, 120, 161, 7, 47, 1, 12, 1, 3, 10, 3, 8, 12, 13, 15, 13, 17, 8, 12, 1, 2, 10, 3, 9, 7, 10, 4, 7, 4, 24, 7, 23, 8, 7, 8, 3, 7, 3, 6, 7, 7, 3, 12, 1, 1, 7, 1, 2, 10, 2, 1, 12, 1, 4, 10, 6, 4, 10, 4, 5, 10, 12, 10, 10, 6, 10, 7, 5, 2, 10, 4, 9, 12, 10, 8, 12, 272, 315, 7, 48, 3, 10, 3, 6, 12, 6, 1, 10, 1, 1, 12, 1, 4, 10, 4, 2, 12, 2, 1, 10, 1, 2, 12, 2, 2, 7, 2, 1, 21, 1, 1, 7, 9, 18, 13, 176, 213, 7, 47, 3, 10, 3, 4, 12, 6, 6, 10, 4, 2, 12, 2, 1, 10, 1, 2, 12, 2, 9, 21, 63, 102, 7, 48, 3, 10, 3, 8, 12, 8, 2, 10, 2, 1, 12, 1, 1, 10, 1, 2, 12, 2, 3, 21, 3, 1, 7, 12, 21, 13, 48, 81, 7, 43, 1, 12, 1, 1, 10, 1, 1, 12, 1, 2, 10, 2, 6, 12, 6, 1, 10, 1, 1, 12, 9, 18, 13, 480, 502, 9, 32, 32, 5, 32, 10, 13, 10, 9, 15, 21, 13, 7, 449, 505, 7, 1344, 2208, 7, 1024, 214, 14, 112, 6, 21, 2960, 4026, 7, 14336, 13834, 7, 576, 38, 7, 32, 11, 13, 14, 6, 21, 98, 126, 7, 32, 7, 12, 5, 1, 21, 11, 58, 7, 48, 7, 12, 7, 5, 21, 5, 4, 26, 4, 4, 6, 4, 1, 21, 1, 1, 26, 11, 20, 13, 11, 8, 15, 8, 22, 7, 26, 24, 7, 899, 949, 7, 80, 12, 7, 1, 46, 10, 62, 20, 12, 4, 13, 6, 16493, 16482, 7, 3072, 3177, 7, 112, 18, 7, 16, 12, 7, 16, 17, 7, 12, 3, 26, 1, 2, 12, 2, 1, 21, 1, 4, 2, 4960, 5202, 26, 256, 49, 26, 41, 62, 26, 60, 2, 10, 2, 3, 12, 3, 3, 26, 3, 6, 10, 6, 8, 2, 8, 8, 12, 8, 2, 26, 2, 7, 12, 7, 30, 26, 30, 4, 12, 4, 48, 26, 82, 100, 26, 66, 3, 12, 3, 1, 26, 187, 273, 26, 96, 27, 15, 160, 168, 9, 26, 26, 5, 26, 26, 9, 26, 7, 5, 8, 19, 5, 18, 26, 9, 26, 26, 5, 26, 1, 9, 2, 3, 9, 4, 3, 9, 3, 4, 9, 4, 6, 9, 5, 9, 9, 8, 4, 5, 5, 2, 5, 2, 8, 5, 8, 12, 5, 11, 26, 9, 26, 26, 5, 26, 2, 9, 3, 5, 9, 6, 10, 9, 9, 8, 9, 8, 27, 5, 26, 2, 9, 3, 5, 9, 5, 6, 9, 6, 2, 9, 4, 10, 9, 8, 27, 5, 26, 26, 9, 26, 26, 5, 26, 26, 9, 26, 26, 5, 26, 26, 9, 26, 26, 5, 26, 26, 9, 26, 26, 5, 26, 26, 9, 26, 26, 5, 26, 26, 9, 26, 28, 5, 30, 27, 9, 25, 1, 25, 1, 25, 5, 25, 1, 25, 1, 6, 5, 6, 25, 9, 25, 1, 25, 1, 25, 5, 25, 1, 25, 1, 6, 5, 6, 25, 9, 25, 1, 25, 1, 25, 5, 25, 1, 25, 1, 6, 5, 6, 25, 9, 25, 1, 25, 1, 25, 5, 25, 1, 25, 1, 6, 5, 6, 25, 9, 25, 1, 25, 1, 25, 5, 25, 1, 25, 1, 6, 5, 6, 1, 9, 1, 1, 5, 3, 52, 13, 4146, 4293, 7, 199, 11, 15, 9, 7, 12, 1328, 1325, 7, 5, 28, 7, 28, 3, 7, 3, 2, 7, 3, 3, 7, 2, 11, 7, 11, 5, 7, 5, 2, 7, 2, 2, 7, 7, 7, 7, 5, 5, 7, 2, 2, 7, 2, 2, 7, 2, 4, 7, 4, 3, 7, 3, 2, 7, 3, 3, 7, 2, 2, 7, 2, 2, 7, 2, 2, 7, 2, 2, 7, 2, 3, 7, 3, 2, 7, 3, 6, 7, 5, 8, 7, 8, 5, 7, 5, 5, 7, 5, 2, 7, 2, 11, 7, 11, 18, 7, 22, 8, 7, 4, 6, 7, 6, 18, 7, 69, 54, 25, 272, 314, 26, 48, 104, 26, 112, 27, 26, 17, 17, 26, 16, 16, 26, 16, 38, 26, 47, 23, 15, 16, 34, 26, 32, 61, 26, 64, 47, 26, 118, 104, 26, 42, 56, 26, 48, 14, 26, 16, 9, 26, 176, 219, 26, 48, 81, 26, 80, 81, 26, 84, 41, 26, 44, 263, 26, 256, 76, 26, 80, 47, 26, 43, 42, 26, 42, 159, 26, 160, 141, 26, 155, 29, 26, 16, 7, 26, 16, 128, 26, 128, 97, 26, 128, 55, 26, 16, 60, 26, 64, 18, 26, 16, 46, 26, 48, 38, 26, 1904, 1875, 7, 42710, 42710, 7, 42, 42, 7, 4148, 4148, 7, 12, 12, 7, 221, 221, 7, 16355, 16896, 7, 722945, 722404, 2, 31, 126, 2, 224, 368, 12, 65280, 65041, 3, 65533, 65533, 3, 3, 3, 3, 65533, 65533, 3], false);

final SparseBoolList controlCharacters = _generateCategory(1);

final SparseBoolList formatCharacters = _generateCategory(2);

final SparseBoolList privateUseCharacters = _generateCategory(3);

final SparseBoolList surrogateCharacters = _generateCategory(4);

final SparseBoolList lowerCaseLetterCharacters = _generateCategory(5);

final SparseBoolList letterModifierCharacters = _generateCategory(6);

final SparseBoolList otherLetterCharacters = _generateCategory(7);

final SparseBoolList titlecaseLetterCharacters = _generateCategory(8);

final SparseBoolList upperCaseLetterCharacters = _generateCategory(9);

final SparseBoolList combiningMarkCharacters = _generateCategory(10);

final SparseBoolList encodingMarkCharacters = _generateCategory(11);

final SparseBoolList nonspacingMarkCharacters = _generateCategory(12);

final SparseBoolList decimalNumberCharacters = _generateCategory(13);

final SparseBoolList letterNumberCharacters = _generateCategory(14);

final SparseBoolList otherNumberCharacters = _generateCategory(15);

final SparseBoolList punctuationConnectorCharacters = _generateCategory(16);

final SparseBoolList dashPunctuationCharacters = _generateCategory(17);

final SparseBoolList closePunctuationCharacters = _generateCategory(18);

final SparseBoolList finalPunctuationCharacters = _generateCategory(19);

final SparseBoolList initialPunctuationCharacters = _generateCategory(20);

final SparseBoolList otherPunctuationCharacters = _generateCategory(21);

final SparseBoolList openPunctuationCharacters = _generateCategory(22);

final SparseBoolList currencySymbolCharacters = _generateCategory(23);

final SparseBoolList symbolModifierCharacters = _generateCategory(24);

final SparseBoolList mathSymbolCharacters = _generateCategory(25);

final SparseBoolList otherSymbolCharacters = _generateCategory(26);

final SparseBoolList lineSeparatorCharacters = _generateCategory(27);

final SparseBoolList paragraphSeparatorCharacters = _generateCategory(28);

final SparseBoolList spaceSeparatorCharacters = _generateCategory(29);

bool isControl(int character) => controlCharacters[character];

bool isFormat(int character) => formatCharacters[character];

bool isPrivateUse(int character) => privateUseCharacters[character];

bool isSurrogate(int character) => surrogateCharacters[character];

bool isLowerCaseLetter(int character) => lowerCaseLetterCharacters[character];

bool isLetterModifier(int character) => letterModifierCharacters[character];

bool isOtherLetter(int character) => otherLetterCharacters[character];

bool isTitlecaseLetter(int character) => titlecaseLetterCharacters[character];

bool isUpperCaseLetter(int character) => upperCaseLetterCharacters[character];

bool isCombiningMark(int character) => combiningMarkCharacters[character];

bool isEncodingMark(int character) => encodingMarkCharacters[character];

bool isNonspacingMark(int character) => nonspacingMarkCharacters[character];

bool isDecimalNumber(int character) => decimalNumberCharacters[character];

bool isLetterNumber(int character) => letterNumberCharacters[character];

bool isOtherNumber(int character) => otherNumberCharacters[character];

bool isPunctuationConnector(int character) => punctuationConnectorCharacters[character];

bool isDashPunctuation(int character) => dashPunctuationCharacters[character];

bool isClosePunctuation(int character) => closePunctuationCharacters[character];

bool isFinalPunctuation(int character) => finalPunctuationCharacters[character];

bool isInitialPunctuation(int character) => initialPunctuationCharacters[character];

bool isOtherPunctuation(int character) => otherPunctuationCharacters[character];

bool isOpenPunctuation(int character) => openPunctuationCharacters[character];

bool isCurrencySymbol(int character) => currencySymbolCharacters[character];

bool isSymbolModifier(int character) => symbolModifierCharacters[character];

bool isMathSymbol(int character) => mathSymbolCharacters[character];

bool isOtherSymbol(int character) => otherSymbolCharacters[character];

bool isLineSeparator(int character) => lineSeparatorCharacters[character];

bool isParagraphSeparator(int character) => paragraphSeparatorCharacters[character];

bool isSpaceSeparator(int character) => spaceSeparatorCharacters[character];

int toRune(String string) {
  if (string == null) {
    throw new ArgumentError("string: $string");
  }

  var length = string.length;
  if (length == 0) {
    throw new StateError("An empty string contains no elements.");
  }

  var start = string.codeUnitAt(0);
  if (length == 1) {
    return start;
  }

  if ((start & 0xFC00) == 0xD800) {
    var end = string.codeUnitAt(1);
    if ((end & 0xFC00) == 0xDC00) {
      return (0x10000 + ((start & 0x3FF) << 10) + (end & 0x3FF));
    }
  }

  return start;
}

SparseBoolList _generateBool(List<int> data) {
  var list = new SparseBoolList();
  list.length = 1114111;
  var length = data.length;
  for (var i = 0; i < length; i += 2) {
    var start = data[i + 0];
    var end = data[i + 1];
    list.addGroup(new GroupedRangeList<bool>(start, end, true));
  }

  list.freeze();
  return list;
}

SparseBoolList _generateCategory(int category) {
  var list = new SparseBoolList();
  list.length = 1114111;
  for (var group in _categories.groups) {
    if (group.key == category) {
      list.addGroup(new GroupedRangeList<bool>(group.start, group.end, true));
    }
  }

  list.freeze();
  return list;
}

SparseList<int> _generateInt(List<int> data, bool isCompressed) {
  if (isCompressed) {
    data = GZIP.decoder.convert(data);
  }
  var list = new SparseList<int>(defaultValue: 0);
  list.length = 1114111;
  var length = data.length;
  var start = 0;
  var end = 0;
  for (var i = 0; i < length; i+= 3) {
    start += data[i + 0];
    end += data[i + 1];
    var key = data[i + 2];
    list.addGroup(new GroupedRangeList<int>(start, end, key));
  }

  list.freeze();
  return list;
}
