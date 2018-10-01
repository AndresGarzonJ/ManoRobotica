// Proyecto Digitales II// Mano Robótica Copiadora de Movimientos
// Integrantes: Yeison Caicedo - Andrés Garzón
// Fecha : 1/06/2016

int sensor_flexion1 = 13;  // Definimos las entradas analógicas, por donde entrará la senal de nuestros sensores de flexión.
int sensor_flexion2 = 14;  // 5 entradas para los 5 dedos.
int sensor_flexion3 = 15;
int sensor_flexion4 = 16;
int sensor_flexion5 = 17;

// Como los valores analógicos pueden tomar valores de 0 a 1024, lo que hacemos es guardarlos en variables para luego mapearlos.
int lectura_dedo1;    // variable to read the value from the analog pin 1 -- Variable que guardará la lectura analógica del DEDO 1.
int lectura_dedo2;    // variable to read the value from the analog pin 2 -- Variable que guardará la lectura analógica del DEDO 2.
int lectura_dedo3;    // variable to read the value from the analog pin 3 -- Variable que guardará la lectura analógica del DEDO 3.
int lectura_dedo4;    // variable to read the value from the analog pin 4 -- Variable que guardará la lectura analógica del DEDO 4.
int lectura_dedo5;    // variable to read the value from the analog pin 5 -- Variable que guardará la lectura analógica del DEDO 5.
 
void setup() 
{ 
// Definimos que pines serán la senal de cada servo.
  servo.attach(7);  // attaches the servo on pin 7 to the servo object  - Define el pin 7 como salida para el servo.
  servo.attach(6);  // attaches the servo on pin 6 to the servo object  - Define el pin 6 como salida para el servo.
  servo.attach(5);  // attaches the servo on pin 5 to the servo object  - Define el pin 5 como salida para el servo.
  servo.attach(4);  // attaches the servo on pin 4 to the servo object  - Define el pin 4 como salida para el servo.
  servo.attach(3);  // attaches the servo on pin 3 to the servo object  - Define el pin 3 como salida para el servo.
} 
 
void loop() 
{ 
// Para cada dedo haremos un código similar, mapearemos el valor analógico para que lo convierta en grados para el servo.
// Cabe destacar que tomaremos el valor mínimo dado por los sensores de flexión en vez de 0.

// Para el Dedo 1.
  lectura_dedo1 = analogRead(sensor_flexion1);             // reads the value of the potentiometer (value between 0 and 1023) 
  lectura_dedo1 = map(lectura_dedo1,310,940,0,179);         // scale it to use it with the servo (value between 0 and 180) 
  servo.write(7, lectura_dedo1);                  // sets the servo position according to the scaled value 
  delay(10);                             // waits for the servo to get there 
  
  // Para el Dedo 2.
  lectura_dedo2 = analogRead(sensor_flexion2);             // reads the value of the potentiometer (value between 0 and 1023) 
  lectura_dedo2 = map(lectura_dedo2,580,1023,0,179);         // scale it to use it with the servo (value between 0 and 180) 
  servo.write(6, lectura_dedo2);                  // sets the servo position according to the scaled value 
  delay(10);                             // waits for the servo to get there 
  
  // Para el Dedo 3.
  lectura_dedo3 = analogRead(sensor_flexion3);             // reads the value of the potentiometer (value between 0 and 1023) 
  lectura_dedo3 = map(lectura_dedo3,470,980,0,179);         // scale it to use it with the servo (value between 0 and 180) 
  servo.write(5, lectura_dedo3);                  // sets the servo position according to the scaled value 
  delay(10);                             // waits for the servo to get there 
  
  // Para el Dedo 4.
  lectura_dedo4 = analogRead(sensor_flexion4);             // reads the value of the potentiometer (value between 0 and 1023) 
  lectura_dedo4 = map(lectura_dedo4,310,1000,0,179);         // scale it to use it with the servo (value between 0 and 180) 
  servo.write(4, lectura_dedo4);                  // sets the servo position according to the scaled value 
  delay(10);                             // waits for the servo to get there 
  
  // Para el Dedo 5.
  lectura_dedo5 = analogRead(sensor_flexion5);             // reads the value of the potentiometer (value between 0 and 1023) 
  lectura_dedo5 = map(lectura_dedo5,400,1023,0,179);         // scale it to use it with the servo (value between 0 and 180) 
  servo.write(3, lectura_dedo5);                  // sets the servo position according to the scaled value 
  delay(10);                             // waits for the servo to get there 
} 