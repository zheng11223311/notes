.class public final enum Lcom/youku/player/base/PlayType;
.super Ljava/lang/Enum;
.source "PlayType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/youku/player/base/PlayType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/youku/player/base/PlayType;

.field public static final enum LIVE:Lcom/youku/player/base/PlayType;

.field public static final enum LOCAL_DOWNLOAD:Lcom/youku/player/base/PlayType;

.field public static final enum LOCAL_USER_FILE:Lcom/youku/player/base/PlayType;

.field public static final enum ONLINE:Lcom/youku/player/base/PlayType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/youku/player/base/PlayType;

    const-string v1, "LOCAL_USER_FILE"

    invoke-direct {v0, v1, v2}, Lcom/youku/player/base/PlayType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/player/base/PlayType;->LOCAL_USER_FILE:Lcom/youku/player/base/PlayType;

    new-instance v0, Lcom/youku/player/base/PlayType;

    const-string v1, "LOCAL_DOWNLOAD"

    invoke-direct {v0, v1, v3}, Lcom/youku/player/base/PlayType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/player/base/PlayType;->LOCAL_DOWNLOAD:Lcom/youku/player/base/PlayType;

    new-instance v0, Lcom/youku/player/base/PlayType;

    const-string v1, "ONLINE"

    invoke-direct {v0, v1, v4}, Lcom/youku/player/base/PlayType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/player/base/PlayType;->ONLINE:Lcom/youku/player/base/PlayType;

    new-instance v0, Lcom/youku/player/base/PlayType;

    const-string v1, "LIVE"

    invoke-direct {v0, v1, v5}, Lcom/youku/player/base/PlayType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/player/base/PlayType;->LIVE:Lcom/youku/player/base/PlayType;

    .line 3
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/youku/player/base/PlayType;

    sget-object v1, Lcom/youku/player/base/PlayType;->LOCAL_USER_FILE:Lcom/youku/player/base/PlayType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/youku/player/base/PlayType;->LOCAL_DOWNLOAD:Lcom/youku/player/base/PlayType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/youku/player/base/PlayType;->ONLINE:Lcom/youku/player/base/PlayType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/youku/player/base/PlayType;->LIVE:Lcom/youku/player/base/PlayType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/youku/player/base/PlayType;->$VALUES:[Lcom/youku/player/base/PlayType;

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
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/youku/player/base/PlayType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/youku/player/base/PlayType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/youku/player/base/PlayType;

    return-object v0
.end method

.method public static values()[Lcom/youku/player/base/PlayType;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/youku/player/base/PlayType;->$VALUES:[Lcom/youku/player/base/PlayType;

    invoke-virtual {v0}, [Lcom/youku/player/base/PlayType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/youku/player/base/PlayType;

    return-object v0
.end method
