select 
	dat_comp
	,av_comentario
	,dc.nm_cliente 
	,df.nm_funcionario 
	,ds.tp_servico 
from barber_shop.dw.fact_servicos_barbearia fsb 
	join barber_shop.dw.dim_cliente dc on dc.sk_cliente = fsb.sk_cliente 
	join barber_shop.dw.dim_funcionario df on df.sk_funcionario = fsb.sk_funcionario 
	join barber_shop.dw.dim_servico ds on ds.sk_servico = fsb.sk_servico 