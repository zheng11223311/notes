.class Lcom/tudou/detail/widget/VideoSliderBar$4;
.super Ljava/lang/Object;
.source "VideoSliderBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/widget/VideoSliderBar;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/detail/widget/VideoSliderBar;

.field final synthetic val$tActivity:Lcom/tudou/ui/activity/DetailActivity;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/tudou/detail/widget/VideoSliderBar;Landroid/view/View;Lcom/tudou/ui/activity/DetailActivity;)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lcom/tudou/detail/widget/VideoSliderBar$4;->this$0:Lcom/tudou/detail/widget/VideoSliderBar;

    iput-object p2, p0, Lcom/tudou/detail/widget/VideoSliderBar$4;->val$v:Landroid/view/View;

    iput-object p3, p0, Lcom/tudou/detail/widget/VideoSliderBar$4;->val$tActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 249
    iget-object v2, p0, Lcom/tudou/detail/widget/VideoSliderBar$4;->val$v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tudou/detail/vo/SliderInfo;

    .line 251
    .local v1, "info":Lcom/tudou/detail/vo/SliderInfo;
    iget-object v2, p0, Lcom/tudou/detail/widget/VideoSliderBar$4;->this$0:Lcom/tudou/detail/widget/VideoSliderBar;

    iget-object v2, v2, Lcom/tudou/detail/widget/VideoSliderBar;->mSharePreference:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iget-object v3, v1, Lcom/tudou/detail/vo/SliderInfo;->mSliderType:Lcom/tudou/detail/vo/SliderInfo$SliderType;

    invoke-virtual {v3}, Lcom/tudou/detail/vo/SliderInfo$SliderType;->name()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 252
    iget-object v2, p0, Lcom/tudou/detail/widget/VideoSliderBar$4;->val$v:Landroid/view/View;

    const v3, 0x7f0c0353

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 253
    sget-object v2, Lcom/tudou/detail/vo/SliderInfo$SliderType;->SUMMARY:Lcom/tudou/detail/vo/SliderInfo$SliderType;

    iget-object v3, v1, Lcom/tudou/detail/vo/SliderInfo;->mSliderType:Lcom/tudou/detail/vo/SliderInfo$SliderType;

    if-ne v2, v3, :cond_1

    .line 254
    iget-object v2, p0, Lcom/tudou/detail/widget/VideoSliderBar$4;->val$tActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v2}, Lcom/tudou/ui/activity/DetailActivity;->onBtnBriefClicked()V

    .line 281
    :cond_0
    :goto_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 282
    .local v0, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "type"

    iget-object v3, v1, Lcom/tudou/detail/vo/SliderInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "t1.detail_sdetail.CMSeditarea__.1_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tudou/detail/widget/VideoSliderBar$4;->this$0:Lcom/tudou/detail/widget/VideoSliderBar;

    invoke-static {v3}, Lcom/tudou/detail/widget/VideoSliderBar;->access$200(Lcom/tudou/detail/widget/VideoSliderBar;)Lcom/tudou/detail/vo/VideoState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tudou/detail/vo/VideoState;->getVideoId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/tudou/detail/vo/SliderInfo;->index:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 285
    return-void

    .line 255
    .end local v0    # "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    sget-object v2, Lcom/tudou/detail/vo/SliderInfo$SliderType;->DIG:Lcom/tudou/detail/vo/SliderInfo$SliderType;

    iget-object v3, v1, Lcom/tudou/detail/vo/SliderInfo;->mSliderType:Lcom/tudou/detail/vo/SliderInfo$SliderType;

    if-ne v2, v3, :cond_2

    .line 256
    iget-object v2, p0, Lcom/tudou/detail/widget/VideoSliderBar$4;->this$0:Lcom/tudou/detail/widget/VideoSliderBar;

    invoke-virtual {v2}, Lcom/tudou/detail/widget/VideoSliderBar;->onBtnDigClicked()V

    goto :goto_0

    .line 257
    :cond_2
    sget-object v2, Lcom/tudou/detail/vo/SliderInfo$SliderType;->FEATURE:Lcom/tudou/detail/vo/SliderInfo$SliderType;

    iget-object v3, v1, Lcom/tudou/detail/vo/SliderInfo;->mSliderType:Lcom/tudou/detail/vo/SliderInfo$SliderType;

    if-ne v2, v3, :cond_3

    .line 258
    iget-object v2, p0, Lcom/tudou/detail/widget/VideoSliderBar$4;->val$tActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v2}, Lcom/tudou/ui/activity/DetailActivity;->onBtnFeatureClicked()V

    goto :goto_0

    .line 259
    :cond_3
    sget-object v2, Lcom/tudou/detail/vo/SliderInfo$SliderType;->POINT:Lcom/tudou/detail/vo/SliderInfo$SliderType;

    iget-object v3, v1, Lcom/tudou/detail/vo/SliderInfo;->mSliderType:Lcom/tudou/detail/vo/SliderInfo$SliderType;

    if-ne v2, v3, :cond_4

    .line 260
    iget-object v2, p0, Lcom/tudou/detail/widget/VideoSliderBar$4;->val$tActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v2}, Lcom/tudou/ui/activity/DetailActivity;->onBtnPointClicked()V

    goto :goto_0

    .line 261
    :cond_4
    sget-object v2, Lcom/tudou/detail/vo/SliderInfo$SliderType;->PODCAST_USER:Lcom/tudou/detail/vo/SliderInfo$SliderType;

    iget-object v3, v1, Lcom/tudou/detail/vo/SliderInfo;->mSliderType:Lcom/tudou/detail/vo/SliderInfo$SliderType;

    if-ne v2, v3, :cond_5

    .line 262
    iget-object v2, p0, Lcom/tudou/detail/widget/VideoSliderBar$4;->val$tActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v2}, Lcom/tudou/ui/activity/DetailActivity;->onBtnPodcastClicked()V

    goto :goto_0

    .line 263
    :cond_5
    sget-object v2, Lcom/tudou/detail/vo/SliderInfo$SliderType;->COMMENT:Lcom/tudou/detail/vo/SliderInfo$SliderType;

    iget-object v3, v1, Lcom/tudou/detail/vo/SliderInfo;->mSliderType:Lcom/tudou/detail/vo/SliderInfo$SliderType;

    if-ne v2, v3, :cond_6

    .line 264
    iget-object v2, p0, Lcom/tudou/detail/widget/VideoSliderBar$4;->val$tActivity:Lcom/tudou/ui/activity/DetailActivity;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/tudou/ui/activity/DetailActivity;->onBtnCommentClicked(Ljava/lang/String;)V

    goto :goto_0

    .line 265
    :cond_6
    sget-object v2, Lcom/tudou/detail/vo/SliderInfo$SliderType;->GIFT:Lcom/tudou/detail/vo/SliderInfo$SliderType;

    iget-object v3, v1, Lcom/tudou/detail/vo/SliderInfo;->mSliderType:Lcom/tudou/detail/vo/SliderInfo$SliderType;

    if-ne v2, v3, :cond_7

    .line 266
    iget-object v2, p0, Lcom/tudou/detail/widget/VideoSliderBar$4;->val$tActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v2}, Lcom/tudou/ui/activity/DetailActivity;->onBtnGiftClicked()V

    goto/16 :goto_0

    .line 267
    :cond_7
    sget-object v2, Lcom/tudou/detail/vo/SliderInfo$SliderType;->SKIP:Lcom/tudou/detail/vo/SliderInfo$SliderType;

    iget-object v3, v1, Lcom/tudou/detail/vo/SliderInfo;->mSliderType:Lcom/tudou/detail/vo/SliderInfo$SliderType;

    if-ne v2, v3, :cond_8

    .line 268
    iget-object v2, v1, Lcom/tudou/detail/vo/SliderInfo;->mSkipInfo:Lcom/youku/vo/SkipInfo;

    if-eqz v2, :cond_0

    .line 274
    iget-object v3, v1, Lcom/tudou/detail/vo/SliderInfo;->mSkipInfo:Lcom/youku/vo/SkipInfo;

    iget-object v2, p0, Lcom/tudou/detail/widget/VideoSliderBar$4;->this$0:Lcom/tudou/detail/widget/VideoSliderBar;

    invoke-virtual {v2}, Lcom/tudou/detail/widget/VideoSliderBar;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v3, v2}, Lcom/youku/vo/SkipInfo;->skip(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 276
    :cond_8
    sget-object v2, Lcom/tudou/detail/vo/SliderInfo$SliderType;->VOTE:Lcom/tudou/detail/vo/SliderInfo$SliderType;

    iget-object v3, v1, Lcom/tudou/detail/vo/SliderInfo;->mSliderType:Lcom/tudou/detail/vo/SliderInfo$SliderType;

    if-ne v2, v3, :cond_0

    .line 277
    iget-object v2, p0, Lcom/tudou/detail/widget/VideoSliderBar$4;->val$tActivity:Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v2}, Lcom/tudou/ui/activity/DetailActivity;->onBtnVoteClicked()V

    goto/16 :goto_0
.end method
