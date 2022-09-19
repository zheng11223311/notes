.class Lcom/tudou/detail/DetailModel$18;
.super Lcom/tudou/service/attention/IAttention$CallBack;
.source "DetailModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/DetailModel;->addVideoAttentionAsync(Landroid/app/Activity;Lcom/youku/vo/NewVideoDetail;Lcom/tudou/detail/DetailModel$OnSetAttentionComplete;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/detail/DetailModel;

.field final synthetic val$detail:Lcom/youku/vo/NewVideoDetail;

.field final synthetic val$r:Lcom/tudou/detail/DetailModel$OnSetAttentionComplete;


# direct methods
.method constructor <init>(Lcom/tudou/detail/DetailModel;Lcom/tudou/detail/DetailModel$OnSetAttentionComplete;Lcom/youku/vo/NewVideoDetail;)V
    .locals 0

    .prologue
    .line 2066
    iput-object p1, p0, Lcom/tudou/detail/DetailModel$18;->this$0:Lcom/tudou/detail/DetailModel;

    iput-object p2, p0, Lcom/tudou/detail/DetailModel$18;->val$r:Lcom/tudou/detail/DetailModel$OnSetAttentionComplete;

    iput-object p3, p0, Lcom/tudou/detail/DetailModel$18;->val$detail:Lcom/youku/vo/NewVideoDetail;

    invoke-direct {p0}, Lcom/tudou/service/attention/IAttention$CallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 2
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 2069
    invoke-static {}, Lcom/tudou/detail/DetailModel;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "addVideoAttentionAsync onFail"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2070
    iget-object v0, p0, Lcom/tudou/detail/DetailModel$18;->this$0:Lcom/tudou/detail/DetailModel;

    invoke-static {v0}, Lcom/tudou/detail/DetailModel;->access$300(Lcom/tudou/detail/DetailModel;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/tudou/detail/DetailModel$18$1;

    invoke-direct {v1, p0, p1}, Lcom/tudou/detail/DetailModel$18$1;-><init>(Lcom/tudou/detail/DetailModel$18;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2076
    return-void
.end method

.method public onSucess(Ljava/lang/String;)V
    .locals 2
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 2080
    invoke-static {}, Lcom/tudou/detail/DetailModel;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "addVideoAttentionAsync onSuccess"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2081
    iget-object v0, p0, Lcom/tudou/detail/DetailModel$18;->this$0:Lcom/tudou/detail/DetailModel;

    invoke-static {v0}, Lcom/tudou/detail/DetailModel;->access$300(Lcom/tudou/detail/DetailModel;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/tudou/detail/DetailModel$18$2;

    invoke-direct {v1, p0, p1}, Lcom/tudou/detail/DetailModel$18$2;-><init>(Lcom/tudou/detail/DetailModel$18;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2087
    return-void
.end method
