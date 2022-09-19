.class public Lcom/punchbox/engine/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/os/Message;",
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
.method public a(Landroid/os/Message;Landroid/os/Message;)I
    .locals 2

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p2, Landroid/os/Message;->arg1:I

    if-le v0, v1, :cond_0

    const-string v0, "CoCoAd-ClientMsgCompare"

    const-string v1, "lhs has high PRI"

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    if-ge v0, v1, :cond_1

    const-string v0, "CoCoAd-ClientMsgCompare"

    const-string/jumbo v1, "rhs has high PRI"

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "CoCoAd-ClientMsgCompare"

    const-string v1, "lhs and rhs has same PRI"

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Landroid/os/Message;

    check-cast p2, Landroid/os/Message;

    invoke-virtual {p0, p1, p2}, Lcom/punchbox/engine/b;->a(Landroid/os/Message;Landroid/os/Message;)I

    move-result v0

    return v0
.end method
