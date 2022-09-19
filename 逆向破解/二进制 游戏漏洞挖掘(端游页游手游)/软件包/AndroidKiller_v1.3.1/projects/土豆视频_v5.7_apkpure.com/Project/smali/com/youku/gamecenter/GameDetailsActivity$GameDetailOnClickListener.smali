.class Lcom/youku/gamecenter/GameDetailsActivity$GameDetailOnClickListener;
.super Ljava/lang/Object;
.source "GameDetailsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/gamecenter/GameDetailsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GameDetailOnClickListener"
.end annotation


# instance fields
.field private mGameInfo:Lcom/youku/gamecenter/data/GameInfo;

.field final synthetic this$0:Lcom/youku/gamecenter/GameDetailsActivity;


# direct methods
.method public constructor <init>(Lcom/youku/gamecenter/GameDetailsActivity;Lcom/youku/gamecenter/data/GameInfo;)V
    .locals 0
    .param p2, "game"    # Lcom/youku/gamecenter/data/GameInfo;

    .prologue
    .line 1705
    iput-object p1, p0, Lcom/youku/gamecenter/GameDetailsActivity$GameDetailOnClickListener;->this$0:Lcom/youku/gamecenter/GameDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1706
    iput-object p2, p0, Lcom/youku/gamecenter/GameDetailsActivity$GameDetailOnClickListener;->mGameInfo:Lcom/youku/gamecenter/data/GameInfo;

    .line 1707
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1711
    iget-object v0, p0, Lcom/youku/gamecenter/GameDetailsActivity$GameDetailOnClickListener;->this$0:Lcom/youku/gamecenter/GameDetailsActivity;

    iget-object v1, p0, Lcom/youku/gamecenter/GameDetailsActivity$GameDetailOnClickListener;->mGameInfo:Lcom/youku/gamecenter/data/GameInfo;

    iget-object v1, v1, Lcom/youku/gamecenter/data/GameInfo;->id:Ljava/lang/String;

    const-string v2, "37"

    invoke-static {v0, v1, v2}, Lcom/youku/gamecenter/util/AppClickActionUtils;->launchGameDetailsActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1714
    return-void
.end method
