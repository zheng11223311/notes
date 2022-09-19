.class Lcom/tudou/adapter/HistoryAdapter$1;
.super Ljava/lang/Object;
.source "HistoryAdapter.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/adapter/HistoryAdapter;->removePlayHistoryFromServer(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/adapter/HistoryAdapter;


# direct methods
.method constructor <init>(Lcom/tudou/adapter/HistoryAdapter;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/tudou/adapter/HistoryAdapter$1;->this$0:Lcom/tudou/adapter/HistoryAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 2
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/tudou/adapter/HistoryAdapter$1;->this$0:Lcom/tudou/adapter/HistoryAdapter;

    invoke-static {v0}, Lcom/tudou/adapter/HistoryAdapter;->access$100(Lcom/tudou/adapter/HistoryAdapter;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x2726

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 167
    return-void
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 2
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    .line 158
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 159
    .local v0, "message":Landroid/os/Message;
    const/16 v1, 0x2725

    iput v1, v0, Landroid/os/Message;->what:I

    .line 160
    iget-object v1, p0, Lcom/tudou/adapter/HistoryAdapter$1;->this$0:Lcom/tudou/adapter/HistoryAdapter;

    invoke-static {v1}, Lcom/tudou/adapter/HistoryAdapter;->access$000(Lcom/tudou/adapter/HistoryAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 161
    iget-object v1, p0, Lcom/tudou/adapter/HistoryAdapter$1;->this$0:Lcom/tudou/adapter/HistoryAdapter;

    invoke-static {v1}, Lcom/tudou/adapter/HistoryAdapter;->access$100(Lcom/tudou/adapter/HistoryAdapter;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 162
    return-void
.end method
