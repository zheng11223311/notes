.class public final enum Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;
.super Ljava/lang/Enum;
.source "FullscreenHotseatItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;

.field public static final enum ANNO:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;

.field public static final enum EXPAND:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;

.field public static final enum GOODS:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;

.field public static final enum POINT:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;

.field public static final enum SCREENSHOT:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;

.field public static final enum VIDEO_RECORD:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;

.field public static final enum VOTE:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;


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
    new-instance v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;

    const-string v1, "EXPAND"

    invoke-direct {v0, v1, v3}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;->EXPAND:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;

    new-instance v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;

    const-string v1, "ANNO"

    invoke-direct {v0, v1, v4}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;->ANNO:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;

    new-instance v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;

    const-string v1, "VOTE"

    invoke-direct {v0, v1, v5}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;->VOTE:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;

    new-instance v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;

    const-string v1, "POINT"

    invoke-direct {v0, v1, v6}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;->POINT:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;

    new-instance v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;

    const-string v1, "GOODS"

    invoke-direct {v0, v1, v7}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;->GOODS:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;

    new-instance v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;

    const-string v1, "SCREENSHOT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;->SCREENSHOT:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;

    new-instance v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;

    const-string v1, "VIDEO_RECORD"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;->VIDEO_RECORD:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;

    .line 65
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;

    sget-object v1, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;->EXPAND:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;->ANNO:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;->VOTE:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;->POINT:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;->GOODS:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;->SCREENSHOT:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;->VIDEO_RECORD:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;

    aput-object v2, v0, v1

    sput-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;->$VALUES:[Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;

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

.method public static valueOf(Ljava/lang/String;)Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 65
    const-class v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;

    return-object v0
.end method

.method public static values()[Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;->$VALUES:[Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;

    invoke-virtual {v0}, [Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHotseatItem$Type;

    return-object v0
.end method
