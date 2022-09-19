.class public Lcom/punchbox/report/c;
.super Lcom/punchbox/report/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/punchbox/report/g",
        "<",
        "Lcom/punchbox/v4/m/a;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/punchbox/v4/l/a;

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/punchbox/report/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/punchbox/report/c;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/punchbox/report/g;-><init>()V

    iput-object p1, p0, Lcom/punchbox/report/c;->c:Ljava/lang/String;

    return-void
.end method

.method private varargs a(Ljava/lang/String;[Ljava/lang/Object;)Z
    .locals 3

    new-instance v0, Lcom/punchbox/v4/l/a;

    invoke-direct {v0, p1, p2}, Lcom/punchbox/v4/l/a;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/punchbox/report/c;->b:Lcom/punchbox/v4/l/a;

    sget-object v0, Lcom/punchbox/report/c;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepare upload  list  count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Object;)Lcom/punchbox/v4/l/c;
    .locals 1

    iget-object v0, p0, Lcom/punchbox/report/c;->b:Lcom/punchbox/v4/l/a;

    return-object v0
.end method

.method protected a(Ljava/lang/String;)Lcom/punchbox/v4/m/a;
    .locals 2

    new-instance v0, Lcom/punchbox/v4/m/a;

    new-instance v1, Lcom/punchbox/v4/h/l;

    invoke-direct {v1}, Lcom/punchbox/v4/h/l;-><init>()V

    invoke-direct {v0, p1, v1}, Lcom/punchbox/v4/m/a;-><init>(Ljava/lang/String;Lcom/punchbox/v4/h/l;)V

    return-object v0
.end method

.method protected synthetic b(Ljava/lang/String;)Lcom/punchbox/v4/m/b;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/punchbox/report/c;->a(Ljava/lang/String;)Lcom/punchbox/v4/m/a;

    move-result-object v0

    return-object v0
.end method

.method protected varargs b([Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    :cond_0
    sget-object v1, Lcom/punchbox/report/c;->a:Ljava/lang/String;

    const-string/jumbo v2, "update datas can\'t be empty "

    invoke-static {v1, v2}, Lcom/punchbox/util/PBLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/punchbox/report/c;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/punchbox/report/c;->a:Ljava/lang/String;

    const-string/jumbo v2, "type can\'t be null "

    invoke-static {v1, v2}, Lcom/punchbox/util/PBLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    aget-object v0, p1, v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    sget-object v1, Lcom/punchbox/report/c;->a:Ljava/lang/String;

    const-string v2, "execute post upload  datas"

    invoke-static {v1, v2}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/punchbox/report/c;->c:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/punchbox/report/c;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
