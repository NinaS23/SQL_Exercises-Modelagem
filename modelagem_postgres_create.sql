CREATE TABLE "public.users" (
	"id" serial NOT NULL,
	"nome" TEXT NOT NULL,
	"email" TEXT NOT NULL UNIQUE,
	CONSTRAINT "users_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.produtos" (
	"id" serial NOT NULL,
	"nome" TEXT NOT NULL,
	"preço" int NOT NULL,
	"fotosId" int NOT NULL,
	"userId" int NOT NULL,
	"quantidade" int NOT NULL,
	CONSTRAINT "produtos_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.fotos" (
	"id" serial NOT NULL,
	"fotos_comunsId" int NOT NULL,
	"foto_principalId" int NOT NULL,
	CONSTRAINT "fotos_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.roupas" (
	"id" serial NOT NULL,
	"size" varchar(1) NOT NULL,
	"category" TEXT NOT NULL,
	"userId" int NOT NULL,
	"quantidade" int NOT NULL,
	CONSTRAINT "roupas_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.compra" (
	"id" serial NOT NULL,
	"quantidade" serial NOT NULL,
	"userInfoId" serial NOT NULL,
	"carrinhoId" serial NOT NULL,
	"cartaoId" serial NOT NULL,
	"data" TIMESTAMP NOT NULL DEFAULT 'now()',
	CONSTRAINT "compra_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.userInfo" (
	"id" serial NOT NULL,
	"endereço" TEXT NOT NULL,
	"userId" int NOT NULL,
	CONSTRAINT "userInfo_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.cartão" (
	"id" serial NOT NULL,
	"userId" int NOT NULL,
	"nome" TEXT NOT NULL,
	"código_segurança" TEXT NOT NULL UNIQUE,
	"expiração_mes" TEXT NOT NULL,
	"expiração_ano" TEXT NOT NULL,
	"senha" TEXT NOT NULL,
	"limit" int NOT NULL,
	CONSTRAINT "cartão_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.carrinho" (
	"id" serial NOT NULL,
	"userId" serial NOT NULL,
	"roupasId" serial NOT NULL,
	"produtosId" serial NOT NULL,
	CONSTRAINT "carrinho_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.fotos_comuns" (
	"fotos" TEXT NOT NULL,
	"id" serial NOT NULL,
	CONSTRAINT "fotos_comuns_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.foto_principal" (
	"foto_principal" TEXT NOT NULL,
	"id" serial NOT NULL,
	CONSTRAINT "foto_principal_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);























