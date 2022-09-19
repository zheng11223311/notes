.class Lcom/tudou/ui/fragment/HomeFragment$19;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/HomeFragment;->initSlide(Lcom/tudou/adapter/SlideItemView;Lcom/youku/vo/IndexPageItem;Landroid/app/Activity;)Lcom/tudou/adapter/SlideItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/HomeFragment;

.field final synthetic val$aIndexPageItem:Lcom/youku/vo/IndexPageItem;

.field final synthetic val$aSolideItem:Lcom/tudou/adapter/SlideItemView;

.field final synthetic val$pointCount:I

.field final synthetic val$pointImageViews:[Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/HomeFragment;I[Landroid/widget/ImageView;Lcom/tudou/adapter/SlideItemView;Lcom/youku/vo/IndexPageItem;)V
    .locals 0

    .prologue
    .line 2000
    iput-object p1, p0, Lcom/tudou/ui/fragment/HomeFragment$19;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    iput p2, p0, Lcom/tudou/ui/fragment/HomeFragment$19;->val$pointCount:I

    iput-object p3, p0, Lcom/tudou/ui/fragment/HomeFragment$19;->val$pointImageViews:[Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/tudou/ui/fragment/HomeFragment$19;->val$aSolideItem:Lcom/tudou/adapter/SlideItemView;

    iput-object p5, p0, Lcom/tudou/ui/fragment/HomeFragment$19;->val$aIndexPageItem:Lcom/youku/vo/IndexPageItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v2, 0x0

    .line 2005
    :try_start_0
    iget-object v3, p0, Lcom/tudou/ui/fragment/HomeFragment$19;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    iget v4, p0, Lcom/tudou/ui/fragment/HomeFragment$19;->val$pointCount:I

    rem-int v4, p3, v4

    invoke-static {v3, v4}, Lcom/tudou/ui/fragment/HomeFragment;->access$3002(Lcom/tudou/ui/fragment/HomeFragment;I)I

    .line 2006
    iget-object v4, p0, Lcom/tudou/ui/fragment/HomeFragment$19;->val$pointImageViews:[Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/tudou/ui/fragment/HomeFragment$19;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/HomeFragment;->access$3000(Lcom/tudou/ui/fragment/HomeFragment;)I

    move-result v3

    if-nez v3, :cond_0

    iget v3, p0, Lcom/tudou/ui/fragment/HomeFragment$19;->val$pointCount:I

    add-int/lit8 v3, v3, -0x1

    :goto_0
    aget-object v3, v4, v3

    const v4, 0x7f0206eb

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2009
    iget-object v3, p0, Lcom/tudou/ui/fragment/HomeFragment$19;->val$pointImageViews:[Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/tudou/ui/fragment/HomeFragment$19;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    invoke-static {v4}, Lcom/tudou/ui/fragment/HomeFragment;->access$3000(Lcom/tudou/ui/fragment/HomeFragment;)I

    move-result v4

    iget v5, p0, Lcom/tudou/ui/fragment/HomeFragment$19;->val$pointCount:I

    add-int/lit8 v5, v5, -0x1

    if-ne v4, v5, :cond_1

    :goto_1
    aget-object v2, v3, v2

    const v3, 0x7f0206eb

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2012
    iget-object v2, p0, Lcom/tudou/ui/fragment/HomeFragment$19;->val$pointImageViews:[Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/tudou/ui/fragment/HomeFragment$19;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/HomeFragment;->access$3000(Lcom/tudou/ui/fragment/HomeFragment;)I

    move-result v3

    aget-object v2, v2, v3

    const v3, 0x7f0206ed

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2014
    iget-object v2, p0, Lcom/tudou/ui/fragment/HomeFragment$19;->val$aSolideItem:Lcom/tudou/adapter/SlideItemView;

    iget-object v3, v2, Lcom/tudou/adapter/SlideItemView;->mTxtTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tudou/ui/fragment/HomeFragment$19;->val$aIndexPageItem:Lcom/youku/vo/IndexPageItem;

    iget-object v2, v2, Lcom/youku/vo/IndexPageItem;->slide_cards_inf:Ljava/util/List;

    iget-object v4, p0, Lcom/tudou/ui/fragment/HomeFragment$19;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    invoke-static {v4}, Lcom/tudou/ui/fragment/HomeFragment;->access$3000(Lcom/tudou/ui/fragment/HomeFragment;)I

    move-result v4

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/CardInfo;

    iget-object v2, v2, Lcom/youku/vo/CardInfo;->title:Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2015
    iget-object v2, p0, Lcom/tudou/ui/fragment/HomeFragment$19;->val$aIndexPageItem:Lcom/youku/vo/IndexPageItem;

    iget-object v2, v2, Lcom/youku/vo/IndexPageItem;->slide_cards_inf:Ljava/util/List;

    iget-object v3, p0, Lcom/tudou/ui/fragment/HomeFragment$19;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/HomeFragment;->access$3000(Lcom/tudou/ui/fragment/HomeFragment;)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/CardInfo;

    iget-object v1, v2, Lcom/youku/vo/CardInfo;->sub_title:Ljava/lang/String;

    .line 2016
    .local v1, "subTitle":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2017
    iget-object v2, p0, Lcom/tudou/ui/fragment/HomeFragment$19;->val$aSolideItem:Lcom/tudou/adapter/SlideItemView;

    iget-object v2, v2, Lcom/tudou/adapter/SlideItemView;->mSubTitle:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2030
    .end local v1    # "subTitle":Ljava/lang/String;
    :goto_2
    return-void

    .line 2006
    :cond_0
    iget-object v3, p0, Lcom/tudou/ui/fragment/HomeFragment$19;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/HomeFragment;->access$3000(Lcom/tudou/ui/fragment/HomeFragment;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 2009
    :cond_1
    iget-object v2, p0, Lcom/tudou/ui/fragment/HomeFragment$19;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/HomeFragment;->access$3000(Lcom/tudou/ui/fragment/HomeFragment;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2019
    .restart local v1    # "subTitle":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/tudou/ui/fragment/HomeFragment$19;->val$aSolideItem:Lcom/tudou/adapter/SlideItemView;

    iget-object v2, v2, Lcom/tudou/adapter/SlideItemView;->mSubTitle:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2020
    iget-object v2, p0, Lcom/tudou/ui/fragment/HomeFragment$19;->val$aSolideItem:Lcom/tudou/adapter/SlideItemView;

    iget-object v3, v2, Lcom/tudou/adapter/SlideItemView;->mSubTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tudou/ui/fragment/HomeFragment$19;->val$aIndexPageItem:Lcom/youku/vo/IndexPageItem;

    iget-object v2, v2, Lcom/youku/vo/IndexPageItem;->slide_cards_inf:Ljava/util/List;

    iget-object v4, p0, Lcom/tudou/ui/fragment/HomeFragment$19;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    invoke-static {v4}, Lcom/tudou/ui/fragment/HomeFragment;->access$3000(Lcom/tudou/ui/fragment/HomeFragment;)I

    move-result v4

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/CardInfo;

    iget-object v2, v2, Lcom/youku/vo/CardInfo;->sub_title:Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 2024
    .end local v1    # "subTitle":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2025
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Youku"

    const-string v3, "HomeActivity.initPoster().new OnItemSelectedListener() {...}.onItemSelected()"

    invoke-static {v2, v3, v0}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 2033
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
