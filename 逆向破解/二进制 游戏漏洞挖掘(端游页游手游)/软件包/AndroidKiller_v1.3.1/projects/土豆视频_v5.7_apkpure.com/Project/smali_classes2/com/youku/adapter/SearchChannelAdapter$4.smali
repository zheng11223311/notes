.class Lcom/youku/adapter/SearchChannelAdapter$4;
.super Lcom/tudou/service/attention/IAttention$CallBack;
.source "SearchChannelAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/adapter/SearchChannelAdapter;->cancelAttention(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/adapter/SearchChannelAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/youku/adapter/SearchChannelAdapter;I)V
    .locals 0

    .prologue
    .line 297
    iput-object p1, p0, Lcom/youku/adapter/SearchChannelAdapter$4;->this$0:Lcom/youku/adapter/SearchChannelAdapter;

    iput p2, p0, Lcom/youku/adapter/SearchChannelAdapter$4;->val$position:I

    invoke-direct {p0}, Lcom/tudou/service/attention/IAttention$CallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 2
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 314
    iget-object v0, p0, Lcom/youku/adapter/SearchChannelAdapter$4;->this$0:Lcom/youku/adapter/SearchChannelAdapter;

    invoke-virtual {v0}, Lcom/youku/adapter/SearchChannelAdapter;->getUsers()Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/youku/adapter/SearchChannelAdapter$4;->val$position:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/SokuPodcast$User;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/youku/vo/SokuPodcast$User;->isAttention:Z

    .line 315
    iget-object v0, p0, Lcom/youku/adapter/SearchChannelAdapter$4;->this$0:Lcom/youku/adapter/SearchChannelAdapter;

    invoke-virtual {v0}, Lcom/youku/adapter/SearchChannelAdapter;->getUsers()Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/youku/adapter/SearchChannelAdapter$4;->val$position:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/SokuPodcast$User;

    const/4 v1, 0x2

    iput v1, v0, Lcom/youku/vo/SokuPodcast$User;->ATTENTION_STATE:I

    .line 316
    iget-object v0, p0, Lcom/youku/adapter/SearchChannelAdapter$4;->this$0:Lcom/youku/adapter/SearchChannelAdapter;

    invoke-static {v0}, Lcom/youku/adapter/SearchChannelAdapter;->access$200(Lcom/youku/adapter/SearchChannelAdapter;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/youku/adapter/SearchChannelAdapter$4$2;

    invoke-direct {v1, p0}, Lcom/youku/adapter/SearchChannelAdapter$4$2;-><init>(Lcom/youku/adapter/SearchChannelAdapter$4;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 323
    return-void
.end method

.method public onSucess(Ljava/lang/String;)V
    .locals 2
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 301
    iget-object v0, p0, Lcom/youku/adapter/SearchChannelAdapter$4;->this$0:Lcom/youku/adapter/SearchChannelAdapter;

    invoke-virtual {v0}, Lcom/youku/adapter/SearchChannelAdapter;->getUsers()Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/youku/adapter/SearchChannelAdapter$4;->val$position:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/SokuPodcast$User;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/youku/vo/SokuPodcast$User;->isAttention:Z

    .line 302
    iget-object v0, p0, Lcom/youku/adapter/SearchChannelAdapter$4;->this$0:Lcom/youku/adapter/SearchChannelAdapter;

    invoke-virtual {v0}, Lcom/youku/adapter/SearchChannelAdapter;->getUsers()Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/youku/adapter/SearchChannelAdapter$4;->val$position:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/SokuPodcast$User;

    const/4 v1, 0x3

    iput v1, v0, Lcom/youku/vo/SokuPodcast$User;->ATTENTION_STATE:I

    .line 303
    iget-object v0, p0, Lcom/youku/adapter/SearchChannelAdapter$4;->this$0:Lcom/youku/adapter/SearchChannelAdapter;

    invoke-static {v0}, Lcom/youku/adapter/SearchChannelAdapter;->access$200(Lcom/youku/adapter/SearchChannelAdapter;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/youku/adapter/SearchChannelAdapter$4$1;

    invoke-direct {v1, p0}, Lcom/youku/adapter/SearchChannelAdapter$4$1;-><init>(Lcom/youku/adapter/SearchChannelAdapter$4;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 310
    return-void
.end method
