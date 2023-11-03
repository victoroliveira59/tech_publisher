# Authores
friedrich = Author.create(name: 'Friedrich Nietzsche')
augusto = Author.create(name: 'Augusto Cury')
nicholas = Author.create(name: 'Nicholas Sparks')
clarice = Author.create(name: 'Clarice Lispector')

# Suppliers
cores_vivas = Supplier.create(name: 'Cores Vivas')
soft = Supplier.create(name: 'Soft')
am2 = Supplier.create(name: 'Am2')
papelaria_smart = Supplier.create(name: 'Capas customizadas')

# Assemblies
encadernado = Assembly.create(name: 'Livro encardenado')
cartilha = Assembly.create(name: 'Cartilha')
brochura = Assembly.create(name: 'Brochura')
edicao_de_bolso = Assembly.create(name: 'Edição de bolso')
edicao_capa_de_tecido = Assembly.create(name: 'Capa de Tecido')
edicao_limitada = Assembly.create(name: 'Edição Limitada')
edicao_de_luxo = Assembly.create(name: 'Edição de Luxo')

assemblies = [
  encadernado,
  cartilha,
  brochura,
  edicao_de_bolso,
  edicao_capa_de_tecido,
  edicao_limitada,
  edicao_de_luxo,
]

# Books

# Friderich
Book.create(title: "Assim Falou Zaratustra", assembly: assemblies.sample, author: friedrich)
Book.create(title: "Ecce Homo", assembly: assemblies.sample, author: friedrich)
Book.create(title: "Além do Bem e do Mal", assembly: assemblies.sample, author: friedrich)
Book.create(title: "Genealogia da Moral" , assembly: assemblies.sample, author: friedrich)
Book.create(title: "A Gaia Ciência", assembly: assemblies.sample, author: friedrich)
Book.create(title: "Humano, Demasiado Humano" , assembly: assemblies.sample, author: friedrich)
Book.create(title: "A Vontade de Poder" , assembly: assemblies.sample, author: friedrich)

# Augusto
Book.create(title: "O Vendedor de Sonhos" , assembly: assemblies.sample, author: augusto)
Book.create(title: "Nunca Desista de seus Sonhos" , assembly: assemblies.sample, author: augusto)
Book.create(title: "De Gênio e Louco todo Mundo tem um Pouco" , assembly: assemblies.sample, author: augusto)
Book.create(title: "O Colecionador de Lágrimas" , assembly: assemblies.sample, author: augusto)
Book.create(title: "Ansiedade - Como Enfrentar o Mal do Século" , assembly: assemblies.sample, author: augusto)
Book.create(title: "Pais Brilhantes, Professores Fascinantes" , assembly: assemblies.sample, author: augusto)
Book.create(title: "O Futuro da Humanidade" , assembly: assemblies.sample, author: augusto)
Book.create(title: "A Fascinante Construção do Eu" , assembly: assemblies.sample, author: augusto)
Book.create(title: "O Semeador de Ideias" , assembly: assemblies.sample, author: augusto)
Book.create(title: "A Fascinante Construção do Eu" , assembly: assemblies.sample, author: augusto)
Book.create(title: "A Fascinante Construção do Eu" , assembly: assemblies.sample, author: augusto)

# Nicholas Sparks
Book.create(title: "Diário de uma Paixão" , assembly: assemblies.sample, author: nicholas)
Book.create(title: "Um Amor para Recordar" , assembly: assemblies.sample, author: nicholas)
Book.create(title: "Querido John" , assembly: assemblies.sample, author: nicholas)
Book.create(title: "Noites de Tormenta", assembly: assemblies.sample, author: nicholas)
Book.create(title: "Um Porto Seguro" , assembly: assemblies.sample, author: nicholas)
Book.create(title: "A Escolha"  , assembly: assemblies.sample, author: nicholas)
Book.create(title: "O Melhor de Mim"  , assembly: assemblies.sample, author: nicholas)
Book.create(title: "À Primeira Vista"  , assembly: assemblies.sample, author: nicholas)
Book.create(title: "Um Homem de Sorte"  , assembly: assemblies.sample, author: nicholas)
Book.create(title: "O Resgate"  , assembly: assemblies.sample, author: nicholas)

# Clarice Lispector
Book.create(title: "A Hora da Estrela"   , assembly: assemblies.sample, author: clarice)
Book.create(title: "A Paixão Segundo G.H." , assembly: assemblies.sample, author: clarice)
Book.create(title: "Perto do Coração Selvagem"  , assembly: assemblies.sample, author: clarice)
Book.create(title: "Laços de Família"  , assembly: assemblies.sample, author: clarice)
Book.create(title: "Felicidade Clandestina"  , assembly: assemblies.sample, author: clarice)
Book.create(title: "A Maçã no Escuro"  , assembly: assemblies.sample, author: clarice)
Book.create(title: "A Legião Estrangeira"  , assembly: assemblies.sample, author: clarice)
Book.create(title: "O Lustre" , assembly: assemblies.sample, author: clarice)

