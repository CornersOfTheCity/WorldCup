package adapter

import "strings"

//格式处理
func StringClear(str string) string {
	newStr := strings.TrimSpace(str)
	newReplacer := strings.NewReplacer("\n", "")
	return newReplacer.Replace(newStr)
}
