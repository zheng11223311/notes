.class Lcom/tudou/detail/widget/VideoSelectnessBar$3;
.super Ljava/lang/Object;
.source "VideoSelectnessBar.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/widget/VideoSelectnessBar;->setInteractive(Lcom/tudou/detail/vo/Interactive;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/detail/widget/VideoSelectnessBar;


# direct methods
.method constructor <init>(Lcom/tudou/detail/widget/VideoSelectnessBar;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/tudou/detail/widget/VideoSelectnessBar$3;->this$0:Lcom/tudou/detail/widget/VideoSelectnessBar;

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
    .line 101
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tudou/detail/vo/Interactive$SelectnessTab$CardInfo;

    .line 102
    .local v0, "cardInfo":Lcom/tudou/detail/vo/Interactive$SelectnessTab$CardInfo;
    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/tudou/detail/vo/Interactive$SelectnessTab$CardInfo;->mSkipInfo:Lcom/youku/vo/SkipInfo;

    if-eqz v3, :cond_0

    .line 103
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 104
    .local v1, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "type"

    const-string v4, "\u6a2a\u62d6"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object v3, v0, Lcom/tudou/detail/vo/Interactive$SelectnessTab$CardInfo;->mSkipInfo:Lcom/youku/vo/SkipInfo;

    iget-object v3, v3, Lcom/youku/vo/SkipInfo;->video_id:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/tudou/detail/vo/Interactive$SelectnessTab$CardInfo;->mSkipInfo:Lcom/youku/vo/SkipInfo;

    iget-object v2, v3, Lcom/youku/vo/SkipInfo;->album_id:Ljava/lang/String;

    .line 106
    .local v2, "vid":Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "t1.detail_sdetail.cmsthemevideoclick.1_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 107
    iget-object v4, v0, Lcom/tudou/detail/vo/Interactive$SelectnessTab$CardInfo;->mSkipInfo:Lcom/youku/vo/SkipInfo;

    iget-object v3, p0, Lcom/tudou/detail/widget/VideoSelectnessBar$3;->this$0:Lcom/tudou/detail/widget/VideoSelectnessBar;

    invoke-virtual {v3}, Lcom/tudou/detail/widget/VideoSelectnessBar;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v4, v3}, Lcom/youku/vo/SkipInfo;->skip(Landroid/app/Activity;)V

    .line 109
    .end local v1    # "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "vid":Ljava/lang/String;
    :cond_0
    return-void

    .line 105
    .restart local v1    # "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    iget-object v3, v0, Lcom/tudou/detail/vo/Interactive$SelectnessTab$CardInfo;->mSkipInfo:Lcom/youku/vo/SkipInfo;

    iget-object v2, v3, Lcom/youku/vo/SkipInfo;->video_id:Ljava/lang/String;

    goto :goto_0
.end method
