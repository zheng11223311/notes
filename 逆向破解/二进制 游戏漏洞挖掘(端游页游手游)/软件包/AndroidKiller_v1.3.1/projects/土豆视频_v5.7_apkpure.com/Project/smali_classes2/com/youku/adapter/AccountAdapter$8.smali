.class Lcom/youku/adapter/AccountAdapter$8;
.super Ljava/lang/Object;
.source "AccountAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/adapter/AccountAdapter;->setAlbumOnClickListener(Landroid/view/View;Landroid/view/View;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/adapter/AccountAdapter;

.field final synthetic val$point:Landroid/view/View;

.field final synthetic val$showId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/youku/adapter/AccountAdapter;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 609
    iput-object p1, p0, Lcom/youku/adapter/AccountAdapter$8;->this$0:Lcom/youku/adapter/AccountAdapter;

    iput-object p2, p0, Lcom/youku/adapter/AccountAdapter$8;->val$showId:Ljava/lang/String;

    iput-object p3, p0, Lcom/youku/adapter/AccountAdapter$8;->val$point:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 612
    const-string v2, "account_click_key"

    const-wide/16 v4, 0x12c

    invoke-static {v2, v4, v5}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 622
    :goto_0
    return-void

    .line 615
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 616
    .local v0, "mIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/youku/adapter/AccountAdapter$8;->this$0:Lcom/youku/adapter/AccountAdapter;

    invoke-static {v2}, Lcom/youku/adapter/AccountAdapter;->access$200(Lcom/youku/adapter/AccountAdapter;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/tudou/ui/activity/CacheFolderActivity;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 617
    const-string v2, "showId"

    iget-object v3, p0, Lcom/youku/adapter/AccountAdapter$8;->val$showId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 618
    iget-object v2, p0, Lcom/youku/adapter/AccountAdapter$8;->this$0:Lcom/youku/adapter/AccountAdapter;

    invoke-static {v2}, Lcom/youku/adapter/AccountAdapter;->access$200(Lcom/youku/adapter/AccountAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 619
    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->getInstance()Lcom/tudou/service/download/DownloadManager;

    move-result-object v1

    .line 620
    .local v1, "manager":Lcom/tudou/service/download/DownloadManager;
    iget-object v2, p0, Lcom/youku/adapter/AccountAdapter$8;->val$showId:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/tudou/service/download/DownloadManager;->putAlbumOpenedInfo(Ljava/lang/String;Z)V

    .line 621
    iget-object v2, p0, Lcom/youku/adapter/AccountAdapter$8;->val$point:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
