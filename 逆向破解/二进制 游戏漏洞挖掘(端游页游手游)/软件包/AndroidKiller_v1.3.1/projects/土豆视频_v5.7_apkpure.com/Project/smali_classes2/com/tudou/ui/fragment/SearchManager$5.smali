.class Lcom/tudou/ui/fragment/SearchManager$5;
.super Ljava/lang/Object;
.source "SearchManager.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/SearchManager;->excueSuggestWords(Ljava/lang/String;Landroid/os/Handler;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/SearchManager;

.field final synthetic val$suggestHandler:Landroid/os/Handler;

.field final synthetic val$temp:Ljava/lang/String;

.field final synthetic val$time:J


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/SearchManager;Ljava/lang/String;JLandroid/os/Handler;)V
    .locals 1

    .prologue
    .line 729
    iput-object p1, p0, Lcom/tudou/ui/fragment/SearchManager$5;->this$0:Lcom/tudou/ui/fragment/SearchManager;

    iput-object p2, p0, Lcom/tudou/ui/fragment/SearchManager$5;->val$temp:Ljava/lang/String;

    iput-wide p3, p0, Lcom/tudou/ui/fragment/SearchManager$5;->val$time:J

    iput-object p5, p0, Lcom/tudou/ui/fragment/SearchManager$5;->val$suggestHandler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 2
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 746
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchManager$5;->val$suggestHandler:Landroid/os/Handler;

    const/16 v1, 0xbe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 748
    return-void
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 6
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    .line 733
    invoke-virtual {p1}, Lcom/youku/network/HttpRequestManager;->getDataString()Ljava/lang/String;

    move-result-object v1

    .line 734
    .local v1, "str":Ljava/lang/String;
    const-class v3, Lcom/youku/vo/DropWordResult;

    invoke-static {v1, v3}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/DropWordResult;

    .line 736
    .local v2, "words":Lcom/youku/vo/DropWordResult;
    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchManager$5;->val$temp:Ljava/lang/String;

    iput-object v3, v2, Lcom/youku/vo/DropWordResult;->key:Ljava/lang/String;

    .line 737
    iget-wide v4, p0, Lcom/tudou/ui/fragment/SearchManager$5;->val$time:J

    iput-wide v4, v2, Lcom/youku/vo/DropWordResult;->currWordTime:J

    .line 738
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 739
    .local v0, "message":Landroid/os/Message;
    const/16 v3, 0xbf

    iput v3, v0, Landroid/os/Message;->what:I

    .line 740
    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 741
    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchManager$5;->val$suggestHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 742
    return-void
.end method
