package main;

import freemarker.template.Configuration;
import modelo.Estudiante;
import spark.ModelAndView;
import spark.template.freemarker.FreeMarkerEngine;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import static spark.Spark.*;
import static spark.Spark.get;
import static spark.Spark.post;

/**
 * Created by Francis Cáceres on 12/7/2017.
 */
public class Main {
    public static void main(String[] args) {
        ArrayList<Estudiante> estudiantes = new ArrayList<>();
        port(getPuertoHeroku());

        staticFiles.location("plantilla");

        Configuration configuration=new Configuration(Configuration.VERSION_2_3_23);
        configuration.setClassForTemplateLoading(Main.class, "/templates");
        FreeMarkerEngine freeMarkerEngine = new FreeMarkerEngine(configuration);

        get("/",(request,response)->{
            Map<String,Object> attributes = new HashMap<>();

            attributes.put("estudiantes",estudiantes);

            return new ModelAndView(attributes,"inicio.ftl");
        },freeMarkerEngine);

        post("/",(request,response)->{
            Map<String,Object> attributes = new HashMap<>();
            Estudiante estu = new Estudiante();
            estu.setMatricula(request.queryParams("Matricula"));
            estu.setNombre(request.queryParams("Nombre"));
            estu.setApellido(request.queryParams("Apellido"));
            estu.setTelefono(request.queryParams("Telefono"));

            estudiantes.add(estu);
            response.redirect("/");


            return new ModelAndView(attributes,"inicio.ftl");
        },freeMarkerEngine);

        get("/borrar",(request,response)->{
            Map<String,Object> attributes = new HashMap<>();
            String mat = request.queryParams("mat");
            System.out.println("Borroo");

            for(Estudiante s: estudiantes){
                if(s.getMatricula().equals(mat)){
                    estudiantes.remove(s);
                    break;
                }
            }
            response.redirect("/");

            return new ModelAndView(attributes,"inicio.ftl");
        },freeMarkerEngine);

        get("/perfil",(request,response)->{
            Map<String,Object> attributes = new HashMap<>();
            String mat = request.queryParams("mat");
            Estudiante elegido = null;

            for(Estudiante s: estudiantes){
                if(s.getMatricula().equals(mat)){
                    elegido = new Estudiante();
                    elegido.setMatricula(s.getMatricula());
                    elegido.setNombre(s.getNombre());
                    elegido.setApellido(s.getApellido());
                    elegido.setTelefono(s.getTelefono());
                }
            }

            attributes.put("ele",elegido);

            return new ModelAndView(attributes,"perfil.ftl");
        },freeMarkerEngine);

        post("/perfil",(request,response)->{
            Map<String,Object> attributes = new HashMap<>();

            String mat = request.queryParams("Matricula");
            String nom = request.queryParams("Nombre");
            String ape = request.queryParams("Apellido");
            String tel = request.queryParams("Telefono");

            for(Estudiante s: estudiantes){
                if(s.getMatricula().equals(mat)){
                    s.setNombre(nom);
                    s.setApellido(ape);
                    s.setTelefono(tel);
                }
            }

            response.redirect("/");

            return new ModelAndView(attributes,"inicio.ftl");
        },freeMarkerEngine);

    }
    static int getPuertoHeroku() {
        ProcessBuilder processBuilder = new ProcessBuilder();
        if (processBuilder.environment().get("PORT") != null) {
            return Integer.parseInt(processBuilder.environment().get("PORT"));
        }
        return 4567; //En caso de no pasar la información, toma el puerto 4567
    }
}
