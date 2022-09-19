.class final enum Lcom/youku/player/plugin/PluginPayTip$TipState;
.super Ljava/lang/Enum;
.source "PluginPayTip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/player/plugin/PluginPayTip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "TipState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/youku/player/plugin/PluginPayTip$TipState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/youku/player/plugin/PluginPayTip$TipState;

.field public static final enum CLOSED:Lcom/youku/player/plugin/PluginPayTip$TipState;

.field public static final enum SHOW_FULL:Lcom/youku/player/plugin/PluginPayTip$TipState;

.field public static final enum SHOW_SIMPLE:Lcom/youku/player/plugin/PluginPayTip$TipState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 443
    new-instance v0, Lcom/youku/player/plugin/PluginPayTip$TipState;

    const-string v1, "SHOW_FULL"

    invoke-direct {v0, v1, v2}, Lcom/youku/player/plugin/PluginPayTip$TipState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/player/plugin/PluginPayTip$TipState;->SHOW_FULL:Lcom/youku/player/plugin/PluginPayTip$TipState;

    new-instance v0, Lcom/youku/player/plugin/PluginPayTip$TipState;

    const-string v1, "SHOW_SIMPLE"

    invoke-direct {v0, v1, v3}, Lcom/youku/player/plugin/PluginPayTip$TipState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/player/plugin/PluginPayTip$TipState;->SHOW_SIMPLE:Lcom/youku/player/plugin/PluginPayTip$TipState;

    new-instance v0, Lcom/youku/player/plugin/PluginPayTip$TipState;

    const-string v1, "CLOSED"

    invoke-direct {v0, v1, v4}, Lcom/youku/player/plugin/PluginPayTip$TipState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/player/plugin/PluginPayTip$TipState;->CLOSED:Lcom/youku/player/plugin/PluginPayTip$TipState;

    .line 442
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/youku/player/plugin/PluginPayTip$TipState;

    sget-object v1, Lcom/youku/player/plugin/PluginPayTip$TipState;->SHOW_FULL:Lcom/youku/player/plugin/PluginPayTip$TipState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/youku/player/plugin/PluginPayTip$TipState;->SHOW_SIMPLE:Lcom/youku/player/plugin/PluginPayTip$TipState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/youku/player/plugin/PluginPayTip$TipState;->CLOSED:Lcom/youku/player/plugin/PluginPayTip$TipState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/youku/player/plugin/PluginPayTip$TipState;->$VALUES:[Lcom/youku/player/plugin/PluginPayTip$TipState;

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
    .line 442
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/youku/player/plugin/PluginPayTip$TipState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 442
    const-class v0, Lcom/youku/player/plugin/PluginPayTip$TipState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/youku/player/plugin/PluginPayTip$TipState;

    return-object v0
.end method

.method public static values()[Lcom/youku/player/plugin/PluginPayTip$TipState;
    .locals 1

    .prologue
    .line 442
    sget-object v0, Lcom/youku/player/plugin/PluginPayTip$TipState;->$VALUES:[Lcom/youku/player/plugin/PluginPayTip$TipState;

    invoke-virtual {v0}, [Lcom/youku/player/plugin/PluginPayTip$TipState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/youku/player/plugin/PluginPayTip$TipState;

    return-object v0
.end method
