.class public final enum Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;
.super Ljava/lang/Enum;
.source "FullScreenRightPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PageState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;

.field public static final enum ANNO:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;

.field public static final enum GOODS:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;

.field public static final enum MORE:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;

.field public static final enum PLAYLIST:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;

.field public static final enum POINT:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;

.field public static final enum QUALITY:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;

.field public static final enum VOTE:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 24
    new-instance v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;

    const-string v1, "GOODS"

    invoke-direct {v0, v1, v3}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;->GOODS:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;

    new-instance v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;

    const-string v1, "POINT"

    invoke-direct {v0, v1, v4}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;->POINT:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;

    new-instance v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;

    const-string v1, "ANNO"

    invoke-direct {v0, v1, v5}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;->ANNO:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;

    new-instance v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;

    const-string v1, "PLAYLIST"

    invoke-direct {v0, v1, v6}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;->PLAYLIST:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;

    new-instance v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;

    const-string v1, "MORE"

    invoke-direct {v0, v1, v7}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;->MORE:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;

    new-instance v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;

    const-string v1, "VOTE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;->VOTE:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;

    new-instance v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;

    const-string v1, "QUALITY"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;->QUALITY:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;

    .line 23
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;

    sget-object v1, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;->GOODS:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;->POINT:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;->ANNO:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;->PLAYLIST:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;->MORE:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;->VOTE:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;->QUALITY:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;->$VALUES:[Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;

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
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 23
    const-class v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;

    return-object v0
.end method

.method public static values()[Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;->$VALUES:[Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;

    invoke-virtual {v0}, [Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/youku/phone/detail/plugin/fullscreen/FullScreenRightPanel$PageState;

    return-object v0
.end method
