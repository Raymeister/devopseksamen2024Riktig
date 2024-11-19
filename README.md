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
Oppgave 5

Når man vurderer implementering av en serverless arkitektur med FaaS-tjenester, er det viktig å reflektere over implikasjonene dette kan ha. I en serverless arkitektur er hver funksjon en selvstendig enhet, noe som gjør det mulig å oppdatere og utrulle små endringer raskt uten å påvirke resten av systemet. Serverless-tjenester integreres godt med CI/CD-verktøy (Continuous Integration and Continuous Deployment), noe som forenkler automatisering og kontinuerlig levering.
Samtidig fører modulariteten i serverless til at CI/CD-pipelines ofte blir mer komplekse, da hver funksjon krever sin egen pipeline og oppfølging. I en mikrotjenestearkitektur er tjenestene større og mer omfattende, noe som gjør CI/CD-prosessene mer forutsigbare og enklere å administrere. Dette kan imidlertid føre til mindre fleksibilitet, siden endringer i én del av en tjeneste ofte krever oppdatering og utrulling av hele tjenesten. 
Overrvåkning og feilsøking
 Endres drastisk når man bytter fra mikrotjenester til serverless. Serverless arkitektur tilbyr verktøy som cloudwatch og aws x ray som gir innsikt til hver enkelt funksjon og lar deg lett logge og overvåke funksjonene ssom enheter. I mikrotjenester er tjenestene lengrelevende som gjør at det blir enklere og å sette opp dedikert overvåkning og logging. Men det kan bli raskt utfordrende å feilsøke komplekse avhengigheter mellom tjenester. Serverless gir fordelen av funksjonsbasert overvåkning, men kompleksiteten øker i distribuerte systemer. Mirkotjenester tilbyr stabil overvåkning men i mindre detaljer.
Serverless er utrolig bra når det kommer til skalerbarhet, her kan funksjoner automatisk skalere seg opp og ned basert på hvor mye trafikk som kommer, man kan også gjøre at man bare betaler for brukere som fatkisk tar i bruk. Dette gjør det billigere ved lav trafikk men kan også gjøre at du får utforutsigbare kostnader ved høy trafikk. I mikrotjenstearkitektur er skalerbarhet mer kontrollert. Dedikert infrastrukturer gir mulighet for tilpasning. Men krever manuell konfigurering og vedlikehold. Serverless er dynamisk og kostnadseffektivt, men mikrotjenester gir bedre forutsigbarhet i ressursforbruk.
Å velge mellom serverless og mikrotjenester avhenger av hva du trenger. Serverless tilbyr fleksibilitet,, dynamisk skalering og rask utrulling men dette medfører høyere kompleksitet i ci/cd og observability. Mikrotjenester er mer forutsigbare i administrasjon, overvåkning og ressursforbruk men krever mer arbeid for å holde i drift. Hvilken som tas i bruk burde baserer på kompetasne, størrelse til organsisasjon, fleksibilitet, og hvor skalerbar man trenger det

Kilder: Flinders, M. (2024, August 12). Serverless vs. microservices: Which architecture is best for your business? IBM Blog; Security Intelligence. https://www.ibm.com/blog/serverless-vs-microservices/


