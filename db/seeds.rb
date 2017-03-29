# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)





Region.create(nombre: "Región Aisén del Gral. Carlos Ibañez del Campo")
Region.create(nombre: "Región de los Lagos")
Region.create(nombre: "Región de los Ríos")
Region.create(nombre: "Región de la Araucanía")
Region.create(nombre: "Región del Biobío")
Region.create(nombre: "Región del Maule")
Region.create(nombre: "Región del Libertador Gral. Bernardo O'Higgins")
Region.create(nombre: "Región de Valparaiso")
Region.create(nombre: "Región Metropolitana de Santiago")
Region.create(nombre: "Región de Coquimbo")
Region.create(nombre: "Región de Atacama")
Region.create(nombre: "Región de Antofagasta")
Region.create(nombre: "Región de Tarapacá")
Region.create(nombre: "Región de Arica y Parinacota")





Comuna.create(nombre: "Arica", region_id: Region.find_by(nombre: "Región de Arica y Parinacota").id)
Comuna.create(nombre: "Camarones", region_id: Region.find_by(nombre: "Región de Arica y Parinacota").id)
Comuna.create(nombre: "Putre", region_id: Region.find_by(nombre: "Región de Arica y Parinacota").id)
Comuna.create(nombre: "General Lagos", region_id: Region.find_by(nombre: "Región de Arica y Parinacota").id)



