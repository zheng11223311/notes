.class public Lcom/tudou/ui/fragment/VideoRecommendFragment;
.super Lcom/youku/ui/YoukuFragment;
.source "VideoRecommendFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final LOAD_VIDEO_FAIL:I = 0x7d1

.field private static final LOAD_VIDEO_SUCCESS:I = 0x7d0

.field private static final NEED_RELOAD_AFTER_LOGIN:I = 0xbb8

.field private static final TAG:Ljava/lang/String; = "AgreementFragment==="


# instance fields
.field private btn_app_recommend:Landroid/widget/Button;

.field private btn_login:Landroid/widget/Button;

.field private layout_login:Landroid/widget/RelativeLayout;

.field private layout_no_video_recommend:Landroid/view/View;

.field private lv_video_recommend:Lcom/youku/widget/SteadyGridView;

.field private mHandler:Landroid/os/Handler;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mTempList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/RecommendVideoInfo;",
            ">;"
        }
    .end annotation
.end field

.field private myVideoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/RecommendVideoInfo;",
            ">;"
        }
    .end annotation
.end field

.field private onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private videoRecommendAdapter:Lcom/tudou/adapter/VideoRecommendAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/youku/ui/YoukuFragment;-><init>()V

    .line 72
    new-instance v0, Lcom/tudou/ui/fragment/VideoRecommendFragment$1;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/VideoRecommendFragment$1;-><init>(Lcom/tudou/ui/fragment/VideoRecommendFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/VideoRecommendFragment;->mHandler:Landroid/os/Handler;

    .line 290
    new-instance v0, Lcom/tudou/ui/fragment/VideoRecommendFragment$3;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/VideoRecommendFragment$3;-><init>(Lcom/tudou/ui/fragment/VideoRecommendFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/VideoRecommendFragment;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/tudou/ui/fragment/VideoRecommendFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/VideoRecommendFragment;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/tudou/ui/fragment/VideoRecommendFragment;->mTempList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$002(Lcom/tudou/ui/fragment/VideoRecommendFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/VideoRecommendFragment;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/tudou/ui/fragment/VideoRecommendFragment;->mTempList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$100(Lcom/tudou/ui/fragment/VideoRecommendFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/VideoRecommendFragment;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/tudou/ui/fragment/VideoRecommendFragment;->myVideoList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tudou/ui/fragment/VideoRecommendFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/VideoRecommendFragment;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/tudou/ui/fragment/VideoRecommendFragment;->layout_no_video_recommend:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tudou/ui/fragment/VideoRecommendFragment;)Lcom/tudou/adapter/VideoRecommendAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/VideoRecommendFragment;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/tudou/ui/fragment/VideoRecommendFragment;->videoRecommendAdapter:Lcom/tudou/adapter/VideoRecommendAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tudou/ui/fragment/VideoRecommendFragment;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/VideoRecommendFragment;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/tudou/ui/fragment/VideoRecommendFragment;->btn_app_recommend:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/tudou/ui/fragment/VideoRecommendFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/VideoRecommendFragment;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/tudou/ui/fragment/VideoRecommendFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/tudou/ui/fragment/VideoRecommendFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/VideoRecommendFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/tudou/ui/fragment/VideoRecommendFragment;->clickLog(Ljava/lang/String;)V

    return-void
.end method

.method private clickLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "itemId"    # Ljava/lang/String;

    .prologue
    .line 321
    new-instance v0, Lcom/tudou/ui/fragment/VideoRecommendFragment$4;

    invoke-direct {v0, p0, p1}, Lcom/tudou/ui/fragment/VideoRecommendFragment$4;-><init>(Lcom/tudou/ui/fragment/VideoRecommendFragment;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/VideoRecommendFragment$4;->start()V

    .line 370
    return-void
.end method

.method private getLocalHistoryItemCodes()Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0x1e

    .line 195
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 196
    .local v2, "sb":Ljava/lang/StringBuffer;
    invoke-static {}, Lcom/youku/data/SQLiteManagerTudou;->getLocalPlayHistory()Ljava/util/ArrayList;

    move-result-object v0

    .line 197
    .local v0, "historyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/VideoInfo;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v5, :cond_0

    .line 198
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_1

    .line 199
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/VideoInfo;

    iget-object v3, v3, Lcom/youku/vo/VideoInfo;->vid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 198
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 202
    .end local v1    # "i":I
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 203
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 204
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/VideoInfo;

    iget-object v3, v3, Lcom/youku/vo/VideoInfo;->vid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 203
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 208
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_2

    .line 209
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 211
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private initData()V
    .locals 5

    .prologue
    .line 215
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v3

    if-nez v3, :cond_0

    .line 216
    iget-object v3, p0, Lcom/tudou/ui/fragment/VideoRecommendFragment;->layout_no_video_recommend:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 219
    const v3, 0x7f0d02c3

    invoke-static {v3}, Lcom/youku/util/Util;->showTips(I)V

    .line 261
    :goto_0
    return-void

    .line 222
    :cond_0
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/VideoRecommendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/youku/widget/YoukuLoading;->show(Landroid/content/Context;)V

    .line 223
    iget-object v3, p0, Lcom/tudou/ui/fragment/VideoRecommendFragment;->myVideoList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 224
    const-string v1, ""

    .line 225
    .local v1, "itemCode":Ljava/lang/String;
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v3

    if-nez v3, :cond_1

    .line 226
    invoke-direct {p0}, Lcom/tudou/ui/fragment/VideoRecommendFragment;->getLocalHistoryItemCodes()Ljava/lang/String;

    move-result-object v1

    .line 228
    :cond_1
    new-instance v0, Lcom/youku/network/HttpIntent;

    invoke-static {v1}, Lcom/youku/http/TudouURLContainer;->getVideoRecommendedV4(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;)V

    .line 230
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "URL==========="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lcom/youku/http/TudouURLContainer;->getVideoRecommendedV4(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/youku/util/Logger;->d(Ljava/lang/String;)V

    .line 233
    const-class v3, Lcom/youku/network/IHttpRequest;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/network/IHttpRequest;

    .line 235
    .local v2, "mHttpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v3, Lcom/tudou/ui/fragment/VideoRecommendFragment$2;

    invoke-direct {v3, p0}, Lcom/tudou/ui/fragment/VideoRecommendFragment$2;-><init>(Lcom/tudou/ui/fragment/VideoRecommendFragment;)V

    invoke-interface {v2, v0, v3}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    goto :goto_0
.end method

.method private initTitle()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 184
    iget-object v2, p0, Lcom/tudou/ui/fragment/VideoRecommendFragment;->mFragmentView:Landroid/view/View;

    const v3, 0x7f0c00df

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 186
    .local v1, "txt_title":Landroid/widget/TextView;
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 187
    const v2, 0x7f0d01d1

    invoke-virtual {p0, v2}, Lcom/tudou/ui/fragment/VideoRecommendFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v2, p0, Lcom/tudou/ui/fragment/VideoRecommendFragment;->mFragmentView:Landroid/view/View;

    const v3, 0x7f0c024f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 190
    .local v0, "img_back":Landroid/widget/ImageView;
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 191
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    return-void
.end method

.method private initView()V
    .locals 4

    .prologue
    .line 148
    iget-object v0, p0, Lcom/tudou/ui/fragment/VideoRecommendFragment;->mFragmentView:Landroid/view/View;

    const v1, 0x7f0c065f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/tudou/ui/fragment/VideoRecommendFragment;->layout_login:Landroid/widget/RelativeLayout;

    .line 150
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/tudou/ui/fragment/VideoRecommendFragment;->layout_login:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 155
    :goto_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/VideoRecommendFragment;->mFragmentView:Landroid/view/View;

    const v1, 0x7f0c0661

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tudou/ui/fragment/VideoRecommendFragment;->btn_login:Landroid/widget/Button;

    .line 156
    iget-object v0, p0, Lcom/tudou/ui/fragment/VideoRecommendFragment;->mFragmentView:Landroid/view/View;

    const v1, 0x7f0c0663

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/youku/widget/SteadyGridView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/VideoRecommendFragment;->lv_video_recommend:Lcom/youku/widget/SteadyGridView;

    .line 158
    new-instance v0, Lcom/tudou/adapter/VideoRecommendAdapter;

    invoke-virtual {p0}, Lcom/tudou/ui/fragment/VideoRecommendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/ui/fragment/VideoRecommendFragment;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/tudou/ui/fragment/VideoRecommendFragment;->myVideoList:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, v3}, Lcom/tudou/adapter/VideoRecommendAdapter;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/VideoRecommendFragment;->videoRecommendAdapter:Lcom/tudou/adapter/VideoRecommendAdapter;

    .line 160
    iget-object v0, p0, Lcom/tudou/ui/fragment/VideoRecommendFragment;->mFragmentView:Landroid/view/View;

    const v1, 0x7f0c0665

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/VideoRecommendFragment;->layout_no_video_recommend:Landroid/view/View;

    .line 163
    iget-object v0, p0, Lcom/tudou/ui/fragment/VideoRecommendFragment;->mFragmentView:Landroid/view/View;

    const v1, 0x7f0c0664

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tudou/ui/fragment/VideoRecommendFragment;->btn_app_recommend:Landroid/widget/Button;

    .line 165
    iget-object v0, p0, Lcom/tudou/ui/fragment/VideoRecommendFragment;->btn_app_recommend:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 166
    iget-object v0, p0, Lcom/tudou/ui/fragment/VideoRecommendFragment;->btn_app_recommend:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    iget-object v0, p0, Lcom/tudou/ui/fragment/VideoRecommendFragment;->btn_login:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-object v0, p0, Lcom/tudou/ui/fragment/VideoRecommendFragment;->lv_video_recommend:Lcom/youku/widget/SteadyGridView;

    iget-object v1, p0, Lcom/tudou/ui/fragment/VideoRecommendFragment;->videoRecommendAdapter:Lcom/tudou/adapter/VideoRecommendAdapter;

    invoke-virtual {v0, v1}, Lcom/youku/widget/SteadyGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 169
    iget-object v0, p0, Lcom/tudou/ui/fragment/VideoRecommendFragment;->lv_video_recommend:Lcom/youku/widget/SteadyGridView;

    iget-object v1, p0, Lcom/tudou/ui/fragment/VideoRecommendFragment;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/youku/widget/SteadyGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 170
    return-void

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/VideoRecommendFragment;->layout_login:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 308
    packed-switch p2, :pswitch_data_0

    .line 317
    :goto_0
    return-void

    .line 310
    :pswitch_0
    invoke-direct {p0}, Lcom/tudou/ui/fragment/VideoRecommendFragment;->initView()V

    .line 311
    invoke-direct {p0}, Lcom/tudou/ui/fragment/VideoRecommendFragment;->initData()V

    goto :goto_0

    .line 308
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 127
    const-string v0, "Youku"

    const-string v1, "AgreementFragment===onAttach"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-super {p0, p1}, Lcom/youku/ui/YoukuFragment;->onAttach(Landroid/app/Activity;)V

    .line 129
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 266
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    .line 267
    .local v6, "id":I
    sparse-switch v6, :sswitch_data_0

    .line 288
    :goto_0
    return-void

    .line 269
    :sswitch_0
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/VideoRecommendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "\u4e3a\u6211\u63a8\u8350\u767b\u5f55\u6309\u94ae\u70b9\u51fb"

    const-class v2, Lcom/tudou/ui/activity/VideoRecommendActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u4e3a\u6211\u63a8\u8350\u754c\u9762\u767b\u5f55\u6309\u94ae\u70b9\u51fb\u4e8b\u4ef6"

    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/youku/vo/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-static/range {v0 .. v5}, Lcom/youku/util/Util;->trackExtendCustomEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 272
    new-instance v7, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/tudou/ui/fragment/VideoRecommendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/tudou/ui/activity/LoginActivity;

    invoke-direct {v7, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 273
    .local v7, "loginIntent":Landroid/content/Intent;
    const-string v0, "TAG"

    const/4 v1, 0x7

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 274
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/VideoRecommendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/16 v1, 0xbb8

    const v2, 0x7f040005

    const v3, 0x7f040004

    invoke-static {v0, v7, v1, v2, v3}, Lcom/tudou/android/Youku;->startActivityForResult(Landroid/content/Context;Landroid/content/Intent;III)V

    goto :goto_0

    .line 277
    .end local v7    # "loginIntent":Landroid/content/Intent;
    :sswitch_1
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/VideoRecommendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 280
    :sswitch_2
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/VideoRecommendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "\u4e3a\u6211\u63a8\u8350\u88c5\u673a\u5fc5\u5907\u6309\u94ae\u70b9\u51fb"

    const-class v2, Lcom/tudou/ui/activity/VideoRecommendActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u4e3a\u6211\u63a8\u8350\u754c\u9762\u88c5\u673a\u5fc5\u5907\u6309\u94ae\u70b9\u51fb\u4e8b\u4ef6"

    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/youku/vo/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-static/range {v0 .. v5}, Lcom/youku/util/Util;->trackExtendCustomEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 283
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/VideoRecommendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/tudou/android/TudouApi;->goAppExchangeActivity(Landroid/content/Context;)V

    goto :goto_0

    .line 267
    :sswitch_data_0
    .sparse-switch
        0x7f0c024f -> :sswitch_1
        0x7f0c0661 -> :sswitch_0
        0x7f0c0664 -> :sswitch_2
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 108
    const-string v0, "Youku"

    const-string v1, "AgreementFragment===onCreate"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-super {p0, p1}, Lcom/youku/ui/YoukuFragment;->onCreate(Landroid/os/Bundle;)V

    .line 111
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/VideoRecommendFragment;->getBaseActivity()Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/VideoRecommendFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    .line 135
    const-string v0, "Youku"

    const-string v1, "AgreementFragment===onCreateView"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const v0, 0x7f03014c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/VideoRecommendFragment;->mFragmentView:Landroid/view/View;

    .line 138
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/VideoRecommendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/VideoRecommendFragment;->mInflater:Landroid/view/LayoutInflater;

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tudou/ui/fragment/VideoRecommendFragment;->myVideoList:Ljava/util/ArrayList;

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tudou/ui/fragment/VideoRecommendFragment;->mTempList:Ljava/util/ArrayList;

    .line 141
    invoke-direct {p0}, Lcom/tudou/ui/fragment/VideoRecommendFragment;->initTitle()V

    .line 142
    invoke-direct {p0}, Lcom/tudou/ui/fragment/VideoRecommendFragment;->initView()V

    .line 143
    invoke-direct {p0}, Lcom/tudou/ui/fragment/VideoRecommendFragment;->initData()V

    .line 144
    iget-object v0, p0, Lcom/tudou/ui/fragment/VideoRecommendFragment;->mFragmentView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 121
    const-string v0, "Youku"

    const-string v1, "AgreementFragment===onDestroy"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onDestroy()V

    .line 123
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 115
    const-string v0, "Youku"

    const-string v1, "AgreementFragment===onPause"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onPause()V

    .line 117
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 174
    const-string v0, "Youku"

    const-string v1, "AgreementFragment===onResume"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/tudou/ui/fragment/VideoRecommendFragment;->layout_login:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 180
    :goto_0
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onResume()V

    .line 181
    return-void

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/VideoRecommendFragment;->layout_login:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method
