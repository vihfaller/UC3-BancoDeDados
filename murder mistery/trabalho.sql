select * from crime_scene_report where city = 'SQL City' and type = 'murder'
-- 20180115/ murder/ Imagens de segurança mostram que havia 2 testemunhas. A primeira testemunha mora na última casa na "Northwestern Dr". A segunda testemunha, chamada Annabel, mora em algum lugar na "Franklin Ave.../  RenSQL City
select * from person where address_street_name = 'Northwestern Dr' 
-- id.14887/ nome. Morty Schapiro/ IDLicença. 118009/ numero. 4919/ rua. Dr. Noroeste/ ssn. 111564949
select * from interview where person_id = '14887'
-- Ouvi um tiro e então vi um homem correndo para fora. Ele tinha uma sacola "Get Fit Now Gym". O número de membro na sacola começava com "48Z". Somente membros Gold têm essas sacolas. O homem entrou em um carro com uma placa que incluía "H42W".
select * from get_fit_now_check_in
join get_fit_now_member
on get_fit_now_check_in.membership_id = get_fit_now_member.id 
where membership_id like '48Z%' and membership_status like 
'Gold'
-- idMembro.48Z7A/ dataCheckIn.20180109/ hrCheckIn. 1600	checkOut.1730/ id.48Z7A/ pessoaID.28819/ nome.Joe Germuska	dataAssocia.20160305/ statusMebro.ouro
select * from person where id = '28819' or id = '67318'
-- joe 173289/ jeremy 423327
select * from drivers_license where id = '173289' or id = '423327'
--423327	30	70	brown	brown	male	0H42W2	Chevrolet	Spark LS
INSERT INTO solution VALUES (1, 'Jeremy Bowers');
        
        SELECT value FROM solution;
-- Parabéns, você encontrou o assassino! Mas espere, tem mais... Se você acha que está pronto para um desafio, tente consultar a transcrição da entrevista do assassino para encontrar o verdadeiro vilão por trás deste crime. Se você se sente especialmente confiante em suas habilidades de SQL, tente completar esta etapa final com no máximo 2 consultas. Use esta mesma instrução INSERT com seu novo suspeito para verificar sua resposta.
-- ID JEREMY 67318

select * from interview where person_id = 67318
-- Fui contratado por uma mulher com muito dinheiro. Não sei o nome dela, mas sei que ela tem cerca de 5'5" (65") ou 5'7" (67"). Ela tem cabelo ruivo e dirige um Tesla Model S. Sei que ela foi ao SQL Symphony Concert 3 vezes em dezembro de 2017. 

select * from drivers_license where height = 65 and hair_color = 'red' and car_model = 'Tesla Model S'
-- 202298	68	66	green	red	female	500123	Tesla	Model S
-- 291182	65	66	blue	red	female	08CM64	Tesla	Model S
-- 918773	48	65	black	red	female	917UU3	Tesla	Model S
 
select * from person where license_id = 202298 --Miranda Priestly 99716
select * from person where license_id = 291182 --Regina George 90700
select * from person where license_id = 918773 -- Red Korb 78881

select * from facebook_event_checkin where person_id = 99716
--  99716	1143	SQL Symphony Concert	20171206
--  99716	1143	SQL Symphony Concert	20171212
--  99716	1143	SQL Symphony Concert	20171229

