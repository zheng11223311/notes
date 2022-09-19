.class public Lcom/punchbox/engine/x;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/punchbox/engine/r;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/punchbox/engine/r;Lcom/punchbox/engine/r;)I
    .locals 3

    const-string v0, "CoCoAdSDK-Comparable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lhs.name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/punchbox/engine/r;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", lhs.PRI:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/punchbox/engine/r;->d()Lcom/punchbox/engine/w;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", rhs.name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/punchbox/engine/r;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", rhs.PRI:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/punchbox/engine/r;->d()Lcom/punchbox/engine/w;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/punchbox/engine/r;->d()Lcom/punchbox/engine/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/punchbox/engine/w;->ordinal()I

    move-result v0

    invoke-virtual {p2}, Lcom/punchbox/engine/r;->d()Lcom/punchbox/engine/w;

    move-result-object v1

    invoke-virtual {v1}, Lcom/punchbox/engine/w;->ordinal()I

    move-result v1

    if-le v0, v1, :cond_0

    const-string v0, "CoCoAdSDK-Comparable"

    const-string v1, "lhs has high PRI"

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/punchbox/engine/r;->d()Lcom/punchbox/engine/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/punchbox/engine/w;->ordinal()I

    move-result v0

    invoke-virtual {p2}, Lcom/punchbox/engine/r;->d()Lcom/punchbox/engine/w;

    move-result-object v1

    invoke-virtual {v1}, Lcom/punchbox/engine/w;->ordinal()I

    move-result v1

    if-ge v0, v1, :cond_1

    const-string v0, "CoCoAdSDK-Comparable"

    const-string/jumbo v1, "rhs has high PRI"

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "CoCoAdSDK-Comparable"

    const-string v1, "lhs and rhs has same PRI"

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/punchbox/engine/r;

    check-cast p2, Lcom/punchbox/engine/r;

    invoke-virtual {p0, p1, p2}, Lcom/punchbox/engine/x;->a(Lcom/punchbox/engine/r;Lcom/punchbox/engine/r;)I

    move-result v0

    return v0
.end method
