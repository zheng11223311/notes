.class public final enum Lcom/ultrapower/mcs/engine/TransportType;
.super Ljava/lang/Enum;
.source "TransportType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ultrapower/mcs/engine/TransportType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ultrapower/mcs/engine/TransportType;

.field public static final enum kExternal:Lcom/ultrapower/mcs/engine/TransportType;

.field public static final enum kExternalOriginal:Lcom/ultrapower/mcs/engine/TransportType;

.field public static final enum kUdpGernal:Lcom/ultrapower/mcs/engine/TransportType;

.field public static final enum kUdpRelay:Lcom/ultrapower/mcs/engine/TransportType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 7
    new-instance v0, Lcom/ultrapower/mcs/engine/TransportType;

    const-string v1, "kUdpGernal"

    invoke-direct {v0, v1, v3, v3}, Lcom/ultrapower/mcs/engine/TransportType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ultrapower/mcs/engine/TransportType;->kUdpGernal:Lcom/ultrapower/mcs/engine/TransportType;

    .line 11
    new-instance v0, Lcom/ultrapower/mcs/engine/TransportType;

    const-string v1, "kUdpRelay"

    invoke-direct {v0, v1, v4, v4}, Lcom/ultrapower/mcs/engine/TransportType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ultrapower/mcs/engine/TransportType;->kUdpRelay:Lcom/ultrapower/mcs/engine/TransportType;

    .line 19
    new-instance v0, Lcom/ultrapower/mcs/engine/TransportType;

    const-string v1, "kExternal"

    invoke-direct {v0, v1, v5, v7}, Lcom/ultrapower/mcs/engine/TransportType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ultrapower/mcs/engine/TransportType;->kExternal:Lcom/ultrapower/mcs/engine/TransportType;

    .line 30
    new-instance v0, Lcom/ultrapower/mcs/engine/TransportType;

    const-string v1, "kExternalOriginal"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v6, v2}, Lcom/ultrapower/mcs/engine/TransportType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ultrapower/mcs/engine/TransportType;->kExternalOriginal:Lcom/ultrapower/mcs/engine/TransportType;

    .line 2
    new-array v0, v7, [Lcom/ultrapower/mcs/engine/TransportType;

    sget-object v1, Lcom/ultrapower/mcs/engine/TransportType;->kUdpGernal:Lcom/ultrapower/mcs/engine/TransportType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ultrapower/mcs/engine/TransportType;->kUdpRelay:Lcom/ultrapower/mcs/engine/TransportType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ultrapower/mcs/engine/TransportType;->kExternal:Lcom/ultrapower/mcs/engine/TransportType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ultrapower/mcs/engine/TransportType;->kExternalOriginal:Lcom/ultrapower/mcs/engine/TransportType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/ultrapower/mcs/engine/TransportType;->$VALUES:[Lcom/ultrapower/mcs/engine/TransportType;

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
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33
    iput p3, p0, Lcom/ultrapower/mcs/engine/TransportType;->value:I

    .line 34
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ultrapower/mcs/engine/TransportType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 2
    const-class v0, Lcom/ultrapower/mcs/engine/TransportType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ultrapower/mcs/engine/TransportType;

    return-object v0
.end method

.method public static values()[Lcom/ultrapower/mcs/engine/TransportType;
    .locals 1

    .prologue
    .line 2
    sget-object v0, Lcom/ultrapower/mcs/engine/TransportType;->$VALUES:[Lcom/ultrapower/mcs/engine/TransportType;

    invoke-virtual {v0}, [Lcom/ultrapower/mcs/engine/TransportType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ultrapower/mcs/engine/TransportType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/ultrapower/mcs/engine/TransportType;->value:I

    return v0
.end method
