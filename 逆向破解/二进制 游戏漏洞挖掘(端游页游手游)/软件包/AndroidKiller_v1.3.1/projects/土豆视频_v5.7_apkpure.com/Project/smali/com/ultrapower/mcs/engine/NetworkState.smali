.class public final enum Lcom/ultrapower/mcs/engine/NetworkState;
.super Ljava/lang/Enum;
.source "NetworkState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ultrapower/mcs/engine/NetworkState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ultrapower/mcs/engine/NetworkState;

.field public static final enum kNetworkStateGood:Lcom/ultrapower/mcs/engine/NetworkState;

.field public static final enum kNetworkStateLow:Lcom/ultrapower/mcs/engine/NetworkState;

.field public static final enum kNetworkStateNormal:Lcom/ultrapower/mcs/engine/NetworkState;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 13
    new-instance v0, Lcom/ultrapower/mcs/engine/NetworkState;

    const-string v1, "kNetworkStateLow"

    invoke-direct {v0, v1, v4, v2}, Lcom/ultrapower/mcs/engine/NetworkState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ultrapower/mcs/engine/NetworkState;->kNetworkStateLow:Lcom/ultrapower/mcs/engine/NetworkState;

    .line 17
    new-instance v0, Lcom/ultrapower/mcs/engine/NetworkState;

    const-string v1, "kNetworkStateNormal"

    invoke-direct {v0, v1, v2, v3}, Lcom/ultrapower/mcs/engine/NetworkState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ultrapower/mcs/engine/NetworkState;->kNetworkStateNormal:Lcom/ultrapower/mcs/engine/NetworkState;

    .line 21
    new-instance v0, Lcom/ultrapower/mcs/engine/NetworkState;

    const-string v1, "kNetworkStateGood"

    invoke-direct {v0, v1, v3, v5}, Lcom/ultrapower/mcs/engine/NetworkState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ultrapower/mcs/engine/NetworkState;->kNetworkStateGood:Lcom/ultrapower/mcs/engine/NetworkState;

    .line 8
    new-array v0, v5, [Lcom/ultrapower/mcs/engine/NetworkState;

    sget-object v1, Lcom/ultrapower/mcs/engine/NetworkState;->kNetworkStateLow:Lcom/ultrapower/mcs/engine/NetworkState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ultrapower/mcs/engine/NetworkState;->kNetworkStateNormal:Lcom/ultrapower/mcs/engine/NetworkState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ultrapower/mcs/engine/NetworkState;->kNetworkStateGood:Lcom/ultrapower/mcs/engine/NetworkState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/ultrapower/mcs/engine/NetworkState;->$VALUES:[Lcom/ultrapower/mcs/engine/NetworkState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 28
    iput p3, p0, Lcom/ultrapower/mcs/engine/NetworkState;->value:I

    .line 29
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ultrapower/mcs/engine/NetworkState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/ultrapower/mcs/engine/NetworkState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ultrapower/mcs/engine/NetworkState;

    return-object v0
.end method

.method public static values()[Lcom/ultrapower/mcs/engine/NetworkState;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/ultrapower/mcs/engine/NetworkState;->$VALUES:[Lcom/ultrapower/mcs/engine/NetworkState;

    invoke-virtual {v0}, [Lcom/ultrapower/mcs/engine/NetworkState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ultrapower/mcs/engine/NetworkState;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/ultrapower/mcs/engine/NetworkState;->value:I

    return v0
.end method
