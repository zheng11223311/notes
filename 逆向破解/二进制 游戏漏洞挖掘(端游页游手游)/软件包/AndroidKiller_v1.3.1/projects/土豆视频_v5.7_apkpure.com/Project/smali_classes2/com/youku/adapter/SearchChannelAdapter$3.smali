.class Lcom/youku/adapter/SearchChannelAdapter$3;
.super Lcom/tudou/service/attention/IAttention$CallBack;
.source "SearchChannelAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/adapter/SearchChannelAdapter;->addAttention(I)V
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
    .line 260
    iput-object p1, p0, Lcom/youku/adapter/SearchChannelAdapter$3;->this$0:Lcom/youku/adapter/SearchChannelAdapter;

    iput p2, p0, Lcom/youku/adapter/SearchChannelAdapter$3;->val$position:I

    invoke-direct {p0}, Lcom/tudou/service/attention/IAttention$CallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 3
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 277
    iget-object v1, p0, Lcom/youku/adapter/SearchChannelAdapter$3;->this$0:Lcom/youku/adapter/SearchChannelAdapter;

    invoke-virtual {v1}, Lcom/youku/adapter/SearchChannelAdapter;->getUsers()Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lcom/youku/adapter/SearchChannelAdapter$3;->val$position:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/SokuPodcast$User;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/youku/vo/SokuPodcast$User;->isAttention:Z

    .line 278
    iget-object v1, p0, Lcom/youku/adapter/SearchChannelAdapter$3;->this$0:Lcom/youku/adapter/SearchChannelAdapter;

    invoke-virtual {v1}, Lcom/youku/adapter/SearchChannelAdapter;->getUsers()Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lcom/youku/adapter/SearchChannelAdapter$3;->val$position:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/SokuPodcast$User;

    const/4 v2, 0x3

    iput v2, v1, Lcom/youku/vo/SokuPodcast$User;->ATTENTION_STATE:I

    .line 279
    move-object v0, p1

    .line 280
    .local v0, "u":Ljava/lang/String;
    iget-object v1, p0, Lcom/youku/adapter/SearchChannelAdapter$3;->this$0:Lcom/youku/adapter/SearchChannelAdapter;

    invoke-static {v1}, Lcom/youku/adapter/SearchChannelAdapter;->access$200(Lcom/youku/adapter/SearchChannelAdapter;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/youku/adapter/SearchChannelAdapter$3$2;

    invoke-direct {v2, p0}, Lcom/youku/adapter/SearchChannelAdapter$3$2;-><init>(Lcom/youku/adapter/SearchChannelAdapter$3;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 291
    return-void
.end method

.method public onSucess(Ljava/lang/String;)V
    .locals 2
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 264
    iget-object v0, p0, Lcom/youku/adapter/SearchChannelAdapter$3;->this$0:Lcom/youku/adapter/SearchChannelAdapter;

    invoke-virtual {v0}, Lcom/youku/adapter/SearchChannelAdapter;->getUsers()Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/youku/adapter/SearchChannelAdapter$3;->val$position:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/SokuPodcast$User;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/youku/vo/SokuPodcast$User;->isAttention:Z

    .line 265
    iget-object v0, p0, Lcom/youku/adapter/SearchChannelAdapter$3;->this$0:Lcom/youku/adapter/SearchChannelAdapter;

    invoke-virtual {v0}, Lcom/youku/adapter/SearchChannelAdapter;->getUsers()Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/youku/adapter/SearchChannelAdapter$3;->val$position:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/SokuPodcast$User;

    const/4 v1, 0x2

    iput v1, v0, Lcom/youku/vo/SokuPodcast$User;->ATTENTION_STATE:I

    .line 266
    iget-object v0, p0, Lcom/youku/adapter/SearchChannelAdapter$3;->this$0:Lcom/youku/adapter/SearchChannelAdapter;

    invoke-static {v0}, Lcom/youku/adapter/SearchChannelAdapter;->access$200(Lcom/youku/adapter/SearchChannelAdapter;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/youku/adapter/SearchChannelAdapter$3$1;

    invoke-direct {v1, p0}, Lcom/youku/adapter/SearchChannelAdapter$3$1;-><init>(Lcom/youku/adapter/SearchChannelAdapter$3;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 273
    return-void
.end method
