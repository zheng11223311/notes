.class Lcom/tudou/detail/fragment/VideoSelectnessFragment$1;
.super Ljava/lang/Object;
.source "VideoSelectnessFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/fragment/VideoSelectnessFragment;->updateView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/detail/fragment/VideoSelectnessFragment;


# direct methods
.method constructor <init>(Lcom/tudou/detail/fragment/VideoSelectnessFragment;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/tudou/detail/fragment/VideoSelectnessFragment$1;->this$0:Lcom/tudou/detail/fragment/VideoSelectnessFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lcom/tudou/detail/fragment/VideoSelectnessFragment$1;->this$0:Lcom/tudou/detail/fragment/VideoSelectnessFragment;

    invoke-static {v3}, Lcom/tudou/detail/fragment/VideoSelectnessFragment;->access$000(Lcom/tudou/detail/fragment/VideoSelectnessFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tudou/detail/vo/Interactive$SelectnessTab$CardInfo;

    .line 74
    .local v0, "cardInfo":Lcom/tudou/detail/vo/Interactive$SelectnessTab$CardInfo;
    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/tudou/detail/vo/Interactive$SelectnessTab$CardInfo;->mSkipInfo:Lcom/youku/vo/SkipInfo;

    if-eqz v3, :cond_0

    .line 75
    iget-object v3, v0, Lcom/tudou/detail/vo/Interactive$SelectnessTab$CardInfo;->mSkipInfo:Lcom/youku/vo/SkipInfo;

    iget-object v4, p0, Lcom/tudou/detail/fragment/VideoSelectnessFragment$1;->this$0:Lcom/tudou/detail/fragment/VideoSelectnessFragment;

    invoke-virtual {v4}, Lcom/tudou/detail/fragment/VideoSelectnessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/youku/vo/SkipInfo;->skip(Landroid/app/Activity;)V

    .line 77
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "t1.detail_sdetail.cmsthemevideoclick__1.1_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, p0, Lcom/tudou/detail/fragment/VideoSelectnessFragment$1;->this$0:Lcom/tudou/detail/fragment/VideoSelectnessFragment;

    invoke-virtual {v3}, Lcom/tudou/detail/fragment/VideoSelectnessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v3}, Lcom/tudou/ui/activity/DetailActivity;->getCurrentVid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 78
    .local v2, "s":Ljava/lang/String;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 79
    .local v1, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "type"

    const-string v4, "\u5c55\u5f00"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    invoke-static {v2, v1}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 82
    .end local v1    # "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "s":Ljava/lang/String;
    :cond_0
    return-void
.end method
