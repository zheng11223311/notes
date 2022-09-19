.class Lcom/tudou/ui/activity/CachingListActivity$28;
.super Ljava/lang/Object;
.source "CachingListActivity.java"

# interfaces
.implements Lcom/tudou/service/download/OnChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/activity/CachingListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/activity/CachingListActivity;


# direct methods
.method constructor <init>(Lcom/tudou/ui/activity/CachingListActivity;)V
    .locals 0

    .prologue
    .line 893
    iput-object p1, p0, Lcom/tudou/ui/activity/CachingListActivity$28;->this$0:Lcom/tudou/ui/activity/CachingListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/tudou/service/download/DownloadInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/tudou/service/download/DownloadInfo;

    .prologue
    .line 902
    iget-object v0, p0, Lcom/tudou/ui/activity/CachingListActivity$28;->this$0:Lcom/tudou/ui/activity/CachingListActivity;

    invoke-virtual {v0}, Lcom/tudou/ui/activity/CachingListActivity;->getEditable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 903
    iget-object v0, p0, Lcom/tudou/ui/activity/CachingListActivity$28;->this$0:Lcom/tudou/ui/activity/CachingListActivity;

    invoke-virtual {v0, p1}, Lcom/tudou/ui/activity/CachingListActivity;->setUpdate(Lcom/tudou/service/download/DownloadInfo;)V

    .line 905
    :cond_0
    return-void
.end method

.method public onFinish(Lcom/tudou/service/download/DownloadInfo;)V
    .locals 0
    .param p1, "info"    # Lcom/tudou/service/download/DownloadInfo;

    .prologue
    .line 898
    return-void
.end method
