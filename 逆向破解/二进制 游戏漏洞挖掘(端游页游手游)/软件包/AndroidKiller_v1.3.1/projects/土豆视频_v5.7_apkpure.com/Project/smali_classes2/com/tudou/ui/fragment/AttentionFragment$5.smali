.class Lcom/tudou/ui/fragment/AttentionFragment$5;
.super Ljava/lang/Object;
.source "AttentionFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/AttentionFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/AttentionFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/AttentionFragment;)V
    .locals 0

    .prologue
    .line 287
    iput-object p1, p0, Lcom/tudou/ui/fragment/AttentionFragment$5;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    .line 291
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/Podcast$Users$Subs;

    .line 294
    .local v1, "user":Lcom/youku/vo/Podcast$Users$Subs;
    if-nez v1, :cond_0

    .line 323
    :goto_0
    return-void

    .line 297
    :cond_0
    const-string v2, "t1.subscribe_mysubscribe.perchannel"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 298
    iget-object v2, p0, Lcom/tudou/ui/fragment/AttentionFragment$5;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/AttentionFragment;->access$200(Lcom/tudou/ui/fragment/AttentionFragment;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 299
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v2

    if-nez v2, :cond_1

    .line 300
    const v2, 0x7f0d02c3

    invoke-static {v2}, Lcom/youku/util/Util;->showTips(I)V

    goto :goto_0

    .line 304
    :cond_1
    iget v2, v1, Lcom/youku/vo/Podcast$Users$Subs;->id:I

    iget v3, v1, Lcom/youku/vo/Podcast$Users$Subs;->type:I

    invoke-static {v2, v3}, Lcom/tudou/ui/fragment/AttentionFragment;->clearSubscribeCount(II)V

    .line 305
    iget-object v2, p0, Lcom/tudou/ui/fragment/AttentionFragment$5;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    const v3, 0x7f0c07c0

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tudou/ui/fragment/AttentionFragment;->access$1402(Lcom/tudou/ui/fragment/AttentionFragment;Landroid/view/View;)Landroid/view/View;

    .line 306
    iget-object v2, p0, Lcom/tudou/ui/fragment/AttentionFragment$5;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/AttentionFragment;->access$1400(Lcom/tudou/ui/fragment/AttentionFragment;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 308
    iget-object v2, p0, Lcom/tudou/ui/fragment/AttentionFragment$5;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    iget-object v2, v2, Lcom/tudou/ui/fragment/AttentionFragment;->context:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v1, Lcom/youku/vo/Podcast$Users$Subs;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, v1, Lcom/youku/vo/Podcast$Users$Subs;->type:I

    iget-object v5, v1, Lcom/youku/vo/Podcast$Users$Subs;->title:Ljava/lang/String;

    invoke-static {v2, v3, v4, v5}, Lcom/tudou/android/TudouApi;->goChannelByid(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 311
    :cond_2
    const v2, 0x7f0c07c3

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 313
    .local v0, "img":Landroid/widget/ImageView;
    iget-boolean v2, v1, Lcom/youku/vo/Podcast$Users$Subs;->isdelete:Z

    if-nez v2, :cond_3

    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, v1, Lcom/youku/vo/Podcast$Users$Subs;->isdelete:Z

    .line 314
    iget-boolean v2, v1, Lcom/youku/vo/Podcast$Users$Subs;->isdelete:Z

    if-eqz v2, :cond_4

    .line 315
    iget-object v2, p0, Lcom/tudou/ui/fragment/AttentionFragment$5;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    iget-object v2, v2, Lcom/tudou/ui/fragment/AttentionFragment;->adapter:Lcom/tudou/adapter/AttentionAdapter;

    invoke-virtual {v2, v1}, Lcom/tudou/adapter/AttentionAdapter;->addToDeleteList(Lcom/youku/vo/Podcast$Users$Subs;)V

    .line 316
    const v2, 0x7f0207fe

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 321
    :goto_2
    iget-object v2, p0, Lcom/tudou/ui/fragment/AttentionFragment$5;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/AttentionFragment;->access$600(Lcom/tudou/ui/fragment/AttentionFragment;)V

    goto :goto_0

    .line 313
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 318
    :cond_4
    iget-object v2, p0, Lcom/tudou/ui/fragment/AttentionFragment$5;->this$0:Lcom/tudou/ui/fragment/AttentionFragment;

    iget-object v2, v2, Lcom/tudou/ui/fragment/AttentionFragment;->adapter:Lcom/tudou/adapter/AttentionAdapter;

    invoke-virtual {v2, v1}, Lcom/tudou/adapter/AttentionAdapter;->removeFromDeleteList(Lcom/youku/vo/Podcast$Users$Subs;)V

    .line 319
    const v2, 0x7f0207ff

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2
.end method
