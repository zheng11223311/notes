.class Lcom/tudou/ui/fragment/HomeFragment$14;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/HomeFragment;->getAdData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/HomeFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/HomeFragment;)V
    .locals 0

    .prologue
    .line 1671
    iput-object p1, p0, Lcom/tudou/ui/fragment/HomeFragment$14;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 3
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 1742
    const-string v0, "AD"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFailed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1743
    return-void
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 8
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    .line 1675
    :try_start_0
    iget-object v5, p0, Lcom/tudou/ui/fragment/HomeFragment$14;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    new-instance v4, Lcom/youku/vo/AdResult;

    invoke-direct {v4}, Lcom/youku/vo/AdResult;-><init>()V

    invoke-virtual {p1, v4}, Lcom/youku/network/HttpRequestManager;->parse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/vo/AdResult;

    invoke-static {v5, v4}, Lcom/tudou/ui/fragment/HomeFragment;->access$2102(Lcom/tudou/ui/fragment/HomeFragment;Lcom/youku/vo/AdResult;)Lcom/youku/vo/AdResult;

    .line 1676
    const-string v4, "AD"

    invoke-virtual {p1}, Lcom/youku/network/HttpRequestManager;->getDataString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1677
    iget-object v4, p0, Lcom/tudou/ui/fragment/HomeFragment$14;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    invoke-static {v4}, Lcom/tudou/ui/fragment/HomeFragment;->access$2200(Lcom/tudou/ui/fragment/HomeFragment;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/tudou/ui/fragment/HomeFragment$14;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    invoke-static {v4}, Lcom/tudou/ui/fragment/HomeFragment;->access$2100(Lcom/tudou/ui/fragment/HomeFragment;)Lcom/youku/vo/AdResult;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/tudou/ui/fragment/HomeFragment$14;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    invoke-static {v4}, Lcom/tudou/ui/fragment/HomeFragment;->access$2100(Lcom/tudou/ui/fragment/HomeFragment;)Lcom/youku/vo/AdResult;

    move-result-object v4

    iget-object v4, v4, Lcom/youku/vo/AdResult;->HTML:Ljava/util/ArrayList;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/tudou/ui/fragment/HomeFragment$14;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    invoke-static {v4}, Lcom/tudou/ui/fragment/HomeFragment;->access$2100(Lcom/tudou/ui/fragment/HomeFragment;)Lcom/youku/vo/AdResult;

    move-result-object v4

    iget-object v4, v4, Lcom/youku/vo/AdResult;->HTML:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_3

    iget-object v4, p0, Lcom/tudou/ui/fragment/HomeFragment$14;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    invoke-static {v4}, Lcom/tudou/ui/fragment/HomeFragment;->access$2100(Lcom/tudou/ui/fragment/HomeFragment;)Lcom/youku/vo/AdResult;

    move-result-object v4

    iget-object v4, v4, Lcom/youku/vo/AdResult;->HTML:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/tudou/ui/fragment/HomeFragment$14;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    invoke-static {v4}, Lcom/tudou/ui/fragment/HomeFragment;->access$2100(Lcom/tudou/ui/fragment/HomeFragment;)Lcom/youku/vo/AdResult;

    move-result-object v4

    iget-object v4, v4, Lcom/youku/vo/AdResult;->HTML:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/vo/AdResult$AdHTML;

    iget-object v4, v4, Lcom/youku/vo/AdResult$AdHTML;->RS:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1678
    iget-object v4, p0, Lcom/tudou/ui/fragment/HomeFragment$14;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    invoke-static {v4}, Lcom/tudou/ui/fragment/HomeFragment;->access$2100(Lcom/tudou/ui/fragment/HomeFragment;)Lcom/youku/vo/AdResult;

    move-result-object v4

    iget-object v4, v4, Lcom/youku/vo/AdResult;->HTML:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/vo/AdResult$AdHTML;

    iget-object v4, v4, Lcom/youku/vo/AdResult$AdHTML;->SUS:Ljava/util/ArrayList;

    invoke-static {v4}, Lcom/tudou/ui/fragment/HomeFragment;->showExposure(Ljava/util/ArrayList;)V

    .line 1680
    iget-object v4, p0, Lcom/tudou/ui/fragment/HomeFragment$14;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    invoke-static {v4}, Lcom/tudou/ui/fragment/HomeFragment;->access$2100(Lcom/tudou/ui/fragment/HomeFragment;)Lcom/youku/vo/AdResult;

    move-result-object v4

    iget-object v4, v4, Lcom/youku/vo/AdResult;->HTML:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/vo/AdResult$AdHTML;

    iget-object v3, v4, Lcom/youku/vo/AdResult$AdHTML;->RS:Ljava/lang/String;

    .line 1681
    .local v3, "url":Ljava/lang/String;
    iget-object v4, p0, Lcom/tudou/ui/fragment/HomeFragment$14;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    invoke-static {v4}, Lcom/tudou/ui/fragment/HomeFragment;->access$2100(Lcom/tudou/ui/fragment/HomeFragment;)Lcom/youku/vo/AdResult;

    move-result-object v4

    iget-object v4, v4, Lcom/youku/vo/AdResult;->HTML:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/vo/AdResult$AdHTML;

    iget-object v2, v4, Lcom/youku/vo/AdResult$AdHTML;->RST:Ljava/lang/String;

    .line 1683
    .local v2, "type":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1684
    iget-object v4, p0, Lcom/tudou/ui/fragment/HomeFragment$14;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/tudou/ui/fragment/HomeFragment;->access$2302(Lcom/tudou/ui/fragment/HomeFragment;Landroid/view/View;)Landroid/view/View;

    .line 1685
    const-string v4, "html"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1686
    iget-object v4, p0, Lcom/tudou/ui/fragment/HomeFragment$14;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    new-instance v5, Lcom/youku/widget/TudouModuleH5;

    iget-object v6, p0, Lcom/tudou/ui/fragment/HomeFragment$14;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    invoke-virtual {v6}, Lcom/tudou/ui/fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/youku/widget/TudouModuleH5;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Lcom/tudou/ui/fragment/HomeFragment;->access$2302(Lcom/tudou/ui/fragment/HomeFragment;Landroid/view/View;)Landroid/view/View;

    .line 1687
    iget-object v4, p0, Lcom/tudou/ui/fragment/HomeFragment$14;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    invoke-static {v4, v3}, Lcom/tudou/ui/fragment/HomeFragment;->access$2400(Lcom/tudou/ui/fragment/HomeFragment;Ljava/lang/String;)Lcom/youku/vo/SkipInfo;

    move-result-object v1

    .line 1688
    .local v1, "skipInfo":Lcom/youku/vo/SkipInfo;
    iget-object v4, p0, Lcom/tudou/ui/fragment/HomeFragment$14;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    invoke-static {v4}, Lcom/tudou/ui/fragment/HomeFragment;->access$2300(Lcom/tudou/ui/fragment/HomeFragment;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/youku/widget/TudouModuleH5;

    iget-object v5, p0, Lcom/tudou/ui/fragment/HomeFragment$14;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    iget-object v5, v5, Lcom/tudou/ui/fragment/HomeFragment;->mLoadListener:Lcom/youku/widget/TudouModuleH5$LoadListener;

    invoke-virtual {v4, v5}, Lcom/youku/widget/TudouModuleH5;->setLoadListener(Lcom/youku/widget/TudouModuleH5$LoadListener;)V

    .line 1689
    iget-object v4, p0, Lcom/tudou/ui/fragment/HomeFragment$14;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/tudou/ui/fragment/HomeFragment;->access$2502(Lcom/tudou/ui/fragment/HomeFragment;Z)Z

    .line 1690
    iget-object v4, p0, Lcom/tudou/ui/fragment/HomeFragment$14;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    invoke-static {v4}, Lcom/tudou/ui/fragment/HomeFragment;->access$2300(Lcom/tudou/ui/fragment/HomeFragment;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/youku/widget/TudouModuleH5;

    invoke-virtual {v4, v1}, Lcom/youku/widget/TudouModuleH5;->setData(Lcom/youku/vo/SkipInfo;)V

    .line 1691
    iget-object v4, p0, Lcom/tudou/ui/fragment/HomeFragment$14;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    invoke-static {v4}, Lcom/tudou/ui/fragment/HomeFragment;->access$2300(Lcom/tudou/ui/fragment/HomeFragment;)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1738
    .end local v1    # "skipInfo":Lcom/youku/vo/SkipInfo;
    .end local v2    # "type":Ljava/lang/String;
    .end local v3    # "url":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1692
    .restart local v2    # "type":Ljava/lang/String;
    .restart local v3    # "url":Ljava/lang/String;
    :cond_1
    const-string v4, "img"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1693
    iget-object v4, p0, Lcom/tudou/ui/fragment/HomeFragment$14;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    new-instance v5, Lcom/youku/widget/YoukuImageView;

    iget-object v6, p0, Lcom/tudou/ui/fragment/HomeFragment$14;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    invoke-virtual {v6}, Lcom/tudou/ui/fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7}, Lcom/youku/widget/YoukuImageView;-><init>(Landroid/content/Context;Z)V

    invoke-static {v4, v5}, Lcom/tudou/ui/fragment/HomeFragment;->access$2302(Lcom/tudou/ui/fragment/HomeFragment;Landroid/view/View;)Landroid/view/View;

    .line 1694
    iget-object v4, p0, Lcom/tudou/ui/fragment/HomeFragment$14;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    invoke-static {v4}, Lcom/tudou/ui/fragment/HomeFragment;->access$2300(Lcom/tudou/ui/fragment/HomeFragment;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1695
    iget-object v4, p0, Lcom/tudou/ui/fragment/HomeFragment$14;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    invoke-virtual {v4}, Lcom/tudou/ui/fragment/HomeFragment;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v5

    iget-object v4, p0, Lcom/tudou/ui/fragment/HomeFragment$14;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    invoke-static {v4}, Lcom/tudou/ui/fragment/HomeFragment;->access$2300(Lcom/tudou/ui/fragment/HomeFragment;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    new-instance v6, Lcom/tudou/ui/fragment/HomeFragment$14$1;

    invoke-direct {v6, p0}, Lcom/tudou/ui/fragment/HomeFragment$14$1;-><init>(Lcom/tudou/ui/fragment/HomeFragment$14;)V

    invoke-virtual {v5, v3, v4, v6}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 1715
    iget-object v4, p0, Lcom/tudou/ui/fragment/HomeFragment$14;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    invoke-static {v4}, Lcom/tudou/ui/fragment/HomeFragment;->access$2300(Lcom/tudou/ui/fragment/HomeFragment;)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/tudou/ui/fragment/HomeFragment$14$2;

    invoke-direct {v5, p0}, Lcom/tudou/ui/fragment/HomeFragment$14$2;-><init>(Lcom/tudou/ui/fragment/HomeFragment$14;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1735
    .end local v2    # "type":Ljava/lang/String;
    .end local v3    # "url":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1736
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "AD"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1729
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "type":Ljava/lang/String;
    .restart local v3    # "url":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v4, "AD"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u5e7f\u544a\u7cfb\u7edf\u8fd4\u56de\u9519\u8bef\u8d44\u6e90\u7c7b\u578b RST = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " !!!!!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1733
    .end local v2    # "type":Ljava/lang/String;
    .end local v3    # "url":Ljava/lang/String;
    :cond_3
    const-string v4, "AD"

    const-string v5, "AD \u8fd4\u56de\u6570\u636e\uff0c\u4e0d\u7b26\u5408\u8981\u6c42"

    invoke-static {v4, v5}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
