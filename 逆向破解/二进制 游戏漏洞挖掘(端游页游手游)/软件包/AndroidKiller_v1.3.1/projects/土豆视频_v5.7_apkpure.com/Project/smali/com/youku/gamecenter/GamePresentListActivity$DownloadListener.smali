.class Lcom/youku/gamecenter/GamePresentListActivity$DownloadListener;
.super Ljava/lang/Object;
.source "GamePresentListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/gamecenter/GamePresentListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DownloadListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/gamecenter/GamePresentListActivity;


# direct methods
.method constructor <init>(Lcom/youku/gamecenter/GamePresentListActivity;)V
    .locals 0

    .prologue
    .line 482
    iput-object p1, p0, Lcom/youku/gamecenter/GamePresentListActivity$DownloadListener;->this$0:Lcom/youku/gamecenter/GamePresentListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 487
    iget-object v0, p0, Lcom/youku/gamecenter/GamePresentListActivity$DownloadListener;->this$0:Lcom/youku/gamecenter/GamePresentListActivity;

    invoke-static {v0}, Lcom/youku/gamecenter/GamePresentListActivity;->access$300(Lcom/youku/gamecenter/GamePresentListActivity;)Lcom/youku/gamecenter/data/GameInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/youku/gamecenter/data/GameInfo;->status:Lcom/youku/gamecenter/data/GameInfoStatus;

    sget-object v1, Lcom/youku/gamecenter/data/GameInfoStatus;->STATUS_INSTALLED:Lcom/youku/gamecenter/data/GameInfoStatus;

    if-ne v0, v1, :cond_1

    .line 488
    iget-object v0, p0, Lcom/youku/gamecenter/GamePresentListActivity$DownloadListener;->this$0:Lcom/youku/gamecenter/GamePresentListActivity;

    invoke-static {v0}, Lcom/youku/gamecenter/GamePresentListActivity;->access$400(Lcom/youku/gamecenter/GamePresentListActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/youku/gamecenter/GamePresentListActivity$DownloadListener;->this$0:Lcom/youku/gamecenter/GamePresentListActivity;

    invoke-virtual {v0}, Lcom/youku/gamecenter/GamePresentListActivity;->finish()V

    .line 499
    :goto_0
    return-void

    .line 492
    :cond_0
    iget-object v0, p0, Lcom/youku/gamecenter/GamePresentListActivity$DownloadListener;->this$0:Lcom/youku/gamecenter/GamePresentListActivity;

    invoke-static {v0}, Lcom/youku/gamecenter/GamePresentListActivity;->access$500(Lcom/youku/gamecenter/GamePresentListActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/gamecenter/GamePresentListActivity$DownloadListener;->this$0:Lcom/youku/gamecenter/GamePresentListActivity;

    invoke-static {v1}, Lcom/youku/gamecenter/GamePresentListActivity;->access$300(Lcom/youku/gamecenter/GamePresentListActivity;)Lcom/youku/gamecenter/data/GameInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/youku/gamecenter/data/GameInfo;->packagename:Ljava/lang/String;

    iget-object v2, p0, Lcom/youku/gamecenter/GamePresentListActivity$DownloadListener;->this$0:Lcom/youku/gamecenter/GamePresentListActivity;

    invoke-static {v2}, Lcom/youku/gamecenter/GamePresentListActivity;->access$300(Lcom/youku/gamecenter/GamePresentListActivity;)Lcom/youku/gamecenter/data/GameInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/youku/gamecenter/data/GameInfo;->appname:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/youku/gamecenter/util/AppClickActionUtils;->handleLaunchApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 497
    :cond_1
    iget-object v0, p0, Lcom/youku/gamecenter/GamePresentListActivity$DownloadListener;->this$0:Lcom/youku/gamecenter/GamePresentListActivity;

    invoke-static {v0}, Lcom/youku/gamecenter/GamePresentListActivity;->access$500(Lcom/youku/gamecenter/GamePresentListActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/gamecenter/GamePresentListActivity$DownloadListener;->this$0:Lcom/youku/gamecenter/GamePresentListActivity;

    invoke-static {v1}, Lcom/youku/gamecenter/GamePresentListActivity;->access$300(Lcom/youku/gamecenter/GamePresentListActivity;)Lcom/youku/gamecenter/data/GameInfo;

    move-result-object v1

    const-string v2, "1"

    const-string v4, ""

    move v5, v3

    invoke-static/range {v0 .. v5}, Lcom/youku/gamecenter/util/ClickActionUtils;->handleGameAction(Landroid/content/Context;Lcom/youku/gamecenter/data/GameInfo;Ljava/lang/String;ILjava/lang/String;Z)V

    goto :goto_0
.end method
