.class public Lcom/punchbox/report/d;
.super Lcom/punchbox/report/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/punchbox/report/g",
        "<",
        "Lcom/punchbox/v4/m/a;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/punchbox/v4/h/l;

.field private c:Lcom/punchbox/v4/l/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/punchbox/report/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/punchbox/report/d;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/punchbox/report/g;-><init>()V

    new-instance v0, Lcom/punchbox/v4/h/l;

    invoke-direct {v0}, Lcom/punchbox/v4/h/l;-><init>()V

    iput-object v0, p0, Lcom/punchbox/report/d;->b:Lcom/punchbox/v4/h/l;

    return-void
.end method

.method private a()Z
    .locals 8

    const/4 v2, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/punchbox/report/d;->b()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    sget-object v1, Lcom/punchbox/report/d;->a:Ljava/lang/String;

    const-string v2, "No failure datas "

    invoke-static {v1, v2}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    new-array v4, v1, [Ljava/lang/Long;

    move v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/punchbox/report/ReportData;

    iget-wide v6, v0, Lcom/punchbox/report/ReportData;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/punchbox/report/d;->b:Lcom/punchbox/v4/h/l;

    invoke-virtual {v0, v2, v4}, Lcom/punchbox/v4/h/l;->a(I[Ljava/lang/Long;)V

    new-instance v0, Lcom/punchbox/v4/l/b;

    invoke-direct {v0, v3}, Lcom/punchbox/v4/l/b;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/punchbox/report/d;->c:Lcom/punchbox/v4/l/b;

    iget-object v0, p0, Lcom/punchbox/report/d;->c:Lcom/punchbox/v4/l/b;

    invoke-virtual {v0, v4}, Lcom/punchbox/v4/l/b;->a([Ljava/lang/Long;)V

    move v0, v2

    goto :goto_0
.end method

.method private b()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/punchbox/report/ReportData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/punchbox/report/d;->b:Lcom/punchbox/v4/h/l;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/punchbox/v4/h/l;->a(I)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/punchbox/report/d;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " failed data count :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic a([Ljava/lang/Object;)Lcom/punchbox/v4/l/c;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/punchbox/report/d;->a([Ljava/lang/Void;)Lcom/punchbox/v4/l/c;

    move-result-object v0

    return-object v0
.end method

.method protected varargs a([Ljava/lang/Void;)Lcom/punchbox/v4/l/c;
    .locals 1

    iget-object v0, p0, Lcom/punchbox/report/d;->c:Lcom/punchbox/v4/l/b;

    return-object v0
.end method

.method protected a(Ljava/lang/String;)Lcom/punchbox/v4/m/a;
    .locals 2

    new-instance v0, Lcom/punchbox/v4/m/a;

    iget-object v1, p0, Lcom/punchbox/report/d;->b:Lcom/punchbox/v4/h/l;

    invoke-direct {v0, p1, v1}, Lcom/punchbox/v4/m/a;-><init>(Ljava/lang/String;Lcom/punchbox/v4/h/l;)V

    return-object v0
.end method

.method protected synthetic b(Ljava/lang/String;)Lcom/punchbox/v4/m/b;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/punchbox/report/d;->a(Ljava/lang/String;)Lcom/punchbox/v4/m/a;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic b([Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/punchbox/report/d;->b([Ljava/lang/Void;)Z

    move-result v0

    return v0
.end method

.method protected varargs b([Ljava/lang/Void;)Z
    .locals 1

    invoke-direct {p0}, Lcom/punchbox/report/d;->a()Z

    move-result v0

    return v0
.end method
