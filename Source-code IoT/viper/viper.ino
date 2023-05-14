#include <ESP8266WiFi.h>
#include <ESP8266HTTPClient.h>
#include <WiFiClient.h>

const char* ssid = "Bukan Lemon";
const char* password = "gamoapokoknya";

// Domain name
String serverName = "http://viper.agilfuad.my.id=/user/data/gas";

// the following variables are unsigned longs because the time, measured in
unsigned long lastTime = 0;
// Timer set to 10 minutes (600000)
//unsigned long timerDelay = 600000;
// Set timer to 5 seconds (5000)
unsigned long timerDelay = 5000;

//Gas Sensor PIN
int mq135Pin = A0;

void setup() {
  // initialize the serial communication:
  Serial.begin(9600);
  pinMode(15, INPUT); // Setup for leads off detection LO +
  pinMode(13, INPUT); // Setup for leads off detection LO -
  WiFi.begin(ssid, password);
  Serial.println("Connecting");
  while(WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print(".");
  }
  Serial.println("");
  Serial.print("Connected to WiFi network with IP Address: ");
  Serial.println(WiFi.localIP());
 
  Serial.println("Timer set to 5 seconds (timerDelay variable), it will take 5 seconds before publishing the first reading.");
}

void loop() {
  
  if((digitalRead(15) == 1)||(digitalRead(13) == 1)){
    Serial.println('!');
  }
  else{
    int dataSensor = analogRead(mq135Pin); // Read the analog value from the sensor
    float voltage = dataSensor * (5.0 / 1023.0); // Convert the analog reading to voltage
    float coConcentration = 60.0 * (voltage - 0.2) / 0.8; // Convert the voltage to parts per million (ppm)
    float noConcentration = 1.7 * pow(voltage, 1.0 / 0.67); // Convert the voltage to parts per million (ppm) using a conversion formula
    
    post(dataSensor,"Air Quality Data");
    post(coConcentration,"Carbon X-Okside Data");
    post(noConcentration,"Nitrogen X-Oxides Data");
  }
  //Wait for a bit to keep serial data from saturating
  delay(1);
}

void post(int data,String dataSpecification){
 String edit = "{\"name\":\"Gas device 1\",\"data ";
 edit = edit + dataSpecification +": "
 edit = edit + String(data) +"}";
 
 if ((millis() - lastTime) > timerDelay) {
    //Check WiFi connection status
    if(WiFi.status()== WL_CONNECTED){
      WiFiClient client;
      HTTPClient http;
      
      // Your Domain name with URL path or IP address with path
      http.begin(client, serverName);

      // Specify content-type header
      //http.addHeader("Content-Type", "application/json");
      // Data to send with HTTP POST
      String httpRequestData = "?data=234";           
      // Send HTTP POST request
      //int httpResponseCode = http.POST(httpRequestData);
      
      // If you need an HTTP request with a content type: application/json, use the following:
      http.addHeader("Content-Type", "application/json");
      int httpResponseCode = http.PUT(edit);

      // If you need an HTTP request with a content type: text/plain
      //http.addHeader("Content-Type", "text/plain");
      //int httpResponseCode = http.POST("Hello, World!");
     
      Serial.print("HTTP Response code: ");
      Serial.println(httpResponseCode);
        
      // Free resources
      http.end();
    }
    else {
      Serial.println("WiFi Disconnected");
    }
    lastTime = millis();
  }
}

void post(float data,String dataSpecification){
 String edit = "{\"name\":\"Gas device 1\",\"data ";
 edit = edit + dataSpecification +": "
 edit = edit + String(data) +"}";
 
 if ((millis() - lastTime) > timerDelay) {
    //Check WiFi connection status
    if(WiFi.status()== WL_CONNECTED){
      WiFiClient client;
      HTTPClient http;
      
      // Your Domain name with URL path or IP address with path
      http.begin(client, serverName);

      // Specify content-type header
      //http.addHeader("Content-Type", "application/json");
      // Data to send with HTTP POST
      String httpRequestData = "?data=234";           
      // Send HTTP POST request
      //int httpResponseCode = http.POST(httpRequestData);
      
      // If you need an HTTP request with a content type: application/json, use the following:
      http.addHeader("Content-Type", "application/json");
      int httpResponseCode = http.PUT(edit);

      // If you need an HTTP request with a content type: text/plain
      //http.addHeader("Content-Type", "text/plain");
      //int httpResponseCode = http.POST("Hello, World!");
     
      Serial.print("HTTP Response code: ");
      Serial.println(httpResponseCode);
        
      // Free resources
      http.end();
    }
    else {
      Serial.println("WiFi Disconnected");
    }
    lastTime = millis();
  }
}
