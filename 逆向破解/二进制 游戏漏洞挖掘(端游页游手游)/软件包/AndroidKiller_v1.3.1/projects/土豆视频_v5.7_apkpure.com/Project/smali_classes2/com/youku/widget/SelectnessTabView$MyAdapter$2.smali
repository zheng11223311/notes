.class Lcom/youku/widget/SelectnessTabView$MyAdapter$2;
.super Ljava/lang/Object;
.source "SelectnessTabView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/widget/SelectnessTabView$MyAdapter;->onBindViewHolder(Lcom/youku/widget/SelectnessTabView$ItemViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/youku/widget/SelectnessTabView$MyAdapter;

.field final synthetic val$mCardsInfo:Lcom/youku/vo/CardsInfo;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/youku/widget/SelectnessTabView$MyAdapter;Lcom/youku/vo/CardsInfo;I)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Lcom/youku/widget/SelectnessTabView$MyAdapter$2;->this$1:Lcom/youku/widget/SelectnessTabView$MyAdapter;

    iput-object p2, p0, Lcom/youku/widget/SelectnessTabView$MyAdapter$2;->val$mCardsInfo:Lcom/youku/vo/CardsInfo;

    iput p3, p0, Lcom/youku/widget/SelectnessTabView$MyAdapter$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 235
    iget-object v2, p0, Lcom/youku/widget/SelectnessTabView$MyAdapter$2;->val$mCardsInfo:Lcom/youku/vo/CardsInfo;

    iget-object v1, v2, Lcom/youku/vo/CardsInfo;->skip_inf:Lcom/youku/vo/SkipInfo;

    .line 236
    .local v1, "skipinfo":Lcom/youku/vo/SkipInfo;
    if-nez v1, :cond_1

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    iget-object v2, p0, Lcom/youku/widget/SelectnessTabView$MyAdapter$2;->this$1:Lcom/youku/widget/SelectnessTabView$MyAdapter;

    iget-object v2, v2, Lcom/youku/widget/SelectnessTabView$MyAdapter;->this$0:Lcom/youku/widget/SelectnessTabView;

    invoke-static {v2}, Lcom/youku/widget/SelectnessTabView;->access$000(Lcom/youku/widget/SelectnessTabView;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/youku/vo/SkipInfo;->skip(Landroid/app/Activity;)V

    .line 241
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 242
    .local v0, "from":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "type"

    iget-object v3, p0, Lcom/youku/widget/SelectnessTabView$MyAdapter$2;->this$1:Lcom/youku/widget/SelectnessTabView$MyAdapter;

    invoke-static {v3}, Lcom/youku/widget/SelectnessTabView$MyAdapter;->access$100(Lcom/youku/widget/SelectnessTabView$MyAdapter;)Lcom/youku/vo/SkipInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/youku/vo/SkipInfo;->channel_id:Ljava/lang/String;

    invoke-static {v3}, Lcom/tudou/service/classify/ClassifyManager;->getChannelName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    const-string v2, "themename"

    iget-object v3, p0, Lcom/youku/widget/SelectnessTabView$MyAdapter$2;->this$1:Lcom/youku/widget/SelectnessTabView$MyAdapter;

    invoke-static {v3}, Lcom/youku/widget/SelectnessTabView$MyAdapter;->access$200(Lcom/youku/widget/SelectnessTabView$MyAdapter;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    const-string v2, "video"

    iget-object v3, v1, Lcom/youku/vo/SkipInfo;->skip_type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 245
    iget-object v2, v1, Lcom/youku/vo/SkipInfo;->video_id:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 246
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "t1.category_scategory.videoclick.1_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/youku/vo/SkipInfo;->video_id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/youku/widget/SelectnessTabView$MyAdapter$2;->val$position:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0

    .line 247
    :cond_2
    iget-object v2, v1, Lcom/youku/vo/SkipInfo;->album_id:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 248
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "t1.category_scategory.videoclick.1_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/youku/vo/SkipInfo;->album_id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/youku/widget/SelectnessTabView$MyAdapter$2;->val$position:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    goto/16 :goto_0

    .line 251
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "t1.category_scategory.channelVideoclick_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/youku/widget/SelectnessTabView$MyAdapter$2;->val$position:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    goto/16 :goto_0
.end method
