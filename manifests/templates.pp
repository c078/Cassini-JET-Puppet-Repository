class baseclass { 
        include basic::user
	include basic::software
}
 
node default { 
        include baseclass
}
