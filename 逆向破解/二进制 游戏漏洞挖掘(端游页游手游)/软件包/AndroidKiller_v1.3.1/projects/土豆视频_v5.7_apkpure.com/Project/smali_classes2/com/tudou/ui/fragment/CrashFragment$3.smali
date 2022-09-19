.class Lcom/tudou/ui/fragment/CrashFragment$3;
.super Ljava/lang/Object;
.source "CrashFragment.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/CrashFragment;->crash()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/CrashFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/CrashFragment;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/tudou/ui/fragment/CrashFragment$3;->this$0:Lcom/tudou/ui/fragment/CrashFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 3
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 105
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 106
    iget-object v0, p0, Lcom/tudou/ui/fragment/CrashFragment$3;->this$0:Lcom/tudou/ui/fragment/CrashFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/CrashFragment;->access$000(Lcom/tudou/ui/fragment/CrashFragment;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u78b0\u649e\u7ed3\u679c Fail:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/tudou/ui/fragment/CrashFragment$3;->this$0:Lcom/tudou/ui/fragment/CrashFragment;

    iget-object v1, p0, Lcom/tudou/ui/fragment/CrashFragment$3;->this$0:Lcom/tudou/ui/fragment/CrashFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/CrashFragment;->access$200(Lcom/tudou/ui/fragment/CrashFragment;)Lcom/youku/vo/Crash;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tudou/ui/fragment/CrashFragment;->access$300(Lcom/tudou/ui/fragment/CrashFragment;Lcom/youku/vo/Crash;)V

    .line 110
    return-void
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 4
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    .line 92
    iget-object v1, p0, Lcom/tudou/ui/fragment/CrashFragment$3;->this$0:Lcom/tudou/ui/fragment/CrashFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/CrashFragment;->access$000(Lcom/tudou/ui/fragment/CrashFragment;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSuccess--"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/youku/network/HttpRequestManager;->getDataString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 97
    invoke-virtual {p1}, Lcom/youku/network/HttpRequestManager;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "str":Ljava/lang/String;
    iget-object v1, p0, Lcom/tudou/ui/fragment/CrashFragment$3;->this$0:Lcom/tudou/ui/fragment/CrashFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/CrashFragment;->access$000(Lcom/tudou/ui/fragment/CrashFragment;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u78b0\u649e\u7ed3\u679c Success:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v2, p0, Lcom/tudou/ui/fragment/CrashFragment$3;->this$0:Lcom/tudou/ui/fragment/CrashFragment;

    const-class v1, Lcom/youku/vo/Crash;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/Crash;

    invoke-static {v2, v1}, Lcom/tudou/ui/fragment/CrashFragment;->access$202(Lcom/tudou/ui/fragment/CrashFragment;Lcom/youku/vo/Crash;)Lcom/youku/vo/Crash;

    .line 100
    iget-object v1, p0, Lcom/tudou/ui/fragment/CrashFragment$3;->this$0:Lcom/tudou/ui/fragment/CrashFragment;

    iget-object v2, p0, Lcom/tudou/ui/fragment/CrashFragment$3;->this$0:Lcom/tudou/ui/fragment/CrashFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/CrashFragment;->access$200(Lcom/tudou/ui/fragment/CrashFragment;)Lcom/youku/vo/Crash;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tudou/ui/fragment/CrashFragment;->access$300(Lcom/tudou/ui/fragment/CrashFragment;Lcom/youku/vo/Crash;)V

    .line 101
    return-void
.end method
