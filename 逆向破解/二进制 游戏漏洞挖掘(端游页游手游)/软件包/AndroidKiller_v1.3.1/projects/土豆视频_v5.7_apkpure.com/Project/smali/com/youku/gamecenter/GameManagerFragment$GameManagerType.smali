.class public final enum Lcom/youku/gamecenter/GameManagerFragment$GameManagerType;
.super Ljava/lang/Enum;
.source "GameManagerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/gamecenter/GameManagerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GameManagerType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/youku/gamecenter/GameManagerFragment$GameManagerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/youku/gamecenter/GameManagerFragment$GameManagerType;

.field public static final enum TYPE_INSTALLED:Lcom/youku/gamecenter/GameManagerFragment$GameManagerType;

.field public static final enum TYPE_UNINSTALLED:Lcom/youku/gamecenter/GameManagerFragment$GameManagerType;

.field public static final enum TYPE_UNKNOW:Lcom/youku/gamecenter/GameManagerFragment$GameManagerType;

.field public static final enum TYPE_UPGRADE:Lcom/youku/gamecenter/GameManagerFragment$GameManagerType;


# instance fields
.field public emptyTextResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 61
    new-instance v0, Lcom/youku/gamecenter/GameManagerFragment$GameManagerType;

    const-string v1, "TYPE_INSTALLED"

    sget v2, Lcom/youku/gamecenter/R$string;->game_manager_installed_no_game:I

    invoke-direct {v0, v1, v3, v2}, Lcom/youku/gamecenter/GameManagerFragment$GameManagerType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/youku/gamecenter/GameManagerFragment$GameManagerType;->TYPE_INSTALLED:Lcom/youku/gamecenter/GameManagerFragment$GameManagerType;

    .line 64
    new-instance v0, Lcom/youku/gamecenter/GameManagerFragment$GameManagerType;

    const-string v1, "TYPE_UNINSTALLED"

    sget v2, Lcom/youku/gamecenter/R$string;->game_manager_downloading_no_game:I

    invoke-direct {v0, v1, v4, v2}, Lcom/youku/gamecenter/GameManagerFragment$GameManagerType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/youku/gamecenter/GameManagerFragment$GameManagerType;->TYPE_UNINSTALLED:Lcom/youku/gamecenter/GameManagerFragment$GameManagerType;

    .line 67
    new-instance v0, Lcom/youku/gamecenter/GameManagerFragment$GameManagerType;

    const-string v1, "TYPE_UPGRADE"

    sget v2, Lcom/youku/gamecenter/R$string;->game_manager_update_no_game:I

    invoke-direct {v0, v1, v5, v2}, Lcom/youku/gamecenter/GameManagerFragment$GameManagerType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/youku/gamecenter/GameManagerFragment$GameManagerType;->TYPE_UPGRADE:Lcom/youku/gamecenter/GameManagerFragment$GameManagerType;

    .line 70
    new-instance v0, Lcom/youku/gamecenter/GameManagerFragment$GameManagerType;

    const-string v1, "TYPE_UNKNOW"

    sget v2, Lcom/youku/gamecenter/R$string;->game_manager_list_empty:I

    invoke-direct {v0, v1, v6, v2}, Lcom/youku/gamecenter/GameManagerFragment$GameManagerType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/youku/gamecenter/GameManagerFragment$GameManagerType;->TYPE_UNKNOW:Lcom/youku/gamecenter/GameManagerFragment$GameManagerType;

    .line 58
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/youku/gamecenter/GameManagerFragment$GameManagerType;

    sget-object v1, Lcom/youku/gamecenter/GameManagerFragment$GameManagerType;->TYPE_INSTALLED:Lcom/youku/gamecenter/GameManagerFragment$GameManagerType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/youku/gamecenter/GameManagerFragment$GameManagerType;->TYPE_UNINSTALLED:Lcom/youku/gamecenter/GameManagerFragment$GameManagerType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/youku/gamecenter/GameManagerFragment$GameManagerType;->TYPE_UPGRADE:Lcom/youku/gamecenter/GameManagerFragment$GameManagerType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/youku/gamecenter/GameManagerFragment$GameManagerType;->TYPE_UNKNOW:Lcom/youku/gamecenter/GameManagerFragment$GameManagerType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/youku/gamecenter/GameManagerFragment$GameManagerType;->$VALUES:[Lcom/youku/gamecenter/GameManagerFragment$GameManagerType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "emptyTextResId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 75
    iput p3, p0, Lcom/youku/gamecenter/GameManagerFragment$GameManagerType;->emptyTextResId:I

    .line 76
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/youku/gamecenter/GameManagerFragment$GameManagerType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 58
    const-class v0, Lcom/youku/gamecenter/GameManagerFragment$GameManagerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/youku/gamecenter/GameManagerFragment$GameManagerType;

    return-object v0
.end method

.method public static values()[Lcom/youku/gamecenter/GameManagerFragment$GameManagerType;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/youku/gamecenter/GameManagerFragment$GameManagerType;->$VALUES:[Lcom/youku/gamecenter/GameManagerFragment$GameManagerType;

    invoke-virtual {v0}, [Lcom/youku/gamecenter/GameManagerFragment$GameManagerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/youku/gamecenter/GameManagerFragment$GameManagerType;

    return-object v0
.end method
