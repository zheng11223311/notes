.class final enum Lcom/corncop/leo/ViewFlow$LazyInit;
.super Ljava/lang/Enum;
.source "ViewFlow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/corncop/leo/ViewFlow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "LazyInit"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/corncop/leo/ViewFlow$LazyInit;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/corncop/leo/ViewFlow$LazyInit;

.field public static final enum LEFT:Lcom/corncop/leo/ViewFlow$LazyInit;

.field public static final enum RIGHT:Lcom/corncop/leo/ViewFlow$LazyInit;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 117
    new-instance v0, Lcom/corncop/leo/ViewFlow$LazyInit;

    const-string v1, "LEFT"

    invoke-direct {v0, v1, v2}, Lcom/corncop/leo/ViewFlow$LazyInit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/corncop/leo/ViewFlow$LazyInit;->LEFT:Lcom/corncop/leo/ViewFlow$LazyInit;

    new-instance v0, Lcom/corncop/leo/ViewFlow$LazyInit;

    const-string v1, "RIGHT"

    invoke-direct {v0, v1, v3}, Lcom/corncop/leo/ViewFlow$LazyInit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/corncop/leo/ViewFlow$LazyInit;->RIGHT:Lcom/corncop/leo/ViewFlow$LazyInit;

    .line 116
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/corncop/leo/ViewFlow$LazyInit;

    sget-object v1, Lcom/corncop/leo/ViewFlow$LazyInit;->LEFT:Lcom/corncop/leo/ViewFlow$LazyInit;

    aput-object v1, v0, v2

    sget-object v1, Lcom/corncop/leo/ViewFlow$LazyInit;->RIGHT:Lcom/corncop/leo/ViewFlow$LazyInit;

    aput-object v1, v0, v3

    sput-object v0, Lcom/corncop/leo/ViewFlow$LazyInit;->$VALUES:[Lcom/corncop/leo/ViewFlow$LazyInit;

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
    .line 116
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/corncop/leo/ViewFlow$LazyInit;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 116
    const-class v0, Lcom/corncop/leo/ViewFlow$LazyInit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/corncop/leo/ViewFlow$LazyInit;

    return-object v0
.end method

.method public static values()[Lcom/corncop/leo/ViewFlow$LazyInit;
    .locals 1

    .prologue
    .line 116
    sget-object v0, Lcom/corncop/leo/ViewFlow$LazyInit;->$VALUES:[Lcom/corncop/leo/ViewFlow$LazyInit;

    invoke-virtual {v0}, [Lcom/corncop/leo/ViewFlow$LazyInit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/corncop/leo/ViewFlow$LazyInit;

    return-object v0
.end method
