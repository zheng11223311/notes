.class Lcom/tudou/ui/fragment/SplashSubFragment$1;
.super Lcom/tudou/service/attention/IAttention$GetCallBack;
.source "SplashSubFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/SplashSubFragment;->subAllFollow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/SplashSubFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/SplashSubFragment;)V
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, Lcom/tudou/ui/fragment/SplashSubFragment$1;->this$0:Lcom/tudou/ui/fragment/SplashSubFragment;

    invoke-direct {p0}, Lcom/tudou/service/attention/IAttention$GetCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 2
    .param p1, "errinfo"    # Ljava/lang/String;

    .prologue
    .line 259
    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashSubFragment$1;->this$0:Lcom/tudou/ui/fragment/SplashSubFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SplashSubFragment;->access$100(Lcom/tudou/ui/fragment/SplashSubFragment;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 260
    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashSubFragment$1;->this$0:Lcom/tudou/ui/fragment/SplashSubFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SplashSubFragment;->access$300(Lcom/tudou/ui/fragment/SplashSubFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 261
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
    .line 241
    .local p1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/service/attention/IAttention$Results;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 242
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tudou/service/attention/IAttention$Results;

    iget v1, v1, Lcom/tudou/service/attention/IAttention$Results;->code:I

    if-nez v1, :cond_0

    .line 243
    invoke-static {}, Lcom/tudou/guide/SplashSubManager;->getInstance()Lcom/tudou/guide/SplashSubManager;

    move-result-object v2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tudou/service/attention/IAttention$Results;

    iget v1, v1, Lcom/tudou/service/attention/IAttention$Results;->id:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lcom/tudou/guide/SplashSubManager;->setResultTabs(Ljava/lang/String;Z)V

    .line 241
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 246
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/tudou/ui/fragment/SplashSubFragment$1;->this$0:Lcom/tudou/ui/fragment/SplashSubFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/SplashSubFragment;->access$000(Lcom/tudou/ui/fragment/SplashSubFragment;)Lcom/youku/vo/GuideSubResult;

    move-result-object v2

    iget-object v2, v2, Lcom/youku/vo/GuideSubResult;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 247
    iget-object v1, p0, Lcom/tudou/ui/fragment/SplashSubFragment$1;->this$0:Lcom/tudou/ui/fragment/SplashSubFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/SplashSubFragment;->access$100(Lcom/tudou/ui/fragment/SplashSubFragment;)Landroid/widget/Button;

    move-result-object v1

    const v2, 0x7f020076

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 252
    :goto_1
    iget-object v1, p0, Lcom/tudou/ui/fragment/SplashSubFragment$1;->this$0:Lcom/tudou/ui/fragment/SplashSubFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/SplashSubFragment;->access$200(Lcom/tudou/ui/fragment/SplashSubFragment;)Lcom/tudou/guide/SplashAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tudou/guide/SplashAdapter;->notifyDataSetChanged()V

    .line 253
    iget-object v1, p0, Lcom/tudou/ui/fragment/SplashSubFragment$1;->this$0:Lcom/tudou/ui/fragment/SplashSubFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/SplashSubFragment;->access$100(Lcom/tudou/ui/fragment/SplashSubFragment;)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 254
    iget-object v1, p0, Lcom/tudou/ui/fragment/SplashSubFragment$1;->this$0:Lcom/tudou/ui/fragment/SplashSubFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/SplashSubFragment;->access$300(Lcom/tudou/ui/fragment/SplashSubFragment;)Landroid/widget/ProgressBar;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 255
    return-void

    .line 249
    :cond_2
    iget-object v1, p0, Lcom/tudou/ui/fragment/SplashSubFragment$1;->this$0:Lcom/tudou/ui/fragment/SplashSubFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/SplashSubFragment;->access$100(Lcom/tudou/ui/fragment/SplashSubFragment;)Landroid/widget/Button;

    move-result-object v1

    const v2, 0x7f020077

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_1
.end method
