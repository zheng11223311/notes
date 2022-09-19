.class Lcom/tudou/adapter/ClassifyAllFiltrateAdapter$2;
.super Ljava/lang/Object;
.source "ClassifyAllFiltrateAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/adapter/ClassifyAllFiltrateAdapter;->itemState(IILjava/lang/String;)Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/adapter/ClassifyAllFiltrateAdapter;

.field final synthetic val$position:I

.field final synthetic val$selectIndex:I


# direct methods
.method constructor <init>(Lcom/tudou/adapter/ClassifyAllFiltrateAdapter;II)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/tudou/adapter/ClassifyAllFiltrateAdapter$2;->this$0:Lcom/tudou/adapter/ClassifyAllFiltrateAdapter;

    iput p2, p0, Lcom/tudou/adapter/ClassifyAllFiltrateAdapter$2;->val$position:I

    iput p3, p0, Lcom/tudou/adapter/ClassifyAllFiltrateAdapter$2;->val$selectIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 162
    iget v1, p0, Lcom/tudou/adapter/ClassifyAllFiltrateAdapter$2;->val$position:I

    if-nez v1, :cond_1

    .line 163
    iget-object v1, p0, Lcom/tudou/adapter/ClassifyAllFiltrateAdapter$2;->this$0:Lcom/tudou/adapter/ClassifyAllFiltrateAdapter;

    invoke-static {v1}, Lcom/tudou/adapter/ClassifyAllFiltrateAdapter;->access$100(Lcom/tudou/adapter/ClassifyAllFiltrateAdapter;)Lcom/youku/vo/ChannelFliterBean;

    move-result-object v1

    iget-object v1, v1, Lcom/youku/vo/ChannelFliterBean;->sort:Ljava/util/List;

    iget v2, p0, Lcom/tudou/adapter/ClassifyAllFiltrateAdapter$2;->val$selectIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/ChannelFliterSortItemTudouBean;

    iget-boolean v1, v1, Lcom/youku/vo/ChannelFliterSortItemTudouBean;->isSelected:Z

    if-eqz v1, :cond_2

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    iget v1, p0, Lcom/tudou/adapter/ClassifyAllFiltrateAdapter$2;->val$position:I

    add-int/lit8 v0, v1, -0x1

    .line 168
    .local v0, "index":I
    iget-object v1, p0, Lcom/tudou/adapter/ClassifyAllFiltrateAdapter$2;->this$0:Lcom/tudou/adapter/ClassifyAllFiltrateAdapter;

    invoke-static {v1}, Lcom/tudou/adapter/ClassifyAllFiltrateAdapter;->access$100(Lcom/tudou/adapter/ClassifyAllFiltrateAdapter;)Lcom/youku/vo/ChannelFliterBean;

    move-result-object v1

    iget-object v1, v1, Lcom/youku/vo/ChannelFliterBean;->items:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/ChannelFliterTypeTudouBean;

    iget-object v1, v1, Lcom/youku/vo/ChannelFliterTypeTudouBean;->secondTags:Ljava/util/List;

    iget v2, p0, Lcom/tudou/adapter/ClassifyAllFiltrateAdapter$2;->val$selectIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/ChannelFliterTypeItemTudouBean;

    iget-boolean v1, v1, Lcom/youku/vo/ChannelFliterTypeItemTudouBean;->isSelected:Z

    if-nez v1, :cond_0

    .line 173
    .end local v0    # "index":I
    :cond_2
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v1

    if-nez v1, :cond_3

    .line 174
    const v1, 0x7f0d02c3

    invoke-static {v1}, Lcom/youku/util/Util;->showTips(I)V

    goto :goto_0

    .line 178
    :cond_3
    iget-object v1, p0, Lcom/tudou/adapter/ClassifyAllFiltrateAdapter$2;->this$0:Lcom/tudou/adapter/ClassifyAllFiltrateAdapter;

    iget v2, p0, Lcom/tudou/adapter/ClassifyAllFiltrateAdapter$2;->val$position:I

    invoke-static {v1, v2}, Lcom/tudou/adapter/ClassifyAllFiltrateAdapter;->access$200(Lcom/tudou/adapter/ClassifyAllFiltrateAdapter;I)V

    .line 180
    iget v1, p0, Lcom/tudou/adapter/ClassifyAllFiltrateAdapter$2;->val$position:I

    if-nez v1, :cond_5

    .line 181
    iget-object v1, p0, Lcom/tudou/adapter/ClassifyAllFiltrateAdapter$2;->this$0:Lcom/tudou/adapter/ClassifyAllFiltrateAdapter;

    invoke-static {v1}, Lcom/tudou/adapter/ClassifyAllFiltrateAdapter;->access$100(Lcom/tudou/adapter/ClassifyAllFiltrateAdapter;)Lcom/youku/vo/ChannelFliterBean;

    move-result-object v1

    iget-object v1, v1, Lcom/youku/vo/ChannelFliterBean;->sort:Ljava/util/List;

    iget v2, p0, Lcom/tudou/adapter/ClassifyAllFiltrateAdapter$2;->val$selectIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/ChannelFliterSortItemTudouBean;

    iput-boolean v3, v1, Lcom/youku/vo/ChannelFliterSortItemTudouBean;->isSelected:Z

    .line 185
    :goto_1
    iget-object v1, p0, Lcom/tudou/adapter/ClassifyAllFiltrateAdapter$2;->this$0:Lcom/tudou/adapter/ClassifyAllFiltrateAdapter;

    invoke-static {v1}, Lcom/tudou/adapter/ClassifyAllFiltrateAdapter;->access$000(Lcom/tudou/adapter/ClassifyAllFiltrateAdapter;)Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 186
    iget-object v1, p0, Lcom/tudou/adapter/ClassifyAllFiltrateAdapter$2;->this$0:Lcom/tudou/adapter/ClassifyAllFiltrateAdapter;

    invoke-static {v1}, Lcom/tudou/adapter/ClassifyAllFiltrateAdapter;->access$000(Lcom/tudou/adapter/ClassifyAllFiltrateAdapter;)Ljava/util/HashMap;

    move-result-object v1

    iget v2, p0, Lcom/tudou/adapter/ClassifyAllFiltrateAdapter$2;->val$position:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/ClassifyAllFiltrateStateBean;

    iget v2, p0, Lcom/tudou/adapter/ClassifyAllFiltrateAdapter$2;->val$selectIndex:I

    iput v2, v1, Lcom/youku/vo/ClassifyAllFiltrateStateBean;->selectItemIndex:I

    .line 191
    :cond_4
    iget-object v1, p0, Lcom/tudou/adapter/ClassifyAllFiltrateAdapter$2;->this$0:Lcom/tudou/adapter/ClassifyAllFiltrateAdapter;

    iget v2, p0, Lcom/tudou/adapter/ClassifyAllFiltrateAdapter$2;->val$position:I

    invoke-static {v1, v2}, Lcom/tudou/adapter/ClassifyAllFiltrateAdapter;->access$300(Lcom/tudou/adapter/ClassifyAllFiltrateAdapter;I)V

    .line 194
    iget-object v1, p0, Lcom/tudou/adapter/ClassifyAllFiltrateAdapter$2;->this$0:Lcom/tudou/adapter/ClassifyAllFiltrateAdapter;

    invoke-virtual {v1}, Lcom/tudou/adapter/ClassifyAllFiltrateAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 183
    :cond_5
    iget-object v1, p0, Lcom/tudou/adapter/ClassifyAllFiltrateAdapter$2;->this$0:Lcom/tudou/adapter/ClassifyAllFiltrateAdapter;

    invoke-static {v1}, Lcom/tudou/adapter/ClassifyAllFiltrateAdapter;->access$100(Lcom/tudou/adapter/ClassifyAllFiltrateAdapter;)Lcom/youku/vo/ChannelFliterBean;

    move-result-object v1

    iget-object v1, v1, Lcom/youku/vo/ChannelFliterBean;->items:Ljava/util/List;

    iget v2, p0, Lcom/tudou/adapter/ClassifyAllFiltrateAdapter$2;->val$position:I

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/ChannelFliterTypeTudouBean;

    iget-object v1, v1, Lcom/youku/vo/ChannelFliterTypeTudouBean;->secondTags:Ljava/util/List;

    iget v2, p0, Lcom/tudou/adapter/ClassifyAllFiltrateAdapter$2;->val$selectIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/ChannelFliterTypeItemTudouBean;

    iput-boolean v3, v1, Lcom/youku/vo/ChannelFliterTypeItemTudouBean;->isSelected:Z

    goto :goto_1
.end method
