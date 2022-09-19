.class Lcom/tudou/detail/fragment/VideoActorFragment$13;
.super Ljava/lang/Object;
.source "VideoActorFragment.java"

# interfaces
.implements Lcom/tudou/detail/DetailModel$OnActorInfoGettedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/fragment/VideoActorFragment;->setBaseData(Lcom/youku/vo/NewVideoDetail$Detail$Actor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/detail/fragment/VideoActorFragment;


# direct methods
.method constructor <init>(Lcom/tudou/detail/fragment/VideoActorFragment;)V
    .locals 0

    .prologue
    .line 427
    iput-object p1, p0, Lcom/tudou/detail/fragment/VideoActorFragment$13;->this$0:Lcom/tudou/detail/fragment/VideoActorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActorInfoGetted(ILorg/json/JSONObject;Z)V
    .locals 7
    .param p1, "actorId"    # I
    .param p2, "json"    # Lorg/json/JSONObject;
    .param p3, "success"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 430
    if-eqz p3, :cond_6

    .line 431
    if-eqz p2, :cond_5

    .line 432
    iget-object v4, p0, Lcom/tudou/detail/fragment/VideoActorFragment$13;->this$0:Lcom/tudou/detail/fragment/VideoActorFragment;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v5, Lcom/tudou/detail/vo/ActorInfo;

    invoke-static {v1, v5}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tudou/detail/vo/ActorInfo;

    invoke-static {v4, v1}, Lcom/tudou/detail/fragment/VideoActorFragment;->access$702(Lcom/tudou/detail/fragment/VideoActorFragment;Lcom/tudou/detail/vo/ActorInfo;)Lcom/tudou/detail/vo/ActorInfo;

    .line 434
    iget-object v1, p0, Lcom/tudou/detail/fragment/VideoActorFragment$13;->this$0:Lcom/tudou/detail/fragment/VideoActorFragment;

    invoke-static {v1}, Lcom/tudou/detail/fragment/VideoActorFragment;->access$800(Lcom/tudou/detail/fragment/VideoActorFragment;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v4, p0, Lcom/tudou/detail/fragment/VideoActorFragment$13;->this$0:Lcom/tudou/detail/fragment/VideoActorFragment;

    invoke-static {v4}, Lcom/tudou/detail/fragment/VideoActorFragment;->access$700(Lcom/tudou/detail/fragment/VideoActorFragment;)Lcom/tudou/detail/vo/ActorInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/tudou/detail/vo/ActorInfo;->occupation:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 435
    iget-object v1, p0, Lcom/tudou/detail/fragment/VideoActorFragment$13;->this$0:Lcom/tudou/detail/fragment/VideoActorFragment;

    invoke-static {v1}, Lcom/tudou/detail/fragment/VideoActorFragment;->access$900(Lcom/tudou/detail/fragment/VideoActorFragment;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v4, p0, Lcom/tudou/detail/fragment/VideoActorFragment$13;->this$0:Lcom/tudou/detail/fragment/VideoActorFragment;

    invoke-static {v4}, Lcom/tudou/detail/fragment/VideoActorFragment;->access$700(Lcom/tudou/detail/fragment/VideoActorFragment;)Lcom/tudou/detail/vo/ActorInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/tudou/detail/vo/ActorInfo;->area:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 436
    iget-object v1, p0, Lcom/tudou/detail/fragment/VideoActorFragment$13;->this$0:Lcom/tudou/detail/fragment/VideoActorFragment;

    invoke-static {v1}, Lcom/tudou/detail/fragment/VideoActorFragment;->access$1000(Lcom/tudou/detail/fragment/VideoActorFragment;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v4, p0, Lcom/tudou/detail/fragment/VideoActorFragment$13;->this$0:Lcom/tudou/detail/fragment/VideoActorFragment;

    invoke-static {v4}, Lcom/tudou/detail/fragment/VideoActorFragment;->access$700(Lcom/tudou/detail/fragment/VideoActorFragment;)Lcom/tudou/detail/vo/ActorInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/tudou/detail/vo/ActorInfo;->birthday:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 437
    iget-object v1, p0, Lcom/tudou/detail/fragment/VideoActorFragment$13;->this$0:Lcom/tudou/detail/fragment/VideoActorFragment;

    invoke-static {v1}, Lcom/tudou/detail/fragment/VideoActorFragment;->access$1100(Lcom/tudou/detail/fragment/VideoActorFragment;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v4, p0, Lcom/tudou/detail/fragment/VideoActorFragment$13;->this$0:Lcom/tudou/detail/fragment/VideoActorFragment;

    invoke-static {v4}, Lcom/tudou/detail/fragment/VideoActorFragment;->access$700(Lcom/tudou/detail/fragment/VideoActorFragment;)Lcom/tudou/detail/vo/ActorInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/tudou/detail/vo/ActorInfo;->constellation:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 438
    iget-object v1, p0, Lcom/tudou/detail/fragment/VideoActorFragment$13;->this$0:Lcom/tudou/detail/fragment/VideoActorFragment;

    invoke-static {v1}, Lcom/tudou/detail/fragment/VideoActorFragment;->access$100(Lcom/tudou/detail/fragment/VideoActorFragment;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v1, p0, Lcom/tudou/detail/fragment/VideoActorFragment$13;->this$0:Lcom/tudou/detail/fragment/VideoActorFragment;

    invoke-static {v1}, Lcom/tudou/detail/fragment/VideoActorFragment;->access$700(Lcom/tudou/detail/fragment/VideoActorFragment;)Lcom/tudou/detail/vo/ActorInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/tudou/detail/vo/ActorInfo;->desc:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "\u6682\u65e0\u5176\u4ed6\u4fe1\u606f"

    :goto_0
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 439
    iget-object v1, p0, Lcom/tudou/detail/fragment/VideoActorFragment$13;->this$0:Lcom/tudou/detail/fragment/VideoActorFragment;

    iget-object v4, v1, Lcom/tudou/detail/fragment/VideoActorFragment;->mDescGetHeight:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tudou/detail/fragment/VideoActorFragment$13;->this$0:Lcom/tudou/detail/fragment/VideoActorFragment;

    invoke-static {v1}, Lcom/tudou/detail/fragment/VideoActorFragment;->access$700(Lcom/tudou/detail/fragment/VideoActorFragment;)Lcom/tudou/detail/vo/ActorInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/tudou/detail/vo/ActorInfo;->desc:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "\u6682\u65e0\u5176\u4ed6\u4fe1\u606f"

    :goto_1
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 441
    iget-object v1, p0, Lcom/tudou/detail/fragment/VideoActorFragment$13;->this$0:Lcom/tudou/detail/fragment/VideoActorFragment;

    invoke-static {v1}, Lcom/tudou/detail/fragment/VideoActorFragment;->access$700(Lcom/tudou/detail/fragment/VideoActorFragment;)Lcom/tudou/detail/vo/ActorInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tudou/detail/vo/ActorInfo;->getTitles()Ljava/util/ArrayList;

    move-result-object v0

    .line 442
    .local v0, "tTitles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 443
    iget-object v4, p0, Lcom/tudou/detail/fragment/VideoActorFragment$13;->this$0:Lcom/tudou/detail/fragment/VideoActorFragment;

    if-nez p3, :cond_3

    move v1, v2

    :goto_2
    invoke-virtual {v4, v3, v1, v3}, Lcom/tudou/detail/fragment/VideoActorFragment;->showLoading(ZZZ)V

    .line 444
    iget-object v1, p0, Lcom/tudou/detail/fragment/VideoActorFragment$13;->this$0:Lcom/tudou/detail/fragment/VideoActorFragment;

    invoke-virtual {v1}, Lcom/tudou/detail/fragment/VideoActorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 445
    iget-object v1, p0, Lcom/tudou/detail/fragment/VideoActorFragment$13;->this$0:Lcom/tudou/detail/fragment/VideoActorFragment;

    new-instance v2, Lcom/tudou/detail/adapter/ActorCategorysAdapter;

    iget-object v4, p0, Lcom/tudou/detail/fragment/VideoActorFragment$13;->this$0:Lcom/tudou/detail/fragment/VideoActorFragment;

    invoke-virtual {v4}, Lcom/tudou/detail/fragment/VideoActorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v2, v4, v0}, Lcom/tudou/detail/adapter/ActorCategorysAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-static {v1, v2}, Lcom/tudou/detail/fragment/VideoActorFragment;->access$1202(Lcom/tudou/detail/fragment/VideoActorFragment;Lcom/tudou/detail/adapter/ActorCategorysAdapter;)Lcom/tudou/detail/adapter/ActorCategorysAdapter;

    .line 446
    iget-object v1, p0, Lcom/tudou/detail/fragment/VideoActorFragment$13;->this$0:Lcom/tudou/detail/fragment/VideoActorFragment;

    invoke-static {v1}, Lcom/tudou/detail/fragment/VideoActorFragment;->access$1200(Lcom/tudou/detail/fragment/VideoActorFragment;)Lcom/tudou/detail/adapter/ActorCategorysAdapter;

    move-result-object v1

    new-instance v2, Lcom/tudou/detail/fragment/VideoActorFragment$13$1;

    invoke-direct {v2, p0, v0}, Lcom/tudou/detail/fragment/VideoActorFragment$13$1;-><init>(Lcom/tudou/detail/fragment/VideoActorFragment$13;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Lcom/tudou/detail/adapter/ActorCategorysAdapter;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 473
    iget-object v1, p0, Lcom/tudou/detail/fragment/VideoActorFragment$13;->this$0:Lcom/tudou/detail/fragment/VideoActorFragment;

    invoke-static {v1}, Lcom/tudou/detail/fragment/VideoActorFragment;->access$200(Lcom/tudou/detail/fragment/VideoActorFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/detail/fragment/VideoActorFragment$13;->this$0:Lcom/tudou/detail/fragment/VideoActorFragment;

    invoke-static {v2}, Lcom/tudou/detail/fragment/VideoActorFragment;->access$1200(Lcom/tudou/detail/fragment/VideoActorFragment;)Lcom/tudou/detail/adapter/ActorCategorysAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 474
    iget-object v2, p0, Lcom/tudou/detail/fragment/VideoActorFragment$13;->this$0:Lcom/tudou/detail/fragment/VideoActorFragment;

    new-instance v4, Lcom/tudou/detail/adapter/ActorCatVideosAdapter;

    iget-object v1, p0, Lcom/tudou/detail/fragment/VideoActorFragment$13;->this$0:Lcom/tudou/detail/fragment/VideoActorFragment;

    invoke-virtual {v1}, Lcom/tudou/detail/fragment/VideoActorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v1, p0, Lcom/tudou/detail/fragment/VideoActorFragment$13;->this$0:Lcom/tudou/detail/fragment/VideoActorFragment;

    invoke-static {v1}, Lcom/tudou/detail/fragment/VideoActorFragment;->access$700(Lcom/tudou/detail/fragment/VideoActorFragment;)Lcom/tudou/detail/vo/ActorInfo;

    move-result-object v6

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v1}, Lcom/tudou/detail/vo/ActorInfo;->getVideosByCat(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v4, v5, v1}, Lcom/tudou/detail/adapter/ActorCatVideosAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-static {v2, v4}, Lcom/tudou/detail/fragment/VideoActorFragment;->access$1302(Lcom/tudou/detail/fragment/VideoActorFragment;Lcom/tudou/detail/adapter/ActorCatVideosAdapter;)Lcom/tudou/detail/adapter/ActorCatVideosAdapter;

    .line 475
    iget-object v1, p0, Lcom/tudou/detail/fragment/VideoActorFragment$13;->this$0:Lcom/tudou/detail/fragment/VideoActorFragment;

    invoke-static {v1}, Lcom/tudou/detail/fragment/VideoActorFragment;->access$1300(Lcom/tudou/detail/fragment/VideoActorFragment;)Lcom/tudou/detail/adapter/ActorCatVideosAdapter;

    move-result-object v1

    new-instance v2, Lcom/tudou/detail/fragment/VideoActorFragment$13$2;

    invoke-direct {v2, p0, v0}, Lcom/tudou/detail/fragment/VideoActorFragment$13$2;-><init>(Lcom/tudou/detail/fragment/VideoActorFragment$13;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Lcom/tudou/detail/adapter/ActorCatVideosAdapter;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 495
    iget-object v1, p0, Lcom/tudou/detail/fragment/VideoActorFragment$13;->this$0:Lcom/tudou/detail/fragment/VideoActorFragment;

    invoke-static {v1}, Lcom/tudou/detail/fragment/VideoActorFragment;->access$300(Lcom/tudou/detail/fragment/VideoActorFragment;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/detail/fragment/VideoActorFragment$13;->this$0:Lcom/tudou/detail/fragment/VideoActorFragment;

    invoke-static {v2}, Lcom/tudou/detail/fragment/VideoActorFragment;->access$1300(Lcom/tudou/detail/fragment/VideoActorFragment;)Lcom/tudou/detail/adapter/ActorCatVideosAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 497
    :cond_0
    new-instance v1, Lcom/tudou/detail/DetailModel;

    invoke-direct {v1}, Lcom/tudou/detail/DetailModel;-><init>()V

    iget-object v2, p0, Lcom/tudou/detail/fragment/VideoActorFragment$13;->this$0:Lcom/tudou/detail/fragment/VideoActorFragment;

    invoke-static {v2}, Lcom/tudou/detail/fragment/VideoActorFragment;->access$700(Lcom/tudou/detail/fragment/VideoActorFragment;)Lcom/tudou/detail/vo/ActorInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/tudou/detail/vo/ActorInfo;->name:Ljava/lang/String;

    new-instance v3, Lcom/tudou/detail/fragment/VideoActorFragment$13$3;

    invoke-direct {v3, p0}, Lcom/tudou/detail/fragment/VideoActorFragment$13$3;-><init>(Lcom/tudou/detail/fragment/VideoActorFragment$13;)V

    invoke-virtual {v1, v2, v3}, Lcom/tudou/detail/DetailModel;->getActorCorrelationAsyn(Ljava/lang/String;Lcom/tudou/detail/DetailModel$OnActorCorrelationGettedListener;)V

    .line 532
    .end local v0    # "tTitles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_3
    return-void

    .line 438
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u7b80\u4ecb:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/tudou/detail/fragment/VideoActorFragment$13;->this$0:Lcom/tudou/detail/fragment/VideoActorFragment;

    invoke-static {v5}, Lcom/tudou/detail/fragment/VideoActorFragment;->access$700(Lcom/tudou/detail/fragment/VideoActorFragment;)Lcom/tudou/detail/vo/ActorInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/tudou/detail/vo/ActorInfo;->desc:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 439
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u7b80\u4ecb:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/tudou/detail/fragment/VideoActorFragment$13;->this$0:Lcom/tudou/detail/fragment/VideoActorFragment;

    invoke-static {v5}, Lcom/tudou/detail/fragment/VideoActorFragment;->access$700(Lcom/tudou/detail/fragment/VideoActorFragment;)Lcom/tudou/detail/vo/ActorInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/tudou/detail/vo/ActorInfo;->desc:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .restart local v0    # "tTitles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    move v1, v3

    .line 443
    goto/16 :goto_2

    .line 523
    :cond_4
    iget-object v1, p0, Lcom/tudou/detail/fragment/VideoActorFragment$13;->this$0:Lcom/tudou/detail/fragment/VideoActorFragment;

    invoke-virtual {v1, v3, v3, v2}, Lcom/tudou/detail/fragment/VideoActorFragment;->showLoading(ZZZ)V

    goto :goto_3

    .line 526
    .end local v0    # "tTitles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    iget-object v1, p0, Lcom/tudou/detail/fragment/VideoActorFragment$13;->this$0:Lcom/tudou/detail/fragment/VideoActorFragment;

    invoke-virtual {v1, v3, v3, v2}, Lcom/tudou/detail/fragment/VideoActorFragment;->showLoading(ZZZ)V

    goto :goto_3

    .line 529
    :cond_6
    iget-object v1, p0, Lcom/tudou/detail/fragment/VideoActorFragment$13;->this$0:Lcom/tudou/detail/fragment/VideoActorFragment;

    invoke-virtual {v1, v3, v2, v3}, Lcom/tudou/detail/fragment/VideoActorFragment;->showLoading(ZZZ)V

    goto :goto_3
.end method
