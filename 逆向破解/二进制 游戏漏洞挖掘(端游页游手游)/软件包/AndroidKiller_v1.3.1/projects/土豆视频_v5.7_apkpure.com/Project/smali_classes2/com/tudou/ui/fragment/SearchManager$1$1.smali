.class Lcom/tudou/ui/fragment/SearchManager$1$1;
.super Ljava/lang/Object;
.source "SearchManager.java"

# interfaces
.implements Lcom/tudou/ui/fragment/SearchManager$ICheckAttention;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/SearchManager$1;->onSuccess(Lcom/youku/network/HttpRequestManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tudou/ui/fragment/SearchManager$1;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/SearchManager$1;)V
    .locals 0

    .prologue
    .line 305
    iput-object p1, p0, Lcom/tudou/ui/fragment/SearchManager$1$1;->this$1:Lcom/tudou/ui/fragment/SearchManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishChannel(Lcom/youku/vo/SokuPodcast;)V
    .locals 0
    .param p1, "result"    # Lcom/youku/vo/SokuPodcast;

    .prologue
    .line 327
    return-void
.end method

.method public onFinishVideo(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/SearchDirectDaoShowItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 310
    .local p1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/SearchDirectDaoShowItem;>;"
    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchManager$1$1;->this$1:Lcom/tudou/ui/fragment/SearchManager$1;

    iget-object v1, v1, Lcom/tudou/ui/fragment/SearchManager$1;->this$0:Lcom/tudou/ui/fragment/SearchManager;

    iput-object p1, v1, Lcom/tudou/ui/fragment/SearchManager;->AllDirectItem:Ljava/util/ArrayList;

    .line 312
    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchManager$1$1;->this$1:Lcom/tudou/ui/fragment/SearchManager$1;

    iget-object v1, v1, Lcom/tudou/ui/fragment/SearchManager$1;->this$0:Lcom/tudou/ui/fragment/SearchManager;

    invoke-virtual {v1}, Lcom/tudou/ui/fragment/SearchManager;->getDirectDao()Lcom/youku/vo/SearchDirectDao;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchManager$1$1;->this$1:Lcom/tudou/ui/fragment/SearchManager$1;

    iget-object v1, v1, Lcom/tudou/ui/fragment/SearchManager$1;->this$0:Lcom/tudou/ui/fragment/SearchManager;

    invoke-virtual {v1}, Lcom/tudou/ui/fragment/SearchManager;->getDirectDao()Lcom/youku/vo/SearchDirectDao;

    move-result-object v1

    iget-object v1, v1, Lcom/youku/vo/SearchDirectDao;->correction:Lcom/youku/vo/SearchCorrection;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchManager$1$1;->this$1:Lcom/tudou/ui/fragment/SearchManager$1;

    iget-object v1, v1, Lcom/tudou/ui/fragment/SearchManager$1;->this$0:Lcom/tudou/ui/fragment/SearchManager;

    invoke-virtual {v1}, Lcom/tudou/ui/fragment/SearchManager;->getDirectDao()Lcom/youku/vo/SearchDirectDao;

    move-result-object v1

    iget-object v1, v1, Lcom/youku/vo/SearchDirectDao;->correction:Lcom/youku/vo/SearchCorrection;

    iget-object v1, v1, Lcom/youku/vo/SearchCorrection;->corr_type:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchManager$1$1;->this$1:Lcom/tudou/ui/fragment/SearchManager$1;

    iget-object v1, v1, Lcom/tudou/ui/fragment/SearchManager$1;->this$0:Lcom/tudou/ui/fragment/SearchManager;

    invoke-virtual {v1}, Lcom/tudou/ui/fragment/SearchManager;->getDirectDao()Lcom/youku/vo/SearchDirectDao;

    move-result-object v1

    iget-object v1, v1, Lcom/youku/vo/SearchDirectDao;->correction:Lcom/youku/vo/SearchCorrection;

    iget-object v1, v1, Lcom/youku/vo/SearchCorrection;->corr_word:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "replace"

    iget-object v2, p0, Lcom/tudou/ui/fragment/SearchManager$1$1;->this$1:Lcom/tudou/ui/fragment/SearchManager$1;

    iget-object v2, v2, Lcom/tudou/ui/fragment/SearchManager$1;->this$0:Lcom/tudou/ui/fragment/SearchManager;

    invoke-virtual {v2}, Lcom/tudou/ui/fragment/SearchManager;->getDirectDao()Lcom/youku/vo/SearchDirectDao;

    move-result-object v2

    iget-object v2, v2, Lcom/youku/vo/SearchDirectDao;->correction:Lcom/youku/vo/SearchCorrection;

    iget-object v2, v2, Lcom/youku/vo/SearchCorrection;->corr_type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 317
    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchManager$1$1;->this$1:Lcom/tudou/ui/fragment/SearchManager$1;

    iget-object v1, v1, Lcom/tudou/ui/fragment/SearchManager$1;->this$0:Lcom/tudou/ui/fragment/SearchManager;

    invoke-virtual {v1}, Lcom/tudou/ui/fragment/SearchManager;->getDirectDao()Lcom/youku/vo/SearchDirectDao;

    move-result-object v1

    iget-object v1, v1, Lcom/youku/vo/SearchDirectDao;->correction:Lcom/youku/vo/SearchCorrection;

    iget-object v0, v1, Lcom/youku/vo/SearchCorrection;->corr_word:Ljava/lang/String;

    .line 321
    .local v0, "corr_word":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchManager$1$1;->this$1:Lcom/tudou/ui/fragment/SearchManager$1;

    iget-object v1, v1, Lcom/tudou/ui/fragment/SearchManager$1;->this$0:Lcom/tudou/ui/fragment/SearchManager;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/tudou/ui/fragment/SearchManager$1$1;->this$1:Lcom/tudou/ui/fragment/SearchManager$1;

    iget-boolean v3, v3, Lcom/tudou/ui/fragment/SearchManager$1;->val$isnoqc:Z

    iget-object v4, p0, Lcom/tudou/ui/fragment/SearchManager$1$1;->this$1:Lcom/tudou/ui/fragment/SearchManager$1;

    iget-object v4, v4, Lcom/tudou/ui/fragment/SearchManager$1;->val$keyType:Ljava/lang/String;

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/tudou/ui/fragment/SearchManager;->excueGetUgc(Ljava/lang/String;ZZLjava/lang/String;)V

    .line 322
    return-void

    .line 319
    .end local v0    # "corr_word":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/tudou/ui/fragment/SearchManager$1$1;->this$1:Lcom/tudou/ui/fragment/SearchManager$1;

    iget-object v0, v1, Lcom/tudou/ui/fragment/SearchManager$1;->val$key:Ljava/lang/String;

    .restart local v0    # "corr_word":Ljava/lang/String;
    goto :goto_0
.end method
