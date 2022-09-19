.class public final enum Lcom/youku/player/Track$TrackAdType;
.super Ljava/lang/Enum;
.source "Track.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/player/Track;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TrackAdType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/youku/player/Track$TrackAdType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/youku/player/Track$TrackAdType;

.field public static final enum EMPTY:Lcom/youku/player/Track$TrackAdType;

.field public static final enum OTHERS:Lcom/youku/player/Track$TrackAdType;

.field public static final enum PICTURE:Lcom/youku/player/Track$TrackAdType;

.field public static final enum TRUE_VIEW:Lcom/youku/player/Track$TrackAdType;

.field public static final enum VIDEO:Lcom/youku/player/Track$TrackAdType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1848
    new-instance v0, Lcom/youku/player/Track$TrackAdType;

    const-string v1, "VIDEO"

    invoke-direct {v0, v1, v2}, Lcom/youku/player/Track$TrackAdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/player/Track$TrackAdType;->VIDEO:Lcom/youku/player/Track$TrackAdType;

    new-instance v0, Lcom/youku/player/Track$TrackAdType;

    const-string v1, "PICTURE"

    invoke-direct {v0, v1, v3}, Lcom/youku/player/Track$TrackAdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/player/Track$TrackAdType;->PICTURE:Lcom/youku/player/Track$TrackAdType;

    new-instance v0, Lcom/youku/player/Track$TrackAdType;

    const-string v1, "EMPTY"

    invoke-direct {v0, v1, v4}, Lcom/youku/player/Track$TrackAdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/player/Track$TrackAdType;->EMPTY:Lcom/youku/player/Track$TrackAdType;

    new-instance v0, Lcom/youku/player/Track$TrackAdType;

    const-string v1, "OTHERS"

    invoke-direct {v0, v1, v5}, Lcom/youku/player/Track$TrackAdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/player/Track$TrackAdType;->OTHERS:Lcom/youku/player/Track$TrackAdType;

    new-instance v0, Lcom/youku/player/Track$TrackAdType;

    const-string v1, "TRUE_VIEW"

    invoke-direct {v0, v1, v6}, Lcom/youku/player/Track$TrackAdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/player/Track$TrackAdType;->TRUE_VIEW:Lcom/youku/player/Track$TrackAdType;

    .line 1847
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/youku/player/Track$TrackAdType;

    sget-object v1, Lcom/youku/player/Track$TrackAdType;->VIDEO:Lcom/youku/player/Track$TrackAdType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/youku/player/Track$TrackAdType;->PICTURE:Lcom/youku/player/Track$TrackAdType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/youku/player/Track$TrackAdType;->EMPTY:Lcom/youku/player/Track$TrackAdType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/youku/player/Track$TrackAdType;->OTHERS:Lcom/youku/player/Track$TrackAdType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/youku/player/Track$TrackAdType;->TRUE_VIEW:Lcom/youku/player/Track$TrackAdType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/youku/player/Track$TrackAdType;->$VALUES:[Lcom/youku/player/Track$TrackAdType;

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
    .line 1847
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/youku/player/Track$TrackAdType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1847
    const-class v0, Lcom/youku/player/Track$TrackAdType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/youku/player/Track$TrackAdType;

    return-object v0
.end method

.method public static values()[Lcom/youku/player/Track$TrackAdType;
    .locals 1

    .prologue
    .line 1847
    sget-object v0, Lcom/youku/player/Track$TrackAdType;->$VALUES:[Lcom/youku/player/Track$TrackAdType;

    invoke-virtual {v0}, [Lcom/youku/player/Track$TrackAdType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/youku/player/Track$TrackAdType;

    return-object v0
.end method
