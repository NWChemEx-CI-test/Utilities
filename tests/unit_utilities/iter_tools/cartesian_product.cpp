/*
 * Copyright 2022 NWChemEx-Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

//#include <catch2/catch.hpp>
//#include <utilities/iter_tools/cartesian_product.hpp>
//#include <utilities/iter_tools/enumerate.hpp>
//
// using namespace utilities;
//
// template<typename CP_t, typename vector_type>
// void check_state(CP_t& c, vector_type&& corr) {
//    REQUIRE(c.size() == corr.size());
//    if(c.size())
//        REQUIRE(c.begin() != c.end());
//    else
//        REQUIRE(c.begin() == c.end());
//    for(auto x : Enumerate(c)) {
//        auto i   = std::get<0>(x);
//        auto val = std::get<1>(x);
//        REQUIRE(corr[i] == val);
//    }
//}
//
// TEST_CASE("CartesianProduct") {
//    SECTION("Empty") {
//        auto c = CartesianProduct();
//        check_state(c, std::vector<std::tuple<>>{});
//    }
//
//    SECTION("Single container") {
//        std::vector<int> l{1, 2, 3};
//        std::vector<std::tuple<int>> corr{{1}, {2}, {3}};
//        auto c = CartesianProduct(l);
//        check_state(c, corr);
//    }
//
//    SECTION("Two containers") {
//        std::vector<int> l{1, 2, 3};
//        std::vector<std::tuple<int, int>> corr{{1, 1}, {1, 2}, {1, 3},
//                                               {2, 1}, {2, 2}, {2, 3},
//                                               {3, 1}, {3, 2}, {3, 3}};
//        auto c = CartesianProduct(l, l);
//        check_state(c, corr);
//    }
//
//    SECTION("Two different containers") {
//        std::vector<int> l{1, 2, 3};
//        std::vector<int> l2{1, 3};
//        std::vector<std::tuple<int, int>> corr{{1, 1}, {1, 3}, {2, 1},
//                                               {2, 3}, {3, 1}, {3, 3}};
//        auto c = CartesianProduct(l, l2);
//        check_state(c, corr);
//    }
//}
