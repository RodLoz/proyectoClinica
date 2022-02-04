<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Registro de cuenta</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://unpkg.com/tailwindcss@2.0.1/dist/tailwind.min.css" rel="stylesheet">
    </head>
    <body>
        <div class="flex items-center min-h-screen p-4 bg-gray-100 lg:justify-center">

            <div
                class="flex flex-col overflow-hidden bg-white rounded-md shadow-lg max md:flex-row md:flex-1 lg:max-w-screen-md"
                >
                <div
                    class="p-4 py-6 text-white bg-green-400 md:w-10 md:flex-shrink-0 md:flex md:flex-col md:items-center md:justify-evenly"
                    >
                </div>
                <div class="p-5 bg-white md:flex-1 md:w-60">
                    <h3 class="my-4 text-3xl font-semibold text-gray-700">Registrate</h3>
                    <form action="../../control?opc=2" class="flex flex-col space-y-5" method="post">
                        <div display: inline-block">
                            <div style="width: 340px; display: inline-block;padding-right: 15px">
                                <div class="flex flex-col space-y-1">
                                    <label for="cargo" class="text-sm font-semibold text-gray-500">Cargo</label>
                                    <select 
                                        class="px-4 py-2 transition duration-300 border border-gray-300 rounded focus:border-transparent focus:outline-none focus:ring-4 focus:ring-blue-200"
                                        name="cb" id="cargo">
                                        <option value="Paciente">Paciente</option>
                                        <option value="Administrador">Administrador</option>
                                    </select>
                                </div>
                            </div>
                        </div>   
                        <div display: inline-block">
                            <div style="width: 340px; display: inline-block;padding-right: 15px">
                                <div class="flex flex-col space-y-1">
                                    <label for="dni" class="text-sm font-semibold text-gray-500">DNI</label>
                                    <input
                                        type="number"
                                        name="dni"
                                        id="dni"
                                        autofocus
                                        class="px-4 py-2 transition duration-300 border border-gray-300 rounded focus:border-transparent focus:outline-none focus:ring-4 focus:ring-blue-200"
                                        required
                                        />
                                </div>
                            </div>
                            <div style="width: 340px; display: inline-block">
                                <div class="flex flex-col space-y-1">
                                    <div class="flex items-center justify-between">
                                        <label for="contraseña" class="text-sm font-semibold text-gray-500">Contraseña</label>
                                    </div>
                                    <input
                                        type="password"
                                        name="pass"
                                        id="contraseña"
                                        class="px-4 py-2 transition duration-300 border border-gray-300 rounded focus:border-transparent focus:outline-none focus:ring-4 focus:ring-blue-200"
                                        required
                                        />
                                </div>
                            </div>
                        </div>


                        <div display: inline-block">
                            <div style="width: 340px; display: inline-block;padding-right: 15px">  
                                <div class="flex flex-col space-y-1">
                                    <div class="flex items-center justify-between">
                                        <label for="text" class="text-sm font-semibold text-gray-500">Nombre</label>
                                    </div>
                                    <input
                                        type="text"
                                        name="nom"
                                        id="nom"
                                        class="px-4 py-2 transition duration-300 border border-gray-300 rounded focus:border-transparent focus:outline-none focus:ring-4 focus:ring-blue-200"
                                        required
                                        />
                                </div>
                            </div>
                            <div style="width: 340px; display: inline-block;">
                                <div class="flex flex-col space-y-1">
                                    <div class="flex items-center justify-between">
                                        <label for="apellido" class="text-sm font-semibold text-gray-500">Apellido</label>
                                    </div>
                                    <input
                                        type="text"
                                        name="apellido"
                                        id="apellido"
                                        class="px-4 py-2 transition duration-300 border border-gray-300 rounded focus:border-transparent focus:outline-none focus:ring-4 focus:ring-blue-200"
                                        required
                                        />
                                </div>
                            </div>
                        </div>
                        <div display: inline-block">
                            <div style="width: 340px; display: inline-block;padding-right: 15px">  
                                <div class="flex flex-col space-y-1">
                                    <div class="flex items-center justify-between">
                                        <label for="telf" class="text-sm font-semibold text-gray-500">Teléfono</label>
                                    </div>
                                    <input
                                        type="number"
                                        name="telf"
                                        id="telf"
                                        class="px-4 py-2 transition duration-300 border border-gray-300 rounded focus:border-transparent focus:outline-none focus:ring-4 focus:ring-blue-200"
                                        required
                                        />
                                </div>
                            </div>
                            <div style="width: 340px; display: inline-block;">
                                <div class="flex flex-col space-y-1">
                                    <div class="flex items-center justify-between">
                                        <label for="correo" class="text-sm font-semibold text-gray-500">Correo</label>
                                    </div>
                                    <input
                                        type="email"
                                        name="correo"
                                        id="correo"
                                        class="px-4 py-2 transition duration-300 border border-gray-300 rounded focus:border-transparent focus:outline-none focus:ring-4 focus:ring-blue-200"
                                        required
                                        />
                                </div>
                            </div>
                        </div>

                        <div>
                            <button
                                type="submit"
                                name="Envia"
                                class="w-full px-4 py-2 text-lg font-semibold text-white transition-colors duration-300 bg-green-400 rounded-md shadow hover:bg-green-600 focus:outline-none focus:ring-blue-200 focus:ring-4"
                                >
                                Crear cuenta
                            </button>
                        </div>
                        <div>
                            <sapn>¿Tienes cuenta? </span>    
                            <a href="../../index.html" class="text-sm text-blue-600 hover:underline focus:text-blue-800">Ingrese aquí</a>
                        </div>
                </div>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
