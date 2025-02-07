#> a function that combines two strings into one
#
# @param s1         the first string
# @param s2         the second string
# @param storage    the storage namespace and location where to put the string. e.g. "foo:bar path.to.string"

$data modify storage $(storage) set value $(s1)$(s2)