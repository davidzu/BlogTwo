# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do |blog|
  Blog.create!(
  	title: "My Blog Post #{blog}",
  	body: "El cambio hacía una administración de proyectos más cercana al Desarrollo. 
  	Los proyectos tienen diferentes niveles de experiencia en los Equipos de trabajo, 
  	para que la maquina funcione perfectamente se necesita de un nivel similar para que 
  	embonen a la perfección. Existe siempre una frontera entre el conocimiento técnico 
  	sobre el proyecto a realizar. 
  	Es cierto cuando buscamos trabajo tratamos de acoplarnos a lo que el contratador 
  	necesita, es casi una reacción primaria, tratar de conseguir el sustento. Cuando 
  	estamos en un trabajo y buscando otro se activan otras formas de ver el proceso.  
  	Sin embargo los reclutadores no reacciónan (en su mayoría) a la idea de la exploración 
  	de un trabajo, quieren que te fascine la propuesta solo por existir, cuando por lo 
  	general no queremos ni siquiera cambiar de trabajo."
  	)
end

puts "Se han creado 10 blog posts"

5.times do |tag|
	Tag.create(
		name: "Rails #{tag}"	
		)
end

puts "Se han creado 5 Etiquetas"

9.times do |review|
	Review.create(
			title: "Reseña de Libro #{review}",
	    content: "Buen libro que nos ayuda a ver de otra manera la Conquista del Valle 
	    de México por los Españoles. El mito fundacional de México puede ser apreciado como 
	    una batalla de pueblos mesoamericanos ayudados por los español. Un repaso sobre cada 
	    evento decisivo y el contraste de las fuentes. Al final el libro nos ofrece un 
	    compendio de sucesos que sirven para poner en un contexto diferente todo lo que 
	    sabemos sobre las fuentes principales de estos hechos.Entender el mantenimiento de la 
	    structura política del Valle de México durante la conquista como uno de los factores 
	    del mestizaje.El bajío es el origen de la independencia por ser la región más desigual 
	    de la nueva España",
	    main_image: "https://place-hold.it/600x400",
	    thumb_image: "https://place-hold.it/300x150"
		)
end

puts "Se han creado 9 reseñas de libros"