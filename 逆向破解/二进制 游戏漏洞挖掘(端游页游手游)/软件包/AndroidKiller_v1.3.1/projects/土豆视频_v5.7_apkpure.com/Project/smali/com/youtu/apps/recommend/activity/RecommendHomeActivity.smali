.class public Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "RecommendHomeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x5
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youtu/apps/recommend/activity/RecommendHomeActivity$StateChangedCallback;
    }
.end annotation


# static fields
.field public static POSTER_CHANNELIMAGE_COUNT:I

.field public static newRecommend:Lcom/youtu/apps/recommend/vo/AllNewRecommend;

.field public static sClientName:Ljava/lang/String;

.field public static sUser_Agent:Ljava/lang/String;


# instance fields
.field private final NEW_RECOMMEND_ITEM_POSITION:I

.field private final TOP_GAME_ITEM_POSITION:I

.field private httpRequest:Lcom/youtu/apps/network/IHttpRequest;

.field intent:Landroid/content/Intent;

.field private isDestroyed:Z

.field private mAdapter:Lcom/youtu/apps/recommend/adapter/RecommendHomeAdapter;

.field private mCallback:Lcom/youtu/apps/recommend/activity/RecommendHomeActivity$StateChangedCallback;

.field private mContext:Landroid/content/Context;

.field private mImgNoResults:Landroid/widget/ImageView;

.field private mSelectListView:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectTab:I

.field private mTitleLayout:Landroid/view/View;

.field private mTxtNoResults:Landroid/widget/TextView;

.field private mViewpager:Lcom/youtu/apps/widget/YoutuViewPager;

.field private newRecommendtag0:Ljava/lang/String;

.field private textNewRecommend:Landroid/widget/TextView;

.field private textTopGame:Landroid/widget/TextView;

.field private topGametag1:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 41
    iput v1, p0, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->mSelectTab:I

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->mSelectListView:Ljava/util/List;

    .line 44
    iput-object v2, p0, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->httpRequest:Lcom/youtu/apps/network/IHttpRequest;

    .line 45
    iput-boolean v1, p0, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->isDestroyed:Z

    .line 57
    iput v1, p0, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->NEW_RECOMMEND_ITEM_POSITION:I

    .line 58
    const/4 v0, 0x1

    iput v0, p0, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->TOP_GAME_ITEM_POSITION:I

    .line 64
    iput-object v2, p0, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->intent:Landroid/content/Intent;

    .line 326
    new-instance v0, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity$5;

    invoke-direct {v0, p0}, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity$5;-><init>(Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;)V

    iput-object v0, p0, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->mCallback:Lcom/youtu/apps/recommend/activity/RecommendHomeActivity$StateChangedCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->isDestroyed:Z

    return v0
.end method

.method static synthetic access$100(Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->getData()V

    return-void
.end method

.method static synthetic access$200(Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->noResultsTips()V

    return-void
.end method

.method static synthetic access$300(Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->initData()V

    return-void
.end method

.method static synthetic access$400(Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;)Lcom/youtu/apps/widget/YoutuViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->mViewpager:Lcom/youtu/apps/widget/YoutuViewPager;

    return-object v0
.end method

.method private getData()V
    .locals 12

    .prologue
    .line 170
    const/4 v11, 0x0

    .line 171
    .local v11, "tempList":Ljava/util/List;, "Ljava/util/List<Lcom/youtu/apps/recommend/vo/NewRecommend;>;"
    sget-object v0, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->newRecommend:Lcom/youtu/apps/recommend/vo/AllNewRecommend;

    if-eqz v0, :cond_0

    .line 172
    sget-object v0, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->newRecommend:Lcom/youtu/apps/recommend/vo/AllNewRecommend;

    iget-object v11, v0, Lcom/youtu/apps/recommend/vo/AllNewRecommend;->results:Ljava/util/List;

    .line 174
    :cond_0
    if-eqz v11, :cond_3

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 175
    new-instance v0, Lcom/youtu/apps/recommend/adapter/RecommendHomeAdapter;

    iget-object v2, p0, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->mViewpager:Lcom/youtu/apps/widget/YoutuViewPager;

    iget-object v3, p0, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->mCallback:Lcom/youtu/apps/recommend/activity/RecommendHomeActivity$StateChangedCallback;

    iget-object v4, p0, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->newRecommendtag0:Ljava/lang/String;

    iget-object v5, p0, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->topGametag1:Ljava/lang/String;

    iget v6, p0, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->mSelectTab:I

    sget-object v7, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->newRecommend:Lcom/youtu/apps/recommend/vo/AllNewRecommend;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/youtu/apps/recommend/adapter/RecommendHomeAdapter;-><init>(Landroid/support/v4/app/FragmentActivity;Lcom/youtu/apps/widget/YoutuViewPager;Lcom/youtu/apps/recommend/activity/RecommendHomeActivity$StateChangedCallback;Ljava/lang/String;Ljava/lang/String;ILcom/youtu/apps/recommend/vo/AllNewRecommend;)V

    iput-object v0, p0, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->mAdapter:Lcom/youtu/apps/recommend/adapter/RecommendHomeAdapter;

    .line 177
    iget-object v1, p0, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->textNewRecommend:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youtu/apps/recommend/vo/NewRecommend;

    iget-object v0, v0, Lcom/youtu/apps/recommend/vo/NewRecommend;->tab_name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    iget-object v1, p0, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->textTopGame:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youtu/apps/recommend/vo/NewRecommend;

    iget-object v0, v0, Lcom/youtu/apps/recommend/vo/NewRecommend;->tab_name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    sget v0, Lcom/youtu/apps/R$id;->img_selectnewrecommend:I

    invoke-virtual {p0, v0}, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 181
    .local v9, "selectNewRecommendImg":Landroid/widget/ImageView;
    sget v0, Lcom/youtu/apps/R$id;->img_selecttopgame:I

    invoke-virtual {p0, v0}, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 183
    .local v10, "selectTopGameImg":Landroid/widget/ImageView;
    const v8, 0xffffff

    .line 184
    .local v8, "color":I
    sget-object v0, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->sClientName:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 185
    sget-object v0, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->sClientName:Ljava/lang/String;

    const-string/jumbo v1, "youku"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 186
    invoke-virtual {p0}, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/youtu/apps/R$color;->youku_blue:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    .line 188
    :cond_1
    sget-object v0, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->sClientName:Ljava/lang/String;

    const-string/jumbo v1, "tudou"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 189
    invoke-virtual {p0}, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/youtu/apps/R$color;->tudou_orange:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    .line 192
    :cond_2
    invoke-virtual {v9, v8}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 193
    invoke-virtual {v10, v8}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 195
    iget-object v0, p0, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->mSelectListView:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    iget-object v0, p0, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->mSelectListView:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    iget v0, p0, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->mSelectTab:I

    invoke-virtual {p0, v0}, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->switchTab(I)V

    .line 199
    invoke-static {}, Lcom/youtu/apps/widget/YoutuLoading;->dismiss()V

    .line 203
    .end local v8    # "color":I
    .end local v9    # "selectNewRecommendImg":Landroid/widget/ImageView;
    .end local v10    # "selectTopGameImg":Landroid/widget/ImageView;
    :goto_0
    return-void

    .line 201
    :cond_3
    invoke-direct {p0}, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->noResultsTips()V

    goto :goto_0
.end method

.method private initData()V
    .locals 4

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 207
    iget-object v1, p0, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->mTitleLayout:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 208
    iget-object v1, p0, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->mImgNoResults:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 209
    iget-object v1, p0, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->mTxtNoResults:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 210
    invoke-static {p0}, Lcom/youtu/apps/widget/YoutuLoading;->show(Landroid/content/Context;)V

    .line 211
    sget-object v1, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->sClientName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 212
    sget-object v1, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->sClientName:Ljava/lang/String;

    const-string/jumbo v2, "tudou"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 213
    invoke-direct {p0}, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->initTitle()V

    .line 216
    :cond_0
    iget-object v1, p0, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/youtu/apps/recommend/util/Util;->hasInternet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 217
    const-class v1, Lcom/youtu/apps/network/IHttpRequest;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/youtu/apps/network/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youtu/apps/network/IHttpRequest;

    iput-object v1, p0, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->httpRequest:Lcom/youtu/apps/network/IHttpRequest;

    .line 218
    new-instance v0, Lcom/youtu/apps/network/HttpIntent;

    invoke-static {}, Lcom/youtu/apps/network/URLContainer;->getRecommendURL()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/youtu/apps/network/HttpIntent;-><init>(Ljava/lang/String;)V

    .line 219
    .local v0, "httpIntent":Lcom/youtu/apps/network/HttpIntent;
    iget-object v1, p0, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->httpRequest:Lcom/youtu/apps/network/IHttpRequest;

    new-instance v2, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity$3;

    invoke-direct {v2, p0}, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity$3;-><init>(Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;)V

    invoke-interface {v1, v0, v2}, Lcom/youtu/apps/network/IHttpRequest;->request(Lcom/youtu/apps/network/HttpIntent;Lcom/youtu/apps/network/IHttpRequest$IHttpRequestCallBack;)V

    .line 266
    .end local v0    # "httpIntent":Lcom/youtu/apps/network/HttpIntent;
    :goto_0
    return-void

    .line 262
    :cond_1
    invoke-direct {p0}, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->noResultsTips()V

    .line 263
    iget-object v1, p0, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "\u5f53\u524d\u65e0\u7f51\u7edc\u8fde\u63a5\uff0c\u8bf7\u68c0\u67e5\u60a8\u7684\u7f51\u7edc"

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private initTitle()V
    .locals 4

    .prologue
    .line 128
    sget v3, Lcom/youtu/apps/R$id;->app_title:I

    invoke-virtual {p0, v3}, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 129
    .local v0, "app_title":Landroid/view/View;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 130
    sget v3, Lcom/youtu/apps/R$id;->title_text:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 131
    .local v2, "txt_title":Landroid/widget/TextView;
    sget v3, Lcom/youtu/apps/R$string;->recommend_tudou_app:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 133
    sget v3, Lcom/youtu/apps/R$id;->title_left_img:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 135
    .local v1, "img_back":Landroid/widget/ImageView;
    new-instance v3, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity$1;

    invoke-direct {v3, p0}, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity$1;-><init>(Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    new-instance v3, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity$2;

    invoke-direct {v3, p0}, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity$2;-><init>(Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    return-void
.end method

.method private initView()V
    .locals 4

    .prologue
    .line 152
    sget v2, Lcom/youtu/apps/R$id;->recommend_title:I

    invoke-virtual {p0, v2}, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->mTitleLayout:Landroid/view/View;

    .line 153
    sget v2, Lcom/youtu/apps/R$id;->img_recommend_home__no_results:I

    invoke-virtual {p0, v2}, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->mImgNoResults:Landroid/widget/ImageView;

    .line 154
    sget v2, Lcom/youtu/apps/R$id;->txt_recommend_home_no_results:I

    invoke-virtual {p0, v2}, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->mTxtNoResults:Landroid/widget/TextView;

    .line 156
    sget v2, Lcom/youtu/apps/R$id;->recommend_homepager:I

    invoke-virtual {p0, v2}, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/youtu/apps/widget/YoutuViewPager;

    iput-object v2, p0, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->mViewpager:Lcom/youtu/apps/widget/YoutuViewPager;

    .line 157
    iget-object v2, p0, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->mViewpager:Lcom/youtu/apps/widget/YoutuViewPager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/youtu/apps/widget/YoutuViewPager;->setCurrentItem(I)V

    .line 158
    iget-object v2, p0, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->mViewpager:Lcom/youtu/apps/widget/YoutuViewPager;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/youtu/apps/widget/YoutuViewPager;->setOffscreenPageLimit(I)V

    .line 160
    sget v2, Lcom/youtu/apps/R$id;->layout_newrecommend:I

    invoke-virtual {p0, v2}, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 161
    .local v0, "layoutNewRecommend":Landroid/view/View;
    sget v2, Lcom/youtu/apps/R$id;->layout_topgame:I

    invoke-virtual {p0, v2}, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 162
    .local v1, "layoutTopGame":Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    sget v2, Lcom/youtu/apps/R$id;->text_topgame:I

    invoke-virtual {p0, v2}, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->textTopGame:Landroid/widget/TextView;

    .line 166
    sget v2, Lcom/youtu/apps/R$id;->text_newrecommend:I

    invoke-virtual {p0, v2}, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->textNewRecommend:Landroid/widget/TextView;

    .line 167
    return-void
.end method

.method private noResultsTips()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 269
    invoke-static {}, Lcom/youtu/apps/widget/YoutuLoading;->dismiss()V

    .line 270
    iget-object v0, p0, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->mTitleLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 271
    iget-object v0, p0, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->mImgNoResults:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 272
    iget-object v0, p0, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->mTxtNoResults:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 273
    iget-object v0, p0, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->mImgNoResults:Landroid/widget/ImageView;

    new-instance v1, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity$4;

    invoke-direct {v1, p0}, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity$4;-><init>(Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    return-void
.end method

.method private onTapClickEvent(I)V
    .locals 1
    .param p1, "nTapPos"    # I

    .prologue
    .line 284
    invoke-virtual {p0, p1}, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->switchTab(I)V

    .line 285
    iget-object v0, p0, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->mViewpager:Lcom/youtu/apps/widget/YoutuViewPager;

    invoke-virtual {v0, p1}, Lcom/youtu/apps/widget/YoutuViewPager;->setCurrentItem(I)V

    .line 286
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 337
    sget v0, Lcom/youtu/apps/R$id;->layout_newrecommend:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 338
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->onTapClickEvent(I)V

    .line 345
    :cond_0
    :goto_0
    return-void

    .line 341
    :cond_1
    sget v0, Lcom/youtu/apps/R$id;->layout_topgame:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 342
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->onTapClickEvent(I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    invoke-virtual {p0}, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->intent:Landroid/content/Intent;

    .line 70
    iget-object v1, p0, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 71
    iget-object v1, p0, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->intent:Landroid/content/Intent;

    const-string v2, "clientName"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->sClientName:Ljava/lang/String;

    .line 72
    iget-object v1, p0, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->intent:Landroid/content/Intent;

    const-string/jumbo v2, "user_agent_youku"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->sUser_Agent:Ljava/lang/String;

    .line 73
    iget-object v1, p0, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->intent:Landroid/content/Intent;

    const-string/jumbo v2, "statistics_parameter"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/youtu/apps/network/URLContainer;->sStatisticsParameter:Ljava/lang/String;

    .line 74
    iget-object v1, p0, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->intent:Landroid/content/Intent;

    const-string/jumbo v2, "timestamp_difference"

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    sput-wide v2, Lcom/youtu/apps/network/URLContainer;->TIMESTAMP:J

    .line 75
    iget-object v1, p0, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->intent:Landroid/content/Intent;

    const-string v2, "isTestHost"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 77
    .local v0, "isTestHost":Z
    const-string/jumbo v1, "tudou"

    sget-object v2, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->sClientName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 78
    if-eqz v0, :cond_3

    .line 79
    const-string v1, "http://test.api.3g.youku.com"

    sput-object v1, Lcom/youtu/apps/network/URLContainer;->YOUKU_DOMAIN:Ljava/lang/String;

    .line 80
    const-string v1, "http://test.api.3g.youku.com/openapi-wireless"

    sput-object v1, Lcom/youtu/apps/network/URLContainer;->YOUKU_STATISTICS_DOMAIN:Ljava/lang/String;

    .line 95
    .end local v0    # "isTestHost":Z
    :cond_0
    :goto_0
    sget-object v1, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->sClientName:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, ""

    sget-object v2, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->sClientName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 96
    :cond_1
    const-string/jumbo v1, "youku"

    sput-object v1, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->sClientName:Ljava/lang/String;

    .line 99
    :cond_2
    sget v1, Lcom/youtu/apps/R$layout;->activity_recommend_home:I

    invoke-virtual {p0, v1}, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->setContentView(I)V

    .line 100
    invoke-virtual {p0}, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->mContext:Landroid/content/Context;

    .line 101
    invoke-static {p0}, Lcom/youtu/apps/recommend/util/Util;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 102
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->setRequestedOrientation(I)V

    .line 106
    :goto_1
    invoke-direct {p0}, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->initView()V

    .line 107
    if-eqz p1, :cond_6

    .line 108
    const-string v1, "clientName"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->sClientName:Ljava/lang/String;

    .line 109
    const-string/jumbo v1, "tab"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->mSelectTab:I

    .line 110
    const-string v1, "AllNewRecommend"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/youtu/apps/recommend/vo/AllNewRecommend;

    sput-object v1, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->newRecommend:Lcom/youtu/apps/recommend/vo/AllNewRecommend;

    .line 111
    const-string v1, "posterCount"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->POSTER_CHANNELIMAGE_COUNT:I

    .line 112
    const-string/jumbo v1, "tag0"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->newRecommendtag0:Ljava/lang/String;

    .line 113
    const-string/jumbo v1, "tag1"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->topGametag1:Ljava/lang/String;

    .line 115
    invoke-direct {p0}, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->getData()V

    .line 119
    :goto_2
    return-void

    .line 82
    .restart local v0    # "isTestHost":Z
    :cond_3
    const-string v1, "http://api.3g.youku.com"

    sput-object v1, Lcom/youtu/apps/network/URLContainer;->YOUKU_DOMAIN:Ljava/lang/String;

    .line 83
    const-string v1, "http://statis.api.3g.youku.com/openapi-wireless"

    sput-object v1, Lcom/youtu/apps/network/URLContainer;->YOUKU_STATISTICS_DOMAIN:Ljava/lang/String;

    goto :goto_0

    .line 90
    :cond_4
    const-string v1, "http://api.3g.youku.com"

    sput-object v1, Lcom/youtu/apps/network/URLContainer;->YOUKU_DOMAIN:Ljava/lang/String;

    .line 91
    const-string v1, "http://statis.api.3g.youku.com/openapi-wireless"

    sput-object v1, Lcom/youtu/apps/network/URLContainer;->YOUKU_STATISTICS_DOMAIN:Ljava/lang/String;

    goto :goto_0

    .line 104
    .end local v0    # "isTestHost":Z
    :cond_5
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->setRequestedOrientation(I)V

    goto :goto_1

    .line 117
    :cond_6
    invoke-direct {p0}, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->initData()V

    goto :goto_2
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 349
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 350
    invoke-static {}, Lcom/youtu/apps/widget/YoutuLoading;->dismiss()V

    .line 351
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->isDestroyed:Z

    .line 352
    iget-object v0, p0, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->httpRequest:Lcom/youtu/apps/network/IHttpRequest;

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->httpRequest:Lcom/youtu/apps/network/IHttpRequest;

    invoke-interface {v0}, Lcom/youtu/apps/network/IHttpRequest;->cancel()V

    .line 354
    iput-object v1, p0, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->httpRequest:Lcom/youtu/apps/network/IHttpRequest;

    .line 356
    :cond_0
    sput-object v1, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->sClientName:Ljava/lang/String;

    .line 357
    sput-object v1, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->sUser_Agent:Ljava/lang/String;

    .line 358
    sget-object v0, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->newRecommend:Lcom/youtu/apps/recommend/vo/AllNewRecommend;

    if-eqz v0, :cond_1

    .line 359
    sget-object v0, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->newRecommend:Lcom/youtu/apps/recommend/vo/AllNewRecommend;

    invoke-virtual {v0}, Lcom/youtu/apps/recommend/vo/AllNewRecommend;->clear()V

    .line 360
    sput-object v1, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->newRecommend:Lcom/youtu/apps/recommend/vo/AllNewRecommend;

    .line 362
    :cond_1
    iget-object v0, p0, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->mAdapter:Lcom/youtu/apps/recommend/adapter/RecommendHomeAdapter;

    if-eqz v0, :cond_2

    .line 363
    iget-object v0, p0, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->mAdapter:Lcom/youtu/apps/recommend/adapter/RecommendHomeAdapter;

    invoke-virtual {v0}, Lcom/youtu/apps/recommend/adapter/RecommendHomeAdapter;->clear()V

    .line 364
    iput-object v1, p0, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->mAdapter:Lcom/youtu/apps/recommend/adapter/RecommendHomeAdapter;

    .line 366
    :cond_2
    iget-object v0, p0, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->mSelectListView:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 367
    iput-object v1, p0, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->mViewpager:Lcom/youtu/apps/widget/YoutuViewPager;

    .line 368
    iput-object v1, p0, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->textNewRecommend:Landroid/widget/TextView;

    .line 369
    iput-object v1, p0, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->textTopGame:Landroid/widget/TextView;

    .line 370
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 374
    if-eqz p1, :cond_0

    .line 375
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 380
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 382
    :goto_1
    return v0

    .line 377
    :pswitch_0
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    goto :goto_0

    .line 382
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 375
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 124
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 125
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 309
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 310
    const-string v0, "clientName"

    sget-object v1, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->sClientName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    const-string/jumbo v0, "user_agent_youku"

    sget-object v1, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->sUser_Agent:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    const-string v0, "AllNewRecommend"

    sget-object v1, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->newRecommend:Lcom/youtu/apps/recommend/vo/AllNewRecommend;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 313
    const-string v0, "posterCount"

    sget v1, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->POSTER_CHANNELIMAGE_COUNT:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 314
    const-string/jumbo v0, "tab"

    iget-object v1, p0, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->mViewpager:Lcom/youtu/apps/widget/YoutuViewPager;

    invoke-virtual {v1}, Lcom/youtu/apps/widget/YoutuViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 315
    iget-object v0, p0, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->mAdapter:Lcom/youtu/apps/recommend/adapter/RecommendHomeAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->mAdapter:Lcom/youtu/apps/recommend/adapter/RecommendHomeAdapter;

    invoke-virtual {v0}, Lcom/youtu/apps/recommend/adapter/RecommendHomeAdapter;->getFragments()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 316
    const-string/jumbo v1, "tag0"

    iget-object v0, p0, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->mAdapter:Lcom/youtu/apps/recommend/adapter/RecommendHomeAdapter;

    invoke-virtual {v0}, Lcom/youtu/apps/recommend/adapter/RecommendHomeAdapter;->getFragments()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    const-string/jumbo v1, "tag1"

    iget-object v0, p0, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->mAdapter:Lcom/youtu/apps/recommend/adapter/RecommendHomeAdapter;

    invoke-virtual {v0}, Lcom/youtu/apps/recommend/adapter/RecommendHomeAdapter;->getFragments()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    :cond_0
    return-void
.end method

.method public switchTab(I)V
    .locals 3
    .param p1, "tab"    # I

    .prologue
    .line 295
    iget-object v1, p0, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->mSelectListView:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->mSelectListView:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    if-gez p1, :cond_1

    .line 305
    :cond_0
    return-void

    .line 298
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->mSelectListView:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 299
    if-ne v0, p1, :cond_2

    .line 300
    iget-object v1, p0, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->mSelectListView:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 298
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 302
    :cond_2
    iget-object v1, p0, Lcom/youtu/apps/recommend/activity/RecommendHomeActivity;->mSelectListView:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method