Comuna.create(nombre: "Cerrillos", region_id: Region.find_by(nombre: "Región Metropolitana de Santiago").id)
Comuna.create(nombre: "Cerro Navia", region_id: Region.find_by(nombre: "Región Metropolitana de Santiago").id)
Comuna.create(nombre: "Conchalí", region_id: Region.find_by(nombre: "Región Metropolitana de Santiago").id)
Comuna.create(nombre: "El Bosque", region_id: Region.find_by(nombre: "Región Metropolitana de Santiago").id)
Comuna.create(nombre: "Estación Central", region_id: Region.find_by(nombre: "Región Metropolitana de Santiago").id)
Comuna.create(nombre: "Huechuraba", region_id: Region.find_by(nombre: "Región Metropolitana de Santiago").id)
Comuna.create(nombre: "Independencia", region_id: Region.find_by(nombre: "Región Metropolitana de Santiago").id)
Comuna.create(nombre: "La Cisterna", region_id: Region.find_by(nombre: "Región Metropolitana de Santiago").id)
Comuna.create(nombre: "La Florida", region_id: Region.find_by(nombre: "Región Metropolitana de Santiago").id)
Comuna.create(nombre: "La Granja", region_id: Region.find_by(nombre: "Región Metropolitana de Santiago").id)
Comuna.create(nombre: "La Pintana", region_id: Region.find_by(nombre: "Región Metropolitana de Santiago").id)
Comuna.create(nombre: "La Reina", region_id: Region.find_by(nombre: "Región Metropolitana de Santiago").id)
Comuna.create(nombre: "Las Condes", region_id: Region.find_by(nombre: "Región Metropolitana de Santiago").id)
Comuna.create(nombre: "Lo Barnechea", region_id: Region.find_by(nombre: "Región Metropolitana de Santiago").id)
Comuna.create(nombre: "Lo Espejo", region_id: Region.find_by(nombre: "Región Metropolitana de Santiago").id)
Comuna.create(nombre: "Lo Prado", region_id: Region.find_by(nombre: "Región Metropolitana de Santiago").id)
Comuna.create(nombre: "Macul", region_id: Region.find_by(nombre: "Región Metropolitana de Santiago").id)
Comuna.create(nombre: "Maipú", region_id: Region.find_by(nombre: "Región Metropolitana de Santiago").id)
Comuna.create(nombre: "Ñuñoa", region_id: Region.find_by(nombre: "Región Metropolitana de Santiago").id)
Comuna.create(nombre: "Pedro Aguirre Cerda", region_id: Region.find_by(nombre: "Región Metropolitana de Santiago").id)
Comuna.create(nombre: "Peñalolén", region_id: Region.find_by(nombre: "Región Metropolitana de Santiago").id)
Comuna.create(nombre: "Providencia", region_id: Region.find_by(nombre: "Región Metropolitana de Santiago").id)
Comuna.create(nombre: "Pudahuel", region_id: Region.find_by(nombre: "Región Metropolitana de Santiago").id)
Comuna.create(nombre: "Quilicura", region_id: Region.find_by(nombre: "Región Metropolitana de Santiago").id)
Comuna.create(nombre: "Quinta Normal", region_id: Region.find_by(nombre: "Región Metropolitana de Santiago").id)
Comuna.create(nombre: "Recoleta", region_id: Region.find_by(nombre: "Región Metropolitana de Santiago").id)
Comuna.create(nombre: "Renca", region_id: Region.find_by(nombre: "Región Metropolitana de Santiago").id)
Comuna.create(nombre: "San Joaquín", region_id: Region.find_by(nombre: "Región Metropolitana de Santiago").id)
Comuna.create(nombre: "San Miguel", region_id: Region.find_by(nombre: "Región Metropolitana de Santiago").id)
Comuna.create(nombre: "San Ramón", region_id: Region.find_by(nombre: "Región Metropolitana de Santiago").id)
Comuna.create(nombre: "Vitacura", region_id: Region.find_by(nombre: "Región Metropolitana de Santiago").id)
Comuna.create(nombre: "Puente Alto", region_id: Region.find_by(nombre: "Región Metropolitana de Santiago").id)
Comuna.create(nombre: "Pirque", region_id: Region.find_by(nombre: "Región Metropolitana de Santiago").id)
Comuna.create(nombre: "San José de Maipo", region_id: Region.find_by(nombre: "Región Metropolitana de Santiago").id)
Comuna.create(nombre: "Colina",  region_id: Region.find_by(nombre: "Región Metropolitana de Santiago").id)
Comuna.create(nombre: "Lampa",  region_id: Region.find_by(nombre: "Región Metropolitana de Santiago").id)
Comuna.create(nombre: "Tiltil",  region_id: Region.find_by(nombre: "Región Metropolitana de Santiago").id)
Comuna.create(nombre: "San Bernardo", region_id: Region.find_by(nombre: "Región Metropolitana de Santiago").id)
Comuna.create(nombre: "Buin", region_id: Region.find_by(nombre: "Región Metropolitana de Santiago").id)
Comuna.create(nombre: "Calera de Tango", region_id: Region.find_by(nombre: "Región Metropolitana de Santiago").id)
Comuna.create(nombre: "Paine" ,region_id: Region.find_by(nombre: "Región Metropolitana de Santiago").id)
Comuna.create(nombre: "Melipilla",  region_id: Region.find_by(nombre: "Región Metropolitana de Santiago").id)
Comuna.create(nombre: "Alhué",  region_id: Region.find_by(nombre: "Región Metropolitana de Santiago").id)
Comuna.create(nombre: "Curacaví", region_id: Region.find_by(nombre: "Región Metropolitana de Santiago").id)
Comuna.create(nombre: "María Pinto", region_id: Region.find_by(nombre: "Región Metropolitana de Santiago").id)
Comuna.create(nombre: "San Pedro",  region_id: Region.find_by(nombre: "Región Metropolitana de Santiago").id)
Comuna.create(nombre: "Talagante",  region_id: Region.find_by(nombre: "Región Metropolitana de Santiago").id)
Comuna.create(nombre: "El Monte",  region_id: Region.find_by(nombre: "Región Metropolitana de Santiago").id)
Comuna.create(nombre: "Isla de Maipo",  region_id: Region.find_by(nombre: "Región Metropolitana de Santiago").id)
Comuna.create(nombre: "Padre Hurtado",  region_id: Region.find_by(nombre: "Región Metropolitana de Santiago").id)
Comuna.create(nombre: "Peñaflor", region_id: Region.find_by(nombre: "Región Metropolitana de Santiago").id)
