package main

import "fmt"

// interface{} це погано!!!
type any interface{}

func main() {
	fmt.Println(singleton(1))
	fmt.Println(null([]any{}))
	fmt.Println(null([]any{1, 2}))
	fmt.Println(snoc(3, []any{1, 2}))
	fmt.Println(length([]any{1, 2, 3}))
}

func singleton(a any) []any {
	return []any{a}
}

func null(a []any) bool {
	return a == nil || len(a) == 0
}

func snoc(a any, ab []any) []any {
	res := make([]any, 0, len(ab)+1)
	res = append(res, ab...)
	return append(res, a)
}

func length(a []any) int {
	var res int
	for range a {
		res++
	}
	return res
}
