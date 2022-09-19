.class Lcom/tudou/service/attention/AttentionManagerImpl$10;
.super Ljava/lang/Thread;
.source "AttentionManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/service/attention/AttentionManagerImpl;->onUserLoginCallBack(Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/service/attention/AttentionManagerImpl;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/tudou/service/attention/AttentionManagerImpl;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 323
    iput-object p1, p0, Lcom/tudou/service/attention/AttentionManagerImpl$10;->this$0:Lcom/tudou/service/attention/AttentionManagerImpl;

    iput-object p2, p0, Lcom/tudou/service/attention/AttentionManagerImpl$10;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 327
    :try_start_0
    const-string v4, "\u5173\u6ce8\u9875\u4e91\u540c\u6b65\u5f00\u59cb"

    const-class v5, Lcom/tudou/ui/activity/LoginActivity;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-static {v4, v5, v6}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    invoke-static {}, Lcom/youku/data/SQLiteManagerTudou;->getAttentionList()Lcom/youku/vo/Podcast;

    move-result-object v1

    .line 332
    .local v1, "podcast":Lcom/youku/vo/Podcast;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 333
    .local v2, "userlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 334
    .local v3, "userlist1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    iget-object v4, v1, Lcom/youku/vo/Podcast;->data:Lcom/youku/vo/Podcast$Users;

    iget-object v4, v4, Lcom/youku/vo/Podcast$Users;->subs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 335
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, v1, Lcom/youku/vo/Podcast;->data:Lcom/youku/vo/Podcast$Users;

    iget-object v4, v4, Lcom/youku/vo/Podcast$Users;->subs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 336
    iget-object v4, v1, Lcom/youku/vo/Podcast;->data:Lcom/youku/vo/Podcast$Users;

    iget-object v4, v4, Lcom/youku/vo/Podcast$Users;->subs:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/vo/Podcast$Users$Subs;

    iget v4, v4, Lcom/youku/vo/Podcast$Users$Subs;->type:I

    if-ne v4, v7, :cond_0

    .line 337
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/youku/vo/Podcast;->data:Lcom/youku/vo/Podcast$Users;

    iget-object v4, v4, Lcom/youku/vo/Podcast$Users;->subs:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/vo/Podcast$Users$Subs;

    iget v4, v4, Lcom/youku/vo/Podcast$Users$Subs;->id:I

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 339
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/youku/vo/Podcast;->data:Lcom/youku/vo/Podcast$Users;

    iget-object v4, v4, Lcom/youku/vo/Podcast$Users;->subs:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/vo/Podcast$Users$Subs;

    iget v4, v4, Lcom/youku/vo/Podcast$Users$Subs;->id:I

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 513
    .end local v0    # "i":I
    .end local v1    # "podcast":Lcom/youku/vo/Podcast;
    .end local v2    # "userlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "userlist1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v4

    .line 515
    :cond_1
    :goto_2
    return-void

    .line 342
    .restart local v0    # "i":I
    .restart local v1    # "podcast":Lcom/youku/vo/Podcast;
    .restart local v2    # "userlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3    # "userlist1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v4, v7, :cond_3

    .line 343
    iget-object v4, p0, Lcom/tudou/service/attention/AttentionManagerImpl$10;->val$handler:Landroid/os/Handler;

    new-instance v5, Lcom/tudou/service/attention/AttentionManagerImpl$10$1;

    invoke-direct {v5, p0, v3}, Lcom/tudou/service/attention/AttentionManagerImpl$10$1;-><init>(Lcom/tudou/service/attention/AttentionManagerImpl$10;Ljava/util/ArrayList;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 432
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v4, v7, :cond_1

    .line 433
    iget-object v4, p0, Lcom/tudou/service/attention/AttentionManagerImpl$10;->val$handler:Landroid/os/Handler;

    new-instance v5, Lcom/tudou/service/attention/AttentionManagerImpl$10$2;

    invoke-direct {v5, p0, v2}, Lcom/tudou/service/attention/AttentionManagerImpl$10$2;-><init>(Lcom/tudou/service/attention/AttentionManagerImpl$10;Ljava/util/ArrayList;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2
.end method
