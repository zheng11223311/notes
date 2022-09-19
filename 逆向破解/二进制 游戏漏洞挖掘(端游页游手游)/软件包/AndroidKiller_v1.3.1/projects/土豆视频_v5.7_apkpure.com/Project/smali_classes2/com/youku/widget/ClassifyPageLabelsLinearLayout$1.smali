.class Lcom/youku/widget/ClassifyPageLabelsLinearLayout$1;
.super Ljava/lang/Object;
.source "ClassifyPageLabelsLinearLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/widget/ClassifyPageLabelsLinearLayout;->setData(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/widget/ClassifyPageLabelsLinearLayout;

.field final synthetic val$mChannelPageLabels:Lcom/youku/vo/ChannelPageLabels;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/youku/widget/ClassifyPageLabelsLinearLayout;Lcom/youku/vo/ChannelPageLabels;I)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/youku/widget/ClassifyPageLabelsLinearLayout$1;->this$0:Lcom/youku/widget/ClassifyPageLabelsLinearLayout;

    iput-object p2, p0, Lcom/youku/widget/ClassifyPageLabelsLinearLayout$1;->val$mChannelPageLabels:Lcom/youku/vo/ChannelPageLabels;

    iput p3, p0, Lcom/youku/widget/ClassifyPageLabelsLinearLayout$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 146
    iget-object v2, p0, Lcom/youku/widget/ClassifyPageLabelsLinearLayout$1;->val$mChannelPageLabels:Lcom/youku/vo/ChannelPageLabels;

    iget-object v1, v2, Lcom/youku/vo/ChannelPageLabels;->skip_inf:Lcom/youku/vo/SkipInfo;

    .line 147
    .local v1, "skipInfo":Lcom/youku/vo/SkipInfo;
    if-nez v1, :cond_1

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    iget-object v2, p0, Lcom/youku/widget/ClassifyPageLabelsLinearLayout$1;->this$0:Lcom/youku/widget/ClassifyPageLabelsLinearLayout;

    invoke-static {v2}, Lcom/youku/widget/ClassifyPageLabelsLinearLayout;->access$000(Lcom/youku/widget/ClassifyPageLabelsLinearLayout;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/youku/vo/SkipInfo;->skip(Landroid/app/Activity;)V

    .line 152
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 153
    .local v0, "from":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "type"

    iget-object v3, p0, Lcom/youku/widget/ClassifyPageLabelsLinearLayout$1;->this$0:Lcom/youku/widget/ClassifyPageLabelsLinearLayout;

    invoke-static {v3}, Lcom/youku/widget/ClassifyPageLabelsLinearLayout;->access$100(Lcom/youku/widget/ClassifyPageLabelsLinearLayout;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const-string v2, "ct"

    iget-object v3, p0, Lcom/youku/widget/ClassifyPageLabelsLinearLayout$1;->val$mChannelPageLabels:Lcom/youku/vo/ChannelPageLabels;

    iget-object v3, v3, Lcom/youku/vo/ChannelPageLabels;->label_title:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    const-string v2, "filter_tag"

    iget-object v3, v1, Lcom/youku/vo/SkipInfo;->skip_type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "-2"

    iget-object v3, v1, Lcom/youku/vo/SkipInfo;->brief_filter:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 158
    const-string v2, "t1.category_scategory.channelall"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0

    .line 159
    :cond_2
    const-string v2, "video"

    iget-object v3, v1, Lcom/youku/vo/SkipInfo;->skip_type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 160
    iget-object v2, v1, Lcom/youku/vo/SkipInfo;->video_id:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 161
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "t1.category_scategory.subchannel.1_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/youku/vo/SkipInfo;->video_id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/youku/widget/ClassifyPageLabelsLinearLayout$1;->val$position:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0

    .line 162
    :cond_3
    iget-object v2, v1, Lcom/youku/vo/SkipInfo;->album_id:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 163
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "t1.category_scategory.subchannel.1_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/youku/vo/SkipInfo;->album_id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/youku/widget/ClassifyPageLabelsLinearLayout$1;->val$position:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    goto/16 :goto_0

    .line 166
    :cond_4
    const-string v2, "t1.category_scategory.subchannel_"

    invoke-static {v2, v0}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    goto/16 :goto_0
.end method
