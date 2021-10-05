let arr = [{id: 1, name: "test"}];

arr.map(x => x.name)
arr.filter(x => x.name == "test")
//Groupby
arr.reduce((acc, x) => {
    acc[x.name] = acc[x.name] || [];
    acc[x.name].push(x)
    return acc;
}, {})