Oppgave 1:
  link postman: https://vx7s2ymjde.execute-api.eu-west-1.amazonaws.com/Prod/generate-image
  link action workflow: https://github.com/Raymeister/devopseksamen2024Riktig/actions/runs/11838415544/job/32987485022
oppgave 2:
  til terraform apply på main push: https://github.com/Raymeister/devopseksamen2024Riktig/actions/runs/11848705087/job/33020700542
  ikke main branch vellyket action workflow: https://github.com/Raymeister/devopseksamen2024Riktig/actions/runs/11848731483/job/33020772622
  sqs url: https://sqs.eu-west-1.amazonaws.com/244530008913/image_generation_queue
oppgave 3:
  i denne oppgaven har jeg valgt å tagge med latest som kan tenkes som en bevegende tag sånn at man alltid kan se hvilken tagg som er latest, dette gjør det lett å finne den nyeste docker imaget, jeg har også valgå gi hver tag en sha som gir 
  den en unik identifiserer som gjø at man kan se forskjellen mellom hver image og har en unik måte å identifisere denne, så hvis det skjer noe problemer med latest så kan man rulle tilbake til det gamle å bruke sha for å rulle tilbake til 
  en spesifik
  containerimage: raymeister/java-sqs-client      sqs url: https://sqs.eu-west-1.amazonaws.com/244530008913/image_generation_queue
oppgave 4:
 kode lagt til i main.tf, kan endre hvilken mail som får kode med å endre mail når terrafrom plan og apply blir kjørt
oppgave 5:
  drøfte: 
