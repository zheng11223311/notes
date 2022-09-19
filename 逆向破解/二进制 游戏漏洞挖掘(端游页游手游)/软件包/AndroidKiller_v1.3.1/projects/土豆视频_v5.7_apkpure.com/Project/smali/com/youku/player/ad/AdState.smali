.class public final enum Lcom/youku/player/ad/AdState;
.super Ljava/lang/Enum;
.source "AdState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/youku/player/ad/AdState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/youku/player/ad/AdState;

.field public static final enum COMPLETE:Lcom/youku/player/ad/AdState;

.field public static final enum FULLAD:Lcom/youku/player/ad/AdState;

.field public static final enum INITIALIZE:Lcom/youku/player/ad/AdState;

.field public static final enum MIDAD:Lcom/youku/player/ad/AdState;

.field public static final enum PREAD:Lcom/youku/player/ad/AdState;

.field public static final enum REALVIDEO:Lcom/youku/player/ad/AdState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4
    new-instance v0, Lcom/youku/player/ad/AdState;

    const-string v1, "INITIALIZE"

    invoke-direct {v0, v1, v3}, Lcom/youku/player/ad/AdState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/player/ad/AdState;->INITIALIZE:Lcom/youku/player/ad/AdState;

    new-instance v0, Lcom/youku/player/ad/AdState;

    const-string v1, "PREAD"

    invoke-direct {v0, v1, v4}, Lcom/youku/player/ad/AdState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/player/ad/AdState;->PREAD:Lcom/youku/player/ad/AdState;

    new-instance v0, Lcom/youku/player/ad/AdState;

    const-string v1, "FULLAD"

    invoke-direct {v0, v1, v5}, Lcom/youku/player/ad/AdState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/player/ad/AdState;->FULLAD:Lcom/youku/player/ad/AdState;

    new-instance v0, Lcom/youku/player/ad/AdState;

    const-string v1, "MIDAD"

    invoke-direct {v0, v1, v6}, Lcom/youku/player/ad/AdState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/player/ad/AdState;->MIDAD:Lcom/youku/player/ad/AdState;

    new-instance v0, Lcom/youku/player/ad/AdState;

    const-string v1, "REALVIDEO"

    invoke-direct {v0, v1, v7}, Lcom/youku/player/ad/AdState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/player/ad/AdState;->REALVIDEO:Lcom/youku/player/ad/AdState;

    new-instance v0, Lcom/youku/player/ad/AdState;

    const-string v1, "COMPLETE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/youku/player/ad/AdState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/player/ad/AdState;->COMPLETE:Lcom/youku/player/ad/AdState;

    .line 3
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/youku/player/ad/AdState;

    sget-object v1, Lcom/youku/player/ad/AdState;->INITIALIZE:Lcom/youku/player/ad/AdState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/youku/player/ad/AdState;->PREAD:Lcom/youku/player/ad/AdState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/youku/player/ad/AdState;->FULLAD:Lcom/youku/player/ad/AdState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/youku/player/ad/AdState;->MIDAD:Lcom/youku/player/ad/AdState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/youku/player/ad/AdState;->REALVIDEO:Lcom/youku/player/ad/AdState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/youku/player/ad/AdState;->COMPLETE:Lcom/youku/player/ad/AdState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/youku/player/ad/AdState;->$VALUES:[Lcom/youku/player/ad/AdState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/youku/player/ad/AdState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/youku/player/ad/AdState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/youku/player/ad/AdState;

    return-object v0
.end method

.method public static values()[Lcom/youku/player/ad/AdState;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/youku/player/ad/AdState;->$VALUES:[Lcom/youku/player/ad/AdState;

    invoke-virtual {v0}, [Lcom/youku/player/ad/AdState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/youku/player/ad/AdState;

    return-object v0
.end method
