.class Lcom/tudou/detail/widget/VideoBriefBar$3;
.super Lcom/tudou/service/attention/IAttention$GetCallBack;
.source "VideoBriefBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/widget/VideoBriefBar;->setVideoDetail(Lcom/youku/vo/NewVideoDetail;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/detail/widget/VideoBriefBar;

.field final synthetic val$detail:Lcom/youku/vo/NewVideoDetail;


# direct methods
.method constructor <init>(Lcom/tudou/detail/widget/VideoBriefBar;Lcom/youku/vo/NewVideoDetail;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/tudou/detail/widget/VideoBriefBar$3;->this$0:Lcom/tudou/detail/widget/VideoBriefBar;

    iput-object p2, p0, Lcom/tudou/detail/widget/VideoBriefBar$3;->val$detail:Lcom/youku/vo/NewVideoDetail;

    invoke-direct {p0}, Lcom/tudou/service/attention/IAttention$GetCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 3
    .param p1, "errinfo"    # Ljava/lang/String;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoBriefBar$3;->this$0:Lcom/tudou/detail/widget/VideoBriefBar;

    iget-object v1, p0, Lcom/tudou/detail/widget/VideoBriefBar$3;->val$detail:Lcom/youku/vo/NewVideoDetail;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/tudou/detail/widget/VideoBriefBar;->access$300(Lcom/tudou/detail/widget/VideoBriefBar;Lcom/youku/vo/NewVideoDetail;Z)V

    .line 155
    return-void
.end method

.method public onSucess(Ljava/util/ArrayList;)V
    .locals 3
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
    .line 143
    .local p1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tudou/service/attention/IAttention$Results;>;"
    const/4 v0, 0x0

    .line 144
    .local v0, "atte":Z
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tudou/service/attention/IAttention$Results;

    iget v1, v1, Lcom/tudou/service/attention/IAttention$Results;->code:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 146
    const/4 v0, 0x1

    .line 149
    :cond_0
    iget-object v1, p0, Lcom/tudou/detail/widget/VideoBriefBar$3;->this$0:Lcom/tudou/detail/widget/VideoBriefBar;

    iget-object v2, p0, Lcom/tudou/detail/widget/VideoBriefBar$3;->val$detail:Lcom/youku/vo/NewVideoDetail;

    invoke-static {v1, v2, v0}, Lcom/tudou/detail/widget/VideoBriefBar;->access$300(Lcom/tudou/detail/widget/VideoBriefBar;Lcom/youku/vo/NewVideoDetail;Z)V

    .line 150
    return-void
.end method
