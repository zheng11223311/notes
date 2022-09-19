.class Lcom/youku/widget/SelectnessTabView$MyAdapter$1;
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


# direct methods
.method constructor <init>(Lcom/youku/widget/SelectnessTabView$MyAdapter;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lcom/youku/widget/SelectnessTabView$MyAdapter$1;->this$1:Lcom/youku/widget/SelectnessTabView$MyAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 203
    iget-object v1, p0, Lcom/youku/widget/SelectnessTabView$MyAdapter$1;->this$1:Lcom/youku/widget/SelectnessTabView$MyAdapter;

    invoke-static {v1}, Lcom/youku/widget/SelectnessTabView$MyAdapter;->access$100(Lcom/youku/widget/SelectnessTabView$MyAdapter;)Lcom/youku/vo/SkipInfo;

    move-result-object v1

    if-nez v1, :cond_0

    .line 212
    :goto_0
    return-void

    .line 206
    :cond_0
    iget-object v1, p0, Lcom/youku/widget/SelectnessTabView$MyAdapter$1;->this$1:Lcom/youku/widget/SelectnessTabView$MyAdapter;

    invoke-static {v1}, Lcom/youku/widget/SelectnessTabView$MyAdapter;->access$100(Lcom/youku/widget/SelectnessTabView$MyAdapter;)Lcom/youku/vo/SkipInfo;

    move-result-object v2

    iget-object v1, p0, Lcom/youku/widget/SelectnessTabView$MyAdapter$1;->this$1:Lcom/youku/widget/SelectnessTabView$MyAdapter;

    iget-object v1, v1, Lcom/youku/widget/SelectnessTabView$MyAdapter;->this$0:Lcom/youku/widget/SelectnessTabView;

    invoke-static {v1}, Lcom/youku/widget/SelectnessTabView;->access$000(Lcom/youku/widget/SelectnessTabView;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v2, v1}, Lcom/youku/vo/SkipInfo;->skip(Landroid/app/Activity;)V

    .line 208
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 209
    .local v0, "from":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "type"

    iget-object v2, p0, Lcom/youku/widget/SelectnessTabView$MyAdapter$1;->this$1:Lcom/youku/widget/SelectnessTabView$MyAdapter;

    invoke-static {v2}, Lcom/youku/widget/SelectnessTabView$MyAdapter;->access$100(Lcom/youku/widget/SelectnessTabView$MyAdapter;)Lcom/youku/vo/SkipInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/youku/vo/SkipInfo;->channel_id:Ljava/lang/String;

    invoke-static {v2}, Lcom/tudou/service/classify/ClassifyManager;->getChannelName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    const-string v1, "themename"

    iget-object v2, p0, Lcom/youku/widget/SelectnessTabView$MyAdapter$1;->this$1:Lcom/youku/widget/SelectnessTabView$MyAdapter;

    invoke-static {v2}, Lcom/youku/widget/SelectnessTabView$MyAdapter;->access$200(Lcom/youku/widget/SelectnessTabView$MyAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    const-string v1, "t1.category_scategory.title"

    invoke-static {v1, v0}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0
.end method
