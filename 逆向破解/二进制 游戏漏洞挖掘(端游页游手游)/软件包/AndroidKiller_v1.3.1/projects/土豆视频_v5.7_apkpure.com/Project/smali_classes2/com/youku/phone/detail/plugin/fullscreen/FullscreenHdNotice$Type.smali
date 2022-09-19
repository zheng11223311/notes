.class public final enum Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$Type;
.super Ljava/lang/Enum;
.source "FullscreenHdNotice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$Type;

.field public static final enum ANNO:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$Type;

.field public static final enum VOTE:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 49
    new-instance v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$Type;

    const-string v1, "ANNO"

    invoke-direct {v0, v1, v2}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$Type;->ANNO:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$Type;

    new-instance v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$Type;

    const-string v1, "VOTE"

    invoke-direct {v0, v1, v3}, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$Type;->VOTE:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$Type;

    .line 48
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$Type;

    sget-object v1, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$Type;->ANNO:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$Type;->VOTE:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$Type;

    aput-object v1, v0, v3

    sput-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$Type;->$VALUES:[Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$Type;

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
    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 48
    const-class v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$Type;

    return-object v0
.end method

.method public static values()[Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$Type;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$Type;->$VALUES:[Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$Type;

    invoke-virtual {v0}, [Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/youku/phone/detail/plugin/fullscreen/FullscreenHdNotice$Type;

    return-object v0
.end method
