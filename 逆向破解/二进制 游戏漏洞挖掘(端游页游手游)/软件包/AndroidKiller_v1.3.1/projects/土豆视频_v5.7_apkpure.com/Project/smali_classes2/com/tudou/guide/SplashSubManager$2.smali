.class Lcom/tudou/guide/SplashSubManager$2;
.super Lcom/tudou/service/attention/IAttention$GetCallBack;
.source "SplashSubManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/guide/SplashSubManager;->addAttention(Ljava/util/ArrayList;Lcom/tudou/guide/SplashSubManager$OnAddAttention;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/guide/SplashSubManager;

.field final synthetic val$ids:Ljava/util/ArrayList;

.field final synthetic val$isAll:Z

.field final synthetic val$onAddAttention:Lcom/tudou/guide/SplashSubManager$OnAddAttention;


# direct methods
.method constructor <init>(Lcom/tudou/guide/SplashSubManager;Ljava/util/ArrayList;ZLcom/tudou/guide/SplashSubManager$OnAddAttention;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/tudou/guide/SplashSubManager$2;->this$0:Lcom/tudou/guide/SplashSubManager;

    iput-object p2, p0, Lcom/tudou/guide/SplashSubManager$2;->val$ids:Ljava/util/ArrayList;

    iput-boolean p3, p0, Lcom/tudou/guide/SplashSubManager$2;->val$isAll:Z

    iput-object p4, p0, Lcom/tudou/guide/SplashSubManager$2;->val$onAddAttention:Lcom/tudou/guide/SplashSubManager$OnAddAttention;

    invoke-direct {p0}, Lcom/tudou/service/attention/IAttention$GetCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 1
    .param p1, "errinfo"    # Ljava/lang/String;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/tudou/guide/SplashSubManager$2;->val$onAddAttention:Lcom/tudou/guide/SplashSubManager$OnAddAttention;

    invoke-interface {v0}, Lcom/tudou/guide/SplashSubManager$OnAddAttention;->onFinish()V

    .line 151
    return-void
.end method

.method public onSucess(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tudou/service/attention/IAttention$Results;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 124
    .local p1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/service/attention/IAttention$Results;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/tudou/guide/SplashSubManager$2;->val$ids:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 125
    iget-object v1, p0, Lcom/tudou/guide/SplashSubManager$2;->this$0:Lcom/tudou/guide/SplashSubManager;

    invoke-virtual {v1}, Lcom/tudou/guide/SplashSubManager;->getSubedsTab()Ljava/util/HashMap;

    move-result-object v2

    iget-object v1, p0, Lcom/tudou/guide/SplashSubManager$2;->val$ids:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/GuideTab;

    iget-object v1, v1, Lcom/youku/vo/GuideTab;->podcast_user_id:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 127
    iget-object v1, p0, Lcom/tudou/guide/SplashSubManager$2;->this$0:Lcom/tudou/guide/SplashSubManager;

    invoke-virtual {v1}, Lcom/tudou/guide/SplashSubManager;->getSubedsTab()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tudou/service/attention/IAttention$Results;

    iget v1, v1, Lcom/tudou/service/attention/IAttention$Results;->id:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/tudou/guide/SplashSubManager$2;->val$ids:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    :cond_0
    iget-object v1, p0, Lcom/tudou/guide/SplashSubManager$2;->this$0:Lcom/tudou/guide/SplashSubManager;

    invoke-virtual {v1}, Lcom/tudou/guide/SplashSubManager;->getSelectedTabs()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/guide/SplashSubManager$2;->val$ids:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 130
    iget-object v1, p0, Lcom/tudou/guide/SplashSubManager$2;->this$0:Lcom/tudou/guide/SplashSubManager;

    invoke-virtual {v1}, Lcom/tudou/guide/SplashSubManager;->getSelectedTabs()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/guide/SplashSubManager$2;->val$ids:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    :cond_1
    iget-object v2, p0, Lcom/tudou/guide/SplashSubManager$2;->this$0:Lcom/tudou/guide/SplashSubManager;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tudou/service/attention/IAttention$Results;

    iget v1, v1, Lcom/tudou/service/attention/IAttention$Results;->id:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lcom/tudou/guide/SplashSubManager;->setResultTabs(Ljava/lang/String;Z)V

    .line 124
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 142
    :cond_2
    iget-boolean v1, p0, Lcom/tudou/guide/SplashSubManager$2;->val$isAll:Z

    if-nez v1, :cond_3

    .line 143
    const v1, 0x7f0d01dd

    invoke-static {v1}, Lcom/youku/util/Util;->showTips(I)V

    .line 145
    :cond_3
    iget-object v1, p0, Lcom/tudou/guide/SplashSubManager$2;->val$onAddAttention:Lcom/tudou/guide/SplashSubManager$OnAddAttention;

    invoke-interface {v1}, Lcom/tudou/guide/SplashSubManager$OnAddAttention;->onFinish()V

    .line 146
    return-void
.end method
