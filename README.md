# Vagrant IoT Edge

Easy Microsoft Azure IoT Edge development environment with Vagrant and Docker.

This uses an Ubuntu 16.04 LTS 64-bit box with everything provisioned to run IoT Edge on Docker.


## Usage

Make sure you have installed [VirtualBox](https://www.virtualbox.org) and [Vagrant](https://www.vagrantup.com)

You must have a Microsoft Azure account provisionned with an IoT Hub in a zone supporting IoT Edge Preview (i.e. North Europa).
Create an IoT Edge Device to obtain the device connection string.


Run the virtual machine :

    vagrant up
    vagrant ssh

Configure the runtime with your IoT Edge device connection string :

    sudo iotedgectl setup --connection-string "{device connection string}" --auto-cert-gen-force-no-passwords


Start the IoT Edge runtime: :

    sudo iotedgectl start


## Usefull Links

- [Microsoft IoT Edge Documentation](https://docs.microsoft.com/fr-ch/azure/iot-edge/)
- [Docker Documentation](https://docs.docker.com)
- [Vagrant Documentation](https://www.vagrantup.com/docs/)
