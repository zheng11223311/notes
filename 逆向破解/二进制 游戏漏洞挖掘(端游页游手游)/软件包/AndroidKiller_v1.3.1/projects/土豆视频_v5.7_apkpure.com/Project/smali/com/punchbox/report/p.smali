.class Lcom/punchbox/report/p;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcom/punchbox/v4/m/c;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/punchbox/report/p;->b:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/punchbox/report/p;)Lcom/punchbox/v4/m/c;
    .locals 1

    iget-object v0, p0, Lcom/punchbox/report/p;->c:Lcom/punchbox/v4/m/c;

    return-object v0
.end method

.method static synthetic b(Lcom/punchbox/report/p;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/punchbox/report/p;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/punchbox/report/p;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/punchbox/report/p;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/punchbox/report/n;
    .locals 2

    new-instance v0, Lcom/punchbox/report/n;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/punchbox/report/n;-><init>(Lcom/punchbox/report/p;Lcom/punchbox/report/o;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/punchbox/report/p;
    .locals 0

    iput-object p1, p0, Lcom/punchbox/report/p;->a:Ljava/lang/String;

    return-object p0
.end method
