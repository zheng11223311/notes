.class public final enum Lio/rong/push/PushContext$Status;
.super Ljava/lang/Enum;
.source "PushContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/push/PushContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/rong/push/PushContext$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/rong/push/PushContext$Status;

.field public static final enum CONNECTED:Lio/rong/push/PushContext$Status;

.field public static final enum DISCONNECTED:Lio/rong/push/PushContext$Status;

.field public static final enum SYNC_VERSION:Lio/rong/push/PushContext$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 51
    new-instance v0, Lio/rong/push/PushContext$Status;

    const-string v1, "CONNECTED"

    invoke-direct {v0, v1, v2}, Lio/rong/push/PushContext$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/rong/push/PushContext$Status;->CONNECTED:Lio/rong/push/PushContext$Status;

    new-instance v0, Lio/rong/push/PushContext$Status;

    const-string v1, "DISCONNECTED"

    invoke-direct {v0, v1, v3}, Lio/rong/push/PushContext$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/rong/push/PushContext$Status;->DISCONNECTED:Lio/rong/push/PushContext$Status;

    new-instance v0, Lio/rong/push/PushContext$Status;

    const-string v1, "SYNC_VERSION"

    invoke-direct {v0, v1, v4}, Lio/rong/push/PushContext$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/rong/push/PushContext$Status;->SYNC_VERSION:Lio/rong/push/PushContext$Status;

    .line 50
    const/4 v0, 0x3

    new-array v0, v0, [Lio/rong/push/PushContext$Status;

    sget-object v1, Lio/rong/push/PushContext$Status;->CONNECTED:Lio/rong/push/PushContext$Status;

    aput-object v1, v0, v2

    sget-object v1, Lio/rong/push/PushContext$Status;->DISCONNECTED:Lio/rong/push/PushContext$Status;

    aput-object v1, v0, v3

    sget-object v1, Lio/rong/push/PushContext$Status;->SYNC_VERSION:Lio/rong/push/PushContext$Status;

    aput-object v1, v0, v4

    sput-object v0, Lio/rong/push/PushContext$Status;->$VALUES:[Lio/rong/push/PushContext$Status;

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
    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/rong/push/PushContext$Status;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 50
    const-class v0, Lio/rong/push/PushContext$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/rong/push/PushContext$Status;

    return-object v0
.end method

.method public static values()[Lio/rong/push/PushContext$Status;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lio/rong/push/PushContext$Status;->$VALUES:[Lio/rong/push/PushContext$Status;

    invoke-virtual {v0}, [Lio/rong/push/PushContext$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/rong/push/PushContext$Status;

    return-object v0
.end method
