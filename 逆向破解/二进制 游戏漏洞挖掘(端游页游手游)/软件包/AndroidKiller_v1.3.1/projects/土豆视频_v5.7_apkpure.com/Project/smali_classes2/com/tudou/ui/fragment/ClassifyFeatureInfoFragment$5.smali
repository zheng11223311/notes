.class Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment$5;
.super Ljava/lang/Object;
.source "ClassifyFeatureInfoFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->initHeaderViewGallery(Lcom/youku/vo/TopSlideArea;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;

.field final synthetic val$dataSize:I

.field final synthetic val$topSlideArea:Lcom/youku/vo/TopSlideArea;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;Lcom/youku/vo/TopSlideArea;I)V
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment$5;->this$0:Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;

    iput-object p2, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment$5;->val$topSlideArea:Lcom/youku/vo/TopSlideArea;

    iput p3, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment$5;->val$dataSize:I

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
    .line 267
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment$5;->val$topSlideArea:Lcom/youku/vo/TopSlideArea;

    iget-object v3, v3, Lcom/youku/vo/TopSlideArea;->cards_inf:Ljava/util/List;

    iget v4, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment$5;->val$dataSize:I

    rem-int v4, p3, v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/CardsInfo;

    .line 268
    .local v0, "cardsInfo":Lcom/youku/vo/CardsInfo;
    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/youku/vo/CardsInfo;->skip_inf:Lcom/youku/vo/SkipInfo;

    if-eqz v3, :cond_0

    .line 269
    iget-object v2, v0, Lcom/youku/vo/CardsInfo;->skip_inf:Lcom/youku/vo/SkipInfo;

    .line 270
    .local v2, "skipInfo":Lcom/youku/vo/SkipInfo;
    iget-object v3, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment$5;->this$0:Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->access$900(Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/youku/vo/SkipInfo;->skip(Landroid/app/Activity;)V

    .line 272
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 273
    .local v1, "from":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "ct"

    iget-object v4, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment$5;->this$0:Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;

    invoke-static {v4}, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;->access$1000(Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    const-string v3, "video"

    iget-object v4, v2, Lcom/youku/vo/SkipInfo;->skip_type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 277
    iget-object v3, v2, Lcom/youku/vo/SkipInfo;->video_id:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 278
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "t1.category_scategory.posterVideo.1_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/youku/vo/SkipInfo;->video_id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment$5;->val$dataSize:I

    rem-int v4, p3, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 286
    .end local v1    # "from":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "skipInfo":Lcom/youku/vo/SkipInfo;
    :cond_0
    :goto_0
    return-void

    .line 279
    .restart local v1    # "from":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v2    # "skipInfo":Lcom/youku/vo/SkipInfo;
    :cond_1
    iget-object v3, v2, Lcom/youku/vo/SkipInfo;->album_id:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 280
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "t1.category_scategory.posterVideo.1_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/youku/vo/SkipInfo;->album_id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment$5;->val$dataSize:I

    rem-int v4, p3, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0

    .line 283
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "t1.category_scategory.posterVideo_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/tudou/ui/fragment/ClassifyFeatureInfoFragment$5;->val$dataSize:I

    rem-int v4, p3, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0
.end method
