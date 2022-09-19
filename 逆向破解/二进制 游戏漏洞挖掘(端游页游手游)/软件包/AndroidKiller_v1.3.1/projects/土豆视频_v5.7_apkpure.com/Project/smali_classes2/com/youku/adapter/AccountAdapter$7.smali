.class Lcom/youku/adapter/AccountAdapter$7;
.super Ljava/lang/Object;
.source "AccountAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/adapter/AccountAdapter;->setCacheVideoOnClickListener(Landroid/view/View;Lcom/tudou/service/download/DownloadInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/adapter/AccountAdapter;

.field final synthetic val$downloadInfo:Lcom/tudou/service/download/DownloadInfo;


# direct methods
.method constructor <init>(Lcom/youku/adapter/AccountAdapter;Lcom/tudou/service/download/DownloadInfo;)V
    .locals 0

    .prologue
    .line 556
    iput-object p1, p0, Lcom/youku/adapter/AccountAdapter$7;->this$0:Lcom/youku/adapter/AccountAdapter;

    iput-object p2, p0, Lcom/youku/adapter/AccountAdapter$7;->val$downloadInfo:Lcom/tudou/service/download/DownloadInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 559
    const-string v0, "account_click_key"

    const-wide/16 v2, 0x12c

    invoke-static {v0, v2, v3}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 563
    :goto_0
    return-void

    .line 562
    :cond_0
    iget-object v0, p0, Lcom/youku/adapter/AccountAdapter$7;->this$0:Lcom/youku/adapter/AccountAdapter;

    iget-object v1, p0, Lcom/youku/adapter/AccountAdapter$7;->val$downloadInfo:Lcom/tudou/service/download/DownloadInfo;

    invoke-static {v0, v1}, Lcom/youku/adapter/AccountAdapter;->access$300(Lcom/youku/adapter/AccountAdapter;Lcom/tudou/service/download/DownloadInfo;)V

    goto :goto_0
.end method