# Accounts
Account.create(bank: 'Bradesco', number: '232633', supplier: cores_vivas)
Account.create(bank: 'Itaú', number: '456465', supplier: am2)
Account.create(bank: 'Caixa', number: '165415', supplier: soft)
Account.create(bank: 'Bradesco', number: '232633', supplier: papelaria_smart)

# Parts
capa_dura_removivel = Part.create(name: 'Capa dura removível', description: 'Capa removível chamada de Jacket, capa dura é bem simples, não tem muitas coisas na parte frontal', supplier: cores_vivas)
capa_curstom_padrao = Part.create(name: 'Capa curstom padrao', description: 'Ela contém as informações, ilustrações e todas as outras coisas impressas diretamente na capa.', supplier: cores_vivas)
capa_de_brochura = Part.create(name: 'Capa brochura', description: 'Ela contém as informações, ilustrações e todas as outras coisas impressas diretamente na capa.', supplier: soft)
capa_de_bolso = Part.create(name: 'Capa de Bolso', description: 'As capas duras são feitas de materiais rígidos, como papelão revestido ou pano, que oferecem proteção adicional ao livro.', supplier: am2)
capa_de_tecido = Part.create(name: 'Capa de Tecido', description: 'São feitas de material de tecido resistente e podem ser decoradas com estampas, texturas ou detalhes em relevo.', supplier: cores_vivas)
capa_relevo = Part.create(name: 'Capa com Relevo', description: 'As capas com relevo têm elementos texturizados ou em relevo na capa, criando uma sensação tátil interessante. Essas capas podem adicionar um toque de sofisticação ao design do livro.', supplier: am2)
capa_de_po = Part.create(name: 'Capa de Pó', description: 'Capa de pó removível, que envolve o livro e geralmente contém informações adicionais sobre o livro, como resenhas, elogios do autor e sinopses.', supplier: am2)
capa_transparente = Part.create(name: 'Capa Transparente', description: 'Capa transparente que protege a capa principal', supplier: papelaria_smart)
capa_minimalista = Part.create(name: 'Capa Minimalista', description: 'capa com designs simples e limpos, muitas vezes usando cores sólidas e tipografia elegante', supplier: soft)
papel_offset = Part.create(name: 'Papel Offset', description: 'É um papel de uso geral, frequentemente usado para impressão em escritórios', supplier: am2)
papel_couche = Part.create(name: 'Papel Couché', description: 'Este papel é revestido com uma camada de revestimento brilhante ou fosco, o que o torna ideal para impressão de alta qualidade em cores', supplier: cores_vivas)
papel_reciclado = Part.create(name: 'Papel Reciclado', description: 'Feito a partir de papel reciclado, este tipo de papel é ecologicamente correto e é usado para impressão de documentos que enfatizam a sustentabilidade.', supplier: am2)
papel_vegetal = Part.create(name: 'Papel Vegetal', description: ' um papel translúcido e resistente, geralmente usado para desenho técnico, cópias de plantas de arquitetura e ilustrações técnicas.', supplier: papelaria_smart)
papel_seda = Part.create(name: 'Papel de Seda', description: 'Um papel leve e delicado usado frequentemente para embrulhar presentes ou como papel de proteção em artigos frágeis.', supplier: soft)
lombada = Part.create(name: 'Lombada', description: 'A lombada é a parte da capa que fica na espinha do livro e geralmente exibe o título do livro e o nome do autor.', supplier: am2)
papel_com_marca = Part.create(name: "Papel com Marca-d'água", description: "marcas-d'água incorporadas no papel, que são visíveis quando a folha é mantida à luz.", supplier: am2)
marcador = Part.create(name: "Papel com Marca-d'água", description: "Marcador de página com fita", supplier: am2)

# Associações assemblies and parts

encadernado.parts <<  papel_offset
encadernado.parts <<  capa_transparente

edicao_de_luxo.parts << capa_de_tecido
edicao_de_luxo.parts << marcador
edicao_de_luxo.parts << papel_com_marca

edicao_limitada.parts << capa_minimalista
edicao_limitada.parts << papel_seda
edicao_limitada.parts << marcador

edicao_de_bolso.parts << capa_de_bolso
edicao_de_bolso.parts << papel_offset
edicao_de_bolso.parts << marcador

edicao_capa_de_tecido.parts << capa_de_tecido
edicao_capa_de_tecido.parts << papel_seda
edicao_capa_de_tecido.parts << marcador

brochura.parts << capa_de_brochura
brochura.parts << papel_couche

cartilha.parts << capa_curstom_padrao
cartilha.parts << papel_reciclado

edicao_limitada.parts << capa_relevo
edicao_limitada.parts << papel_vegetal
edicao_limitada.parts << lombada

edicao_de_bolso.parts << capa_de_po
edicao_limitada.parts << capa_dura_removivel
