.class Lcom/youku/gamecenter/GameDetailsActivity$DownloadListener;
.super Ljava/lang/Object;
.source "GameDetailsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/gamecenter/GameDetailsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DownloadListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/gamecenter/GameDetailsActivity;


# direct methods
.method constructor <init>(Lcom/youku/gamecenter/GameDetailsActivity;)V
    .locals 0

    .prologue
    .line 1379
    iput-object p1, p0, Lcom/youku/gamecenter/GameDetailsActivity$DownloadListener;->this$0:Lcom/youku/gamecenter/GameDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 1384
    iget-object v0, p0, Lcom/youku/gamecenter/GameDetailsActivity$DownloadListener;->this$0:Lcom/youku/gamecenter/GameDetailsActivity;

    invoke-static {v0}, Lcom/youku/gamecenter/GameDetailsActivity;->access$800(Lcom/youku/gamecenter/GameDetailsActivity;)Lcom/youku/gamecenter/data/GameInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    sget-object v1, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_INSTALLED:Lcom/youku/gamecenter/data/GameInfoStatus;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/youku/gamecenter/GameDetailsActivity$DownloadListener;->this$0:Lcom/youku/gamecenter/GameDetailsActivity;

    invoke-static {v0}, Lcom/youku/gamecenter/GameDetailsActivity;->access$1000(Lcom/youku/gamecenter/GameDetailsActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "36"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1386
    iget-object v0, p0, Lcom/youku/gamecenter/GameDetailsActivity$DownloadListener;->this$0:Lcom/youku/gamecenter/GameDetailsActivity;

    invoke-virtual {v0}, Lcom/youku/gamecenter/GameDetailsActivity;->finish()V

    .line 1392
    :goto_0
    return-void

    .line 1390
    :cond_0
    iget-object v0, p0, Lcom/youku/gamecenter/GameDetailsActivity$DownloadListener;->this$0:Lcom/youku/gamecenter/GameDetailsActivity;

    iget-object v1, p0, Lcom/youku/gamecenter/GameDetailsActivity$DownloadListener;->this$0:Lcom/youku/gamecenter/GameDetailsActivity;

    invoke-static {v1}, Lcom/youku/gamecenter/GameDetailsActivity;->access$800(Lcom/youku/gamecenter/GameDetailsActivity;)Lcom/youku/gamecenter/data/GameInfo;

    move-result-object v1

    const-string v2, "1"

    const-string v4, ""

    move v5, v3

    invoke-static/range {v0 .. v5}, Lcom/youku/gamecenter/util/ClickActionUtils;->handleGameAction(Landroid/content/Context;Lcom/youku/gamecenter/data/GameInfo;Ljava/lang/String;ILjava/lang/String;Z)V

    goto :goto_0
.end method
