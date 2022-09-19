.class final enum Lio/rong/imkit/widget/RCViewFlow$LazyInit;
.super Ljava/lang/Enum;
.source "RCViewFlow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imkit/widget/RCViewFlow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "LazyInit"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/rong/imkit/widget/RCViewFlow$LazyInit;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/rong/imkit/widget/RCViewFlow$LazyInit;

.field public static final enum LEFT:Lio/rong/imkit/widget/RCViewFlow$LazyInit;

.field public static final enum RIGHT:Lio/rong/imkit/widget/RCViewFlow$LazyInit;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 110
    new-instance v0, Lio/rong/imkit/widget/RCViewFlow$LazyInit;

    const-string v1, "LEFT"

    invoke-direct {v0, v1, v2}, Lio/rong/imkit/widget/RCViewFlow$LazyInit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/rong/imkit/widget/RCViewFlow$LazyInit;->LEFT:Lio/rong/imkit/widget/RCViewFlow$LazyInit;

    new-instance v0, Lio/rong/imkit/widget/RCViewFlow$LazyInit;

    const-string v1, "RIGHT"

    invoke-direct {v0, v1, v3}, Lio/rong/imkit/widget/RCViewFlow$LazyInit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/rong/imkit/widget/RCViewFlow$LazyInit;->RIGHT:Lio/rong/imkit/widget/RCViewFlow$LazyInit;

    .line 109
    const/4 v0, 0x2

    new-array v0, v0, [Lio/rong/imkit/widget/RCViewFlow$LazyInit;

    sget-object v1, Lio/rong/imkit/widget/RCViewFlow$LazyInit;->LEFT:Lio/rong/imkit/widget/RCViewFlow$LazyInit;

    aput-object v1, v0, v2

    sget-object v1, Lio/rong/imkit/widget/RCViewFlow$LazyInit;->RIGHT:Lio/rong/imkit/widget/RCViewFlow$LazyInit;

    aput-object v1, v0, v3

    sput-object v0, Lio/rong/imkit/widget/RCViewFlow$LazyInit;->$VALUES:[Lio/rong/imkit/widget/RCViewFlow$LazyInit;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/rong/imkit/widget/RCViewFlow$LazyInit;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 109
    const-class v0, Lio/rong/imkit/widget/RCViewFlow$LazyInit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/rong/imkit/widget/RCViewFlow$LazyInit;

    return-object v0
.end method

.method public static values()[Lio/rong/imkit/widget/RCViewFlow$LazyInit;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lio/rong/imkit/widget/RCViewFlow$LazyInit;->$VALUES:[Lio/rong/imkit/widget/RCViewFlow$LazyInit;

    invoke-virtual {v0}, [Lio/rong/imkit/widget/RCViewFlow$LazyInit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/rong/imkit/widget/RCViewFlow$LazyInit;

    return-object v0
.end method
