.class public final enum Lcom/youku/player/BaseMediaPlayer$STATE;
.super Ljava/lang/Enum;
.source "BaseMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/player/BaseMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/youku/player/BaseMediaPlayer$STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/youku/player/BaseMediaPlayer$STATE;

.field public static final enum IDLE:Lcom/youku/player/BaseMediaPlayer$STATE;

.field public static final enum PAUSE:Lcom/youku/player/BaseMediaPlayer$STATE;

.field public static final enum PLAY:Lcom/youku/player/BaseMediaPlayer$STATE;

.field public static final enum PREPARE:Lcom/youku/player/BaseMediaPlayer$STATE;

.field public static final enum PREPARED:Lcom/youku/player/BaseMediaPlayer$STATE;

.field public static final enum SEEK_TO:Lcom/youku/player/BaseMediaPlayer$STATE;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 66
    new-instance v0, Lcom/youku/player/BaseMediaPlayer$STATE;

    const-string v1, "PLAY"

    invoke-direct {v0, v1, v3}, Lcom/youku/player/BaseMediaPlayer$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/player/BaseMediaPlayer$STATE;->PLAY:Lcom/youku/player/BaseMediaPlayer$STATE;

    new-instance v0, Lcom/youku/player/BaseMediaPlayer$STATE;

    const-string v1, "PAUSE"

    invoke-direct {v0, v1, v4}, Lcom/youku/player/BaseMediaPlayer$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/player/BaseMediaPlayer$STATE;->PAUSE:Lcom/youku/player/BaseMediaPlayer$STATE;

    new-instance v0, Lcom/youku/player/BaseMediaPlayer$STATE;

    const-string v1, "PREPARE"

    invoke-direct {v0, v1, v5}, Lcom/youku/player/BaseMediaPlayer$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/player/BaseMediaPlayer$STATE;->PREPARE:Lcom/youku/player/BaseMediaPlayer$STATE;

    new-instance v0, Lcom/youku/player/BaseMediaPlayer$STATE;

    const-string v1, "PREPARED"

    invoke-direct {v0, v1, v6}, Lcom/youku/player/BaseMediaPlayer$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/player/BaseMediaPlayer$STATE;->PREPARED:Lcom/youku/player/BaseMediaPlayer$STATE;

    new-instance v0, Lcom/youku/player/BaseMediaPlayer$STATE;

    const-string v1, "SEEK_TO"

    invoke-direct {v0, v1, v7}, Lcom/youku/player/BaseMediaPlayer$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/player/BaseMediaPlayer$STATE;->SEEK_TO:Lcom/youku/player/BaseMediaPlayer$STATE;

    new-instance v0, Lcom/youku/player/BaseMediaPlayer$STATE;

    const-string v1, "IDLE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/youku/player/BaseMediaPlayer$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/player/BaseMediaPlayer$STATE;->IDLE:Lcom/youku/player/BaseMediaPlayer$STATE;

    .line 65
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/youku/player/BaseMediaPlayer$STATE;

    sget-object v1, Lcom/youku/player/BaseMediaPlayer$STATE;->PLAY:Lcom/youku/player/BaseMediaPlayer$STATE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/youku/player/BaseMediaPlayer$STATE;->PAUSE:Lcom/youku/player/BaseMediaPlayer$STATE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/youku/player/BaseMediaPlayer$STATE;->PREPARE:Lcom/youku/player/BaseMediaPlayer$STATE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/youku/player/BaseMediaPlayer$STATE;->PREPARED:Lcom/youku/player/BaseMediaPlayer$STATE;

    aput-object v1, v0, v6

    sget-object v1, Lcom/youku/player/BaseMediaPlayer$STATE;->SEEK_TO:Lcom/youku/player/BaseMediaPlayer$STATE;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/youku/player/BaseMediaPlayer$STATE;->IDLE:Lcom/youku/player/BaseMediaPlayer$STATE;

    aput-object v2, v0, v1

    sput-object v0, Lcom/youku/player/BaseMediaPlayer$STATE;->$VALUES:[Lcom/youku/player/BaseMediaPlayer$STATE;

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
    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/youku/player/BaseMediaPlayer$STATE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 65
    const-class v0, Lcom/youku/player/BaseMediaPlayer$STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/youku/player/BaseMediaPlayer$STATE;

    return-object v0
.end method

.method public static values()[Lcom/youku/player/BaseMediaPlayer$STATE;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/youku/player/BaseMediaPlayer$STATE;->$VALUES:[Lcom/youku/player/BaseMediaPlayer$STATE;

    invoke-virtual {v0}, [Lcom/youku/player/BaseMediaPlayer$STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/youku/player/BaseMediaPlayer$STATE;

    return-object v0
.end method
