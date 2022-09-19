.class Lcom/tudou/adapter/AttentionAdapter$1$2$1;
.super Ljava/lang/Object;
.source "AttentionAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/adapter/AttentionAdapter$1$2;->onSucess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/tudou/adapter/AttentionAdapter$1$2;


# direct methods
.method constructor <init>(Lcom/tudou/adapter/AttentionAdapter$1$2;)V
    .locals 0

    .prologue
    .line 318
    iput-object p1, p0, Lcom/tudou/adapter/AttentionAdapter$1$2$1;->this$2:Lcom/tudou/adapter/AttentionAdapter$1$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const v6, 0x7f020852

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 322
    const v2, 0x7f0d01df

    invoke-static {v2}, Lcom/youku/util/Util;->showTips(I)V

    .line 323
    iget-object v2, p0, Lcom/tudou/adapter/AttentionAdapter$1$2$1;->this$2:Lcom/tudou/adapter/AttentionAdapter$1$2;

    iget-object v2, v2, Lcom/tudou/adapter/AttentionAdapter$1$2;->this$1:Lcom/tudou/adapter/AttentionAdapter$1;

    iget-object v2, v2, Lcom/tudou/adapter/AttentionAdapter$1;->val$viewholder:Lcom/tudou/adapter/AttentionAdapter$ViewHolder;

    iget v2, v2, Lcom/tudou/adapter/AttentionAdapter$ViewHolder;->id:I

    iget-object v3, p0, Lcom/tudou/adapter/AttentionAdapter$1$2$1;->this$2:Lcom/tudou/adapter/AttentionAdapter$1$2;

    iget-object v3, v3, Lcom/tudou/adapter/AttentionAdapter$1$2;->this$1:Lcom/tudou/adapter/AttentionAdapter$1;

    iget-object v3, v3, Lcom/tudou/adapter/AttentionAdapter$1;->val$user:Lcom/youku/vo/Podcast$Users$Subs;

    iget v3, v3, Lcom/youku/vo/Podcast$Users$Subs;->id:I

    if-eq v2, v3, :cond_3

    .line 324
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/tudou/adapter/AttentionAdapter$1$2$1;->this$2:Lcom/tudou/adapter/AttentionAdapter$1$2;

    iget-object v2, v2, Lcom/tudou/adapter/AttentionAdapter$1$2;->this$1:Lcom/tudou/adapter/AttentionAdapter$1;

    iget-object v2, v2, Lcom/tudou/adapter/AttentionAdapter$1;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v2

    iget-object v3, p0, Lcom/tudou/adapter/AttentionAdapter$1$2$1;->this$2:Lcom/tudou/adapter/AttentionAdapter$1$2;

    iget-object v3, v3, Lcom/tudou/adapter/AttentionAdapter$1$2;->this$1:Lcom/tudou/adapter/AttentionAdapter$1;

    iget-object v3, v3, Lcom/tudou/adapter/AttentionAdapter$1;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int/2addr v2, v3

    if-ge v0, v2, :cond_0

    .line 325
    iget-object v2, p0, Lcom/tudou/adapter/AttentionAdapter$1$2$1;->this$2:Lcom/tudou/adapter/AttentionAdapter$1$2;

    iget-object v2, v2, Lcom/tudou/adapter/AttentionAdapter$1$2;->this$1:Lcom/tudou/adapter/AttentionAdapter$1;

    iget-object v2, v2, Lcom/tudou/adapter/AttentionAdapter$1;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tudou/adapter/AttentionAdapter$ViewHolder;

    .line 326
    .local v1, "vhTemp":Lcom/tudou/adapter/AttentionAdapter$ViewHolder;
    if-nez v1, :cond_1

    .line 345
    .end local v0    # "i":I
    .end local v1    # "vhTemp":Lcom/tudou/adapter/AttentionAdapter$ViewHolder;
    :cond_0
    :goto_1
    return-void

    .line 329
    .restart local v0    # "i":I
    .restart local v1    # "vhTemp":Lcom/tudou/adapter/AttentionAdapter$ViewHolder;
    :cond_1
    iget v2, v1, Lcom/tudou/adapter/AttentionAdapter$ViewHolder;->id:I

    iget-object v3, p0, Lcom/tudou/adapter/AttentionAdapter$1$2$1;->this$2:Lcom/tudou/adapter/AttentionAdapter$1$2;

    iget-object v3, v3, Lcom/tudou/adapter/AttentionAdapter$1$2;->this$1:Lcom/tudou/adapter/AttentionAdapter$1;

    iget-object v3, v3, Lcom/tudou/adapter/AttentionAdapter$1;->val$user:Lcom/youku/vo/Podcast$Users$Subs;

    iget v3, v3, Lcom/youku/vo/Podcast$Users$Subs;->id:I

    if-ne v2, v3, :cond_2

    .line 330
    iget-object v2, v1, Lcom/tudou/adapter/AttentionAdapter$ViewHolder;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    .line 332
    iget-object v2, p0, Lcom/tudou/adapter/AttentionAdapter$1$2$1;->this$2:Lcom/tudou/adapter/AttentionAdapter$1$2;

    iget-object v2, v2, Lcom/tudou/adapter/AttentionAdapter$1$2;->val$view:Landroid/view/View;

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 333
    iget-object v2, v1, Lcom/tudou/adapter/AttentionAdapter$ViewHolder;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 335
    iget-object v2, p0, Lcom/tudou/adapter/AttentionAdapter$1$2$1;->this$2:Lcom/tudou/adapter/AttentionAdapter$1$2;

    iget-object v2, v2, Lcom/tudou/adapter/AttentionAdapter$1$2;->val$view:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 324
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 341
    .end local v0    # "i":I
    .end local v1    # "vhTemp":Lcom/tudou/adapter/AttentionAdapter$ViewHolder;
    :cond_3
    iget-object v2, p0, Lcom/tudou/adapter/AttentionAdapter$1$2$1;->this$2:Lcom/tudou/adapter/AttentionAdapter$1$2;

    iget-object v2, v2, Lcom/tudou/adapter/AttentionAdapter$1$2;->val$view:Landroid/view/View;

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 342
    iget-object v2, p0, Lcom/tudou/adapter/AttentionAdapter$1$2$1;->this$2:Lcom/tudou/adapter/AttentionAdapter$1$2;

    iget-object v2, v2, Lcom/tudou/adapter/AttentionAdapter$1$2;->val$view:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 343
    iget-object v2, p0, Lcom/tudou/adapter/AttentionAdapter$1$2$1;->this$2:Lcom/tudou/adapter/AttentionAdapter$1$2;

    iget-object v2, v2, Lcom/tudou/adapter/AttentionAdapter$1$2;->this$1:Lcom/tudou/adapter/AttentionAdapter$1;

    iget-object v2, v2, Lcom/tudou/adapter/AttentionAdapter$1;->val$viewholder:Lcom/tudou/adapter/AttentionAdapter$ViewHolder;

    iget-object v2, v2, Lcom/tudou/adapter/AttentionAdapter$ViewHolder;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1
.end method
