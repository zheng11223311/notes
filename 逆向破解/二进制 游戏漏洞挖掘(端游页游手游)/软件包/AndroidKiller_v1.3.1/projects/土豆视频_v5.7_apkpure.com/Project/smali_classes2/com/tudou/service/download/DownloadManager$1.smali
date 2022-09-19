.class Lcom/tudou/service/download/DownloadManager$1;
.super Lcom/tudou/service/download/ICallback$Stub;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/service/download/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/service/download/DownloadManager;


# direct methods
.method constructor <init>(Lcom/tudou/service/download/DownloadManager;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/tudou/service/download/DownloadManager$1;->this$0:Lcom/tudou/service/download/DownloadManager;

    invoke-direct {p0}, Lcom/tudou/service/download/ICallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/tudou/service/download/DownloadInfo;)V
    .locals 3
    .param p1, "info"    # Lcom/tudou/service/download/DownloadInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 69
    iget-object v2, p0, Lcom/tudou/service/download/DownloadManager$1;->this$0:Lcom/tudou/service/download/DownloadManager;

    invoke-static {v2, p1}, Lcom/tudou/service/download/DownloadManager;->access$000(Lcom/tudou/service/download/DownloadManager;Lcom/tudou/service/download/DownloadInfo;)V

    .line 70
    iget-object v2, p0, Lcom/tudou/service/download/DownloadManager$1;->this$0:Lcom/tudou/service/download/DownloadManager;

    invoke-static {v2}, Lcom/tudou/service/download/DownloadManager;->access$100(Lcom/tudou/service/download/DownloadManager;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tudou/service/download/DownloadManager$1;->this$0:Lcom/tudou/service/download/DownloadManager;

    invoke-static {v2}, Lcom/tudou/service/download/DownloadManager;->access$100(Lcom/tudou/service/download/DownloadManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 71
    iget-object v2, p0, Lcom/tudou/service/download/DownloadManager$1;->this$0:Lcom/tudou/service/download/DownloadManager;

    invoke-static {v2}, Lcom/tudou/service/download/DownloadManager;->access$100(Lcom/tudou/service/download/DownloadManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 72
    .local v1, "num":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 73
    iget-object v2, p0, Lcom/tudou/service/download/DownloadManager$1;->this$0:Lcom/tudou/service/download/DownloadManager;

    invoke-static {v2}, Lcom/tudou/service/download/DownloadManager;->access$100(Lcom/tudou/service/download/DownloadManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tudou/service/download/OnChangeListener;

    invoke-interface {v2, p1}, Lcom/tudou/service/download/OnChangeListener;->onChanged(Lcom/tudou/service/download/DownloadInfo;)V

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    .end local v0    # "i":I
    .end local v1    # "num":I
    :cond_0
    return-void
.end method

.method public onFinish(Lcom/tudou/service/download/DownloadInfo;)V
    .locals 6
    .param p1, "info"    # Lcom/tudou/service/download/DownloadInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 80
    iget-object v2, p0, Lcom/tudou/service/download/DownloadManager$1;->this$0:Lcom/tudou/service/download/DownloadManager;

    invoke-static {v2, p1}, Lcom/tudou/service/download/DownloadManager;->access$000(Lcom/tudou/service/download/DownloadManager;Lcom/tudou/service/download/DownloadInfo;)V

    .line 81
    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->access$200()Ljava/util/HashMap;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 82
    invoke-static {}, Lcom/tudou/service/download/DownloadManager;->access$200()Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p1, Lcom/tudou/service/download/DownloadInfo;->videoid:Ljava/lang/String;

    iget-object v4, p0, Lcom/tudou/service/download/DownloadManager$1;->this$0:Lcom/tudou/service/download/DownloadManager;

    iget-object v5, p1, Lcom/tudou/service/download/DownloadInfo;->savePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/tudou/service/download/DownloadManager;->getDownloadInfoBySavePath(Ljava/lang/String;)Lcom/tudou/service/download/DownloadInfo;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    :cond_0
    iget-object v2, p0, Lcom/tudou/service/download/DownloadManager$1;->this$0:Lcom/tudou/service/download/DownloadManager;

    invoke-static {v2}, Lcom/tudou/service/download/DownloadManager;->access$100(Lcom/tudou/service/download/DownloadManager;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/tudou/service/download/DownloadManager$1;->this$0:Lcom/tudou/service/download/DownloadManager;

    invoke-static {v2}, Lcom/tudou/service/download/DownloadManager;->access$100(Lcom/tudou/service/download/DownloadManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_1

    .line 84
    iget-object v2, p0, Lcom/tudou/service/download/DownloadManager$1;->this$0:Lcom/tudou/service/download/DownloadManager;

    invoke-static {v2}, Lcom/tudou/service/download/DownloadManager;->access$100(Lcom/tudou/service/download/DownloadManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 85
    .local v1, "num":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 86
    iget-object v2, p0, Lcom/tudou/service/download/DownloadManager$1;->this$0:Lcom/tudou/service/download/DownloadManager;

    invoke-static {v2}, Lcom/tudou/service/download/DownloadManager;->access$100(Lcom/tudou/service/download/DownloadManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tudou/service/download/OnChangeListener;

    invoke-interface {v2, p1}, Lcom/tudou/service/download/OnChangeListener;->onFinish(Lcom/tudou/service/download/DownloadInfo;)V

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 89
    .end local v0    # "i":I
    .end local v1    # "num":I
    :cond_1
    return-void
.end method

.method public refresh()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lcom/tudou/service/download/DownloadManager$1;->this$0:Lcom/tudou/service/download/DownloadManager;

    invoke-static {v0}, Lcom/tudou/service/download/DownloadManager;->access$300(Lcom/tudou/service/download/DownloadManager;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v0}, Lcom/tudou/service/download/DownloadManager;->access$202(Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 94
    return-void
.end method
