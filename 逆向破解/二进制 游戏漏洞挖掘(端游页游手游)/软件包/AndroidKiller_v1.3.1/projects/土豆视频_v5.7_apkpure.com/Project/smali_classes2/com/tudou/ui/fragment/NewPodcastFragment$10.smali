.class Lcom/tudou/ui/fragment/NewPodcastFragment$10;
.super Ljava/lang/Object;
.source "NewPodcastFragment.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/NewPodcastFragment;->excueGetPodcastList(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/NewPodcastFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/NewPodcastFragment;)V
    .locals 0

    .prologue
    .line 869
    iput-object p1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$10;->this$0:Lcom/tudou/ui/fragment/NewPodcastFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 4
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 888
    iget-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$10;->this$0:Lcom/tudou/ui/fragment/NewPodcastFragment;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/tudou/ui/fragment/NewPodcastFragment;->isfeshing:Z

    .line 889
    iget-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$10;->this$0:Lcom/tudou/ui/fragment/NewPodcastFragment;

    invoke-static {v1, v3}, Lcom/tudou/ui/fragment/NewPodcastFragment;->access$1102(Lcom/tudou/ui/fragment/NewPodcastFragment;I)I

    .line 890
    iget-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$10;->this$0:Lcom/tudou/ui/fragment/NewPodcastFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/NewPodcastFragment;->access$800(Lcom/tudou/ui/fragment/NewPodcastFragment;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 891
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 892
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xfa1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 893
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 894
    iget-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$10;->this$0:Lcom/tudou/ui/fragment/NewPodcastFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/NewPodcastFragment;->access$800(Lcom/tudou/ui/fragment/NewPodcastFragment;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 895
    iget-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$10;->this$0:Lcom/tudou/ui/fragment/NewPodcastFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/NewPodcastFragment;->video:Lcom/youku/vo/UploadVideoinfo;

    iget-object v1, v1, Lcom/youku/vo/UploadVideoinfo;->multiPageResult:Lcom/youku/vo/UploadVideoinfo$MultiPageResult;

    iget-object v1, v1, Lcom/youku/vo/UploadVideoinfo$MultiPageResult;->page:Lcom/youku/vo/Page;

    invoke-virtual {v1}, Lcom/youku/vo/Page;->getPageNo()I

    move-result v1

    if-le v1, v3, :cond_0

    .line 896
    iget-object v1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$10;->this$0:Lcom/tudou/ui/fragment/NewPodcastFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/NewPodcastFragment;->video:Lcom/youku/vo/UploadVideoinfo;

    iget-object v1, v1, Lcom/youku/vo/UploadVideoinfo;->multiPageResult:Lcom/youku/vo/UploadVideoinfo$MultiPageResult;

    iget-object v1, v1, Lcom/youku/vo/UploadVideoinfo$MultiPageResult;->page:Lcom/youku/vo/Page;

    invoke-virtual {v1}, Lcom/youku/vo/Page;->dePageNo()V

    .line 899
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 5
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    .line 873
    new-instance v2, Lcom/youku/vo/UploadVideoinfo;

    invoke-direct {v2}, Lcom/youku/vo/UploadVideoinfo;-><init>()V

    .line 874
    .local v2, "uploadvideo":Lcom/youku/vo/UploadVideoinfo;
    iget-object v3, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$10;->this$0:Lcom/tudou/ui/fragment/NewPodcastFragment;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/tudou/ui/fragment/NewPodcastFragment;->isfeshing:Z

    .line 875
    new-instance v1, Lcom/youku/http/ParseJson;

    invoke-virtual {p1}, Lcom/youku/network/HttpRequestManager;->getDataString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/youku/http/ParseJson;-><init>(Ljava/lang/String;)V

    .line 877
    .local v1, "parsejson":Lcom/youku/http/ParseJson;
    invoke-virtual {v1}, Lcom/youku/http/ParseJson;->parseUploadVideoinfo_V4()Lcom/youku/vo/UploadVideoinfo;

    move-result-object v2

    .line 878
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 879
    .local v0, "msg":Landroid/os/Message;
    const/16 v3, 0xfa0

    iput v3, v0, Landroid/os/Message;->what:I

    .line 880
    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 881
    iget-object v3, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$10;->this$0:Lcom/tudou/ui/fragment/NewPodcastFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/NewPodcastFragment;->access$800(Lcom/tudou/ui/fragment/NewPodcastFragment;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 882
    iget-object v3, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$10;->this$0:Lcom/tudou/ui/fragment/NewPodcastFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/NewPodcastFragment;->access$800(Lcom/tudou/ui/fragment/NewPodcastFragment;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 884
    :cond_0
    return-void
.end method
