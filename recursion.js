person = {
  name: 'John',
  children: [
    {
      name: 'Jim',
      children: []
    },
    {
      name: 'Zoe',
      children: [
        { name: 'Kyle', children: [] },
        { name: 'Sophia', children: [] }
      ]
    }
  ]
}

function getAllChildrenNames(person) {
  const nestedChildNames = person.children.flatMap(child => {
    return getAllChildrenNames(child)
  })
  const childNames = person.children.map(p => p.name)

  return childNames.concat(nestedChildNames)
}
console.log(getAllChildrenNames(person))