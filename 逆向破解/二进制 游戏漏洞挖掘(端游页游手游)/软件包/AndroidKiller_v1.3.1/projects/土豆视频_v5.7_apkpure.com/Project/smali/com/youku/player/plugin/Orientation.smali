.class public final enum Lcom/youku/player/plugin/Orientation;
.super Ljava/lang/Enum;
.source "Orientation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/youku/player/plugin/Orientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/youku/player/plugin/Orientation;

.field public static final enum LAND:Lcom/youku/player/plugin/Orientation;

.field public static final enum VERTICAL:Lcom/youku/player/plugin/Orientation;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3
    new-instance v0, Lcom/youku/player/plugin/Orientation;

    const-string v1, "LAND"

    invoke-direct {v0, v1, v2}, Lcom/youku/player/plugin/Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/player/plugin/Orientation;->LAND:Lcom/youku/player/plugin/Orientation;

    new-instance v0, Lcom/youku/player/plugin/Orientation;

    const-string v1, "VERTICAL"

    invoke-direct {v0, v1, v3}, Lcom/youku/player/plugin/Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/player/plugin/Orientation;->VERTICAL:Lcom/youku/player/plugin/Orientation;

    .line 2
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/youku/player/plugin/Orientation;

    sget-object v1, Lcom/youku/player/plugin/Orientation;->LAND:Lcom/youku/player/plugin/Orientation;

    aput-object v1, v0, v2

    sget-object v1, Lcom/youku/player/plugin/Orientation;->VERTICAL:Lcom/youku/player/plugin/Orientation;

    aput-object v1, v0, v3

    sput-object v0, Lcom/youku/player/plugin/Orientation;->$VALUES:[Lcom/youku/player/plugin/Orientation;

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
    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/youku/player/plugin/Orientation;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 2
    const-class v0, Lcom/youku/player/plugin/Orientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/youku/player/plugin/Orientation;

    return-object v0
.end method

.method public static values()[Lcom/youku/player/plugin/Orientation;
    .locals 1

    .prologue
    .line 2
    sget-object v0, Lcom/youku/player/plugin/Orientation;->$VALUES:[Lcom/youku/player/plugin/Orientation;

    invoke-virtual {v0}, [Lcom/youku/player/plugin/Orientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/youku/player/plugin/Orientation;

    return-object v0
.end method
