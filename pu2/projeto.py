# bibliotecas
import threading # threads
import time # tempo (opcional)
import mraa
import socket

tempo=0
ADC1=0
ADC2=0
pwm_var=0
ini=0
tempoTotal = 30

# define uma classe para a criacao de threads
class minhaThread (threading.Thread):
    # redefine a funcao __init__ para aceitar a passagem parametros de entrada
    def __init__(self, threadID):
        threading.Thread.__init__(self)
        self.id = threadID
    # a funcao run() e executada por padrao por cada thread
    def run(self):
	global tempo
	tempo = 0
	if(self.id==0):
	    print "Criado"
        if(self.id==1):
            socket_tcp()
        elif (self.id==2):
            curva_tempo()
        elif (self.id==3):
            pwm()
        elif (self.id==4):
            ler_sensor()

def socket_tcp():
    while(tempo<=tempoTotal):
        ##print "tempo: ", tempo," ADC1: ",ADC1," ADC2: ",ADC2," PWM: ", pwm_var
    	##time.sleep(0.15)
        HOST = '10.13.112.70'     # Endereco IP do Servidor
        PORT = 5000            # Porta que o Servidor esta
        tcp = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        dest = (HOST, PORT)
        tcp.connect(dest)
        ##print 'Para sair use CTRL+X\n'
        msg = "\ntempo: " +  str(tempo) + " ADC1: " + str(ADC1) + " ADC2: " + str(ADC2) + " PWM: "+ str(pwm_var)
        tcp.send (msg)
        tcp.close()
        time.sleep(0.2)

def curva_tempo():
    global tempo
    while(tempo<=tempoTotal+1):
	tempo = round((time.time() - ini),1)
def pwm():
    global pwm_var
    global ADC1
    global ADC2
    ldr=ADC1



    x = mraa.Pwm(9)
    x.period_us(700)
    x.enable(True)

    y = mraa.Pwm(10)
    y.period_us(700)
    y.enable(True)


    ##adc2 aprox 0.18

    while(tempo<=tempoTotal+1):
        pwm_ADC=ADC1
        x.write(pwm_ADC)
        ldr = ADC1

    	if(tempo >=0 and tempo<=10):
       	    pwm_var = (0.05*tempo)*ADC1/ldr + 0*ADC2 ## y = 0.05x
            y.write(pwm_var)
    	elif(tempo<=12):
            pwm_var = (0.5) ##mantem
            y.write(pwm_var)
    	elif(tempo<=15):
            pwm_var = (-0.0666667*tempo)*ADC1/ldr + ADC2*7.2 ##y = 1.3 - 0.066667x
            y.write(pwm_var)
    	elif(tempo<=20):
            pwm_var = (0.3) ##mantem
            y.write(pwm_var)
    	elif(tempo<=25):
            pwm_var = (0.1*tempo)*ADC1/ldr - ADC2*9.4 ##y = 0.1x - 1.7
            y.write(pwm_var)
        elif(tempo<30):
            pwm_var = (-0.16*tempo)*ADC1/ldr + ADC2*25.8 ##y = 4.8 - 0.16x
            y.write(pwm_var)
    	else:
	    x.write(0)
	    y.write(0)

    x.write(0)
    y.write(0)

def ler_sensor():
    global ADC1,ADC2
    conversor_adc1 = mraa.Aio(0)
    ADC1 = conversor_adc1.readFloat()
    conversor_adc2 = mraa.Aio(1)
    ADC2 = conversor_adc2.readFloat()



# criando duas threads
# a classe minhaThread() recebe: identificador da thread, nome da thread, numero de processos
btn = mraa.Gpio(6)
btn.dir(mraa.DIR_IN)
btn.write(0)

flag = 0

led = mraa.Gpio(4)
led.dir(mraa.DIR_OUT)

thread1 = minhaThread(1)
thread2 = minhaThread(2)
thread3 = minhaThread(3)
thread4 = minhaThread(4)

led.write(1)
while True:
    if(btn.read()==1):
	flag = 1
    if(flag==1):
        led.write(1)
        ini =time.time()

        # disparando as threads
        thread1 = minhaThread(1)
        thread2 = minhaThread(2)
        thread3 = minhaThread(3)
        thread4 = minhaThread(4)

	thread1.start()
        thread2.start()
        thread3.start()
        thread4.start()
	flag=0
    if(tempo>=30):
	      led.write(0)
