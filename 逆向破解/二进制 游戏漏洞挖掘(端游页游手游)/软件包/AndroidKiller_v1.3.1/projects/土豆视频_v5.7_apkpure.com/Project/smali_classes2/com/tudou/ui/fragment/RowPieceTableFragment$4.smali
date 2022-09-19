.class Lcom/tudou/ui/fragment/RowPieceTableFragment$4;
.super Ljava/lang/Object;
.source "RowPieceTableFragment.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/RowPieceTableFragment;->getData(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/RowPieceTableFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/RowPieceTableFragment;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcom/tudou/ui/fragment/RowPieceTableFragment$4;->this$0:Lcom/tudou/ui/fragment/RowPieceTableFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 2
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 217
    iget-object v0, p0, Lcom/tudou/ui/fragment/RowPieceTableFragment$4;->this$0:Lcom/tudou/ui/fragment/RowPieceTableFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/RowPieceTableFragment;->access$1100(Lcom/tudou/ui/fragment/RowPieceTableFragment;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x271b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 218
    return-void
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 4
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    .line 207
    :try_start_0
    invoke-virtual {p1}, Lcom/youku/network/HttpRequestManager;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, "dataStr":Ljava/lang/String;
    iget-object v3, p0, Lcom/tudou/ui/fragment/RowPieceTableFragment$4;->this$0:Lcom/tudou/ui/fragment/RowPieceTableFragment;

    const-class v2, Lcom/youku/vo/ClassifyScheduleItems;

    invoke-static {v0, v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/ClassifyScheduleItems;

    invoke-static {v3, v2}, Lcom/tudou/ui/fragment/RowPieceTableFragment;->access$402(Lcom/tudou/ui/fragment/RowPieceTableFragment;Lcom/youku/vo/ClassifyScheduleItems;)Lcom/youku/vo/ClassifyScheduleItems;

    .line 209
    iget-object v2, p0, Lcom/tudou/ui/fragment/RowPieceTableFragment$4;->this$0:Lcom/tudou/ui/fragment/RowPieceTableFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/RowPieceTableFragment;->access$1100(Lcom/tudou/ui/fragment/RowPieceTableFragment;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x271a

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    .end local v0    # "dataStr":Ljava/lang/String;
    :goto_0
    return-void

    .line 210
    :catch_0
    move-exception v1

    .line 211
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, ""

    invoke-virtual {p0, v2}, Lcom/tudou/ui/fragment/RowPieceTableFragment$4;->onFailed(Ljava/lang/String;)V

    goto :goto_0
.end method
