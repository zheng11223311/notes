.class public Lcom/tudou/detail/widget/VideoBriefBar;
.super Landroid/widget/FrameLayout;
.source "VideoBriefBar.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mHintSubscription:Landroid/widget/TextView;

.field private mSubscriptionBtn:Lcom/tudou/detail/widget/SwitchButton;

.field private mTitle:Landroid/widget/TextView;

.field private mVideoDetail:Lcom/youku/vo/NewVideoDetail;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/tudou/detail/widget/VideoBriefBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tudou/detail/widget/VideoBriefBar;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/tudou/detail/widget/VideoBriefBar;)Lcom/tudou/detail/widget/SwitchButton;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/widget/VideoBriefBar;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoBriefBar;->mSubscriptionBtn:Lcom/tudou/detail/widget/SwitchButton;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tudou/detail/widget/VideoBriefBar;)Lcom/youku/vo/NewVideoDetail;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/widget/VideoBriefBar;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoBriefBar;->mVideoDetail:Lcom/youku/vo/NewVideoDetail;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tudou/detail/widget/VideoBriefBar;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/detail/widget/VideoBriefBar;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/tudou/detail/widget/VideoBriefBar;->setAttention(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/tudou/detail/widget/VideoBriefBar;Lcom/youku/vo/NewVideoDetail;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/detail/widget/VideoBriefBar;
    .param p1, "x1"    # Lcom/youku/vo/NewVideoDetail;
    .param p2, "x2"    # Z

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/tudou/detail/widget/VideoBriefBar;->onGetAttention(Lcom/youku/vo/NewVideoDetail;Z)V

    return-void
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/tudou/detail/widget/VideoBriefBar;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/tudou/detail/widget/VideoBriefBar;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/detail/widget/VideoBriefBar;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoBriefBar;->mHintSubscription:Landroid/widget/TextView;

    return-object v0
.end method

.method private clear()V
    .locals 2

    .prologue
    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tudou/detail/widget/VideoBriefBar;->mVideoDetail:Lcom/youku/vo/NewVideoDetail;

    .line 47
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoBriefBar;->mTitle:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    return-void
.end method

.method private onGetAttention(Lcom/youku/vo/NewVideoDetail;Z)V
    .locals 3
    .param p1, "detail"    # Lcom/youku/vo/NewVideoDetail;
    .param p2, "atte"    # Z

    .prologue
    .line 163
    sget-object v0, Lcom/tudou/detail/widget/VideoBriefBar;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetAttention atte = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoBriefBar;->mVideoDetail:Lcom/youku/vo/NewVideoDetail;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/detail/widget/VideoBriefBar;->mVideoDetail:Lcom/youku/vo/NewVideoDetail;

    invoke-virtual {v0, p1}, Lcom/youku/vo/NewVideoDetail;->attentionEquals(Lcom/youku/vo/NewVideoDetail;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoBriefBar;->mSubscriptionBtn:Lcom/tudou/detail/widget/SwitchButton;

    invoke-virtual {v0, p2}, Lcom/tudou/detail/widget/SwitchButton;->setChecked(Z)V

    .line 166
    iget-object v1, p0, Lcom/tudou/detail/widget/VideoBriefBar;->mHintSubscription:Landroid/widget/TextView;

    if-eqz p2, :cond_1

    const-string v0, "\u5df2\u8ba2\u9605"

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v1, p0, Lcom/tudou/detail/widget/VideoBriefBar;->mHintSubscription:Landroid/widget/TextView;

    if-eqz p2, :cond_2

    const-string v0, "#FFA4A4A4"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 168
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoBriefBar;->mSubscriptionBtn:Lcom/tudou/detail/widget/SwitchButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tudou/detail/widget/SwitchButton;->showProgress(Z)V

    .line 169
    invoke-virtual {p0}, Lcom/tudou/detail/widget/VideoBriefBar;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v0, p1, p2}, Lcom/tudou/ui/activity/DetailActivity;->onAttentionCallBack(Lcom/youku/vo/NewVideoDetail;Z)V

    .line 171
    :cond_0
    return-void

    .line 166
    :cond_1
    const-string v0, "\u8ba2\u9605"

    goto :goto_0

    .line 167
    :cond_2
    const-string v0, "#FF46AEE3"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    goto :goto_1
.end method

.method private setAttention(Z)V
    .locals 4
    .param p1, "tAttented"    # Z

    .prologue
    .line 174
    sget-object v1, Lcom/tudou/detail/widget/VideoBriefBar;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAttention tAttented = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v1, p0, Lcom/tudou/detail/widget/VideoBriefBar;->mSubscriptionBtn:Lcom/tudou/detail/widget/SwitchButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/tudou/detail/widget/SwitchButton;->showProgress(Z)V

    .line 176
    invoke-virtual {p0}, Lcom/tudou/detail/widget/VideoBriefBar;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v1}, Lcom/tudou/ui/activity/DetailActivity;->getModel()Lcom/tudou/detail/DetailModel;

    move-result-object v0

    .line 177
    .local v0, "tModel":Lcom/tudou/detail/DetailModel;
    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {p0}, Lcom/tudou/detail/widget/VideoBriefBar;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    iget-object v2, p0, Lcom/tudou/detail/widget/VideoBriefBar;->mVideoDetail:Lcom/youku/vo/NewVideoDetail;

    new-instance v3, Lcom/tudou/detail/widget/VideoBriefBar$4;

    invoke-direct {v3, p0}, Lcom/tudou/detail/widget/VideoBriefBar$4;-><init>(Lcom/tudou/detail/widget/VideoBriefBar;)V

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/tudou/detail/DetailModel;->setVideoAttentionAsync(Landroid/app/Activity;Lcom/youku/vo/NewVideoDetail;ZLcom/tudou/detail/DetailModel$OnSetAttentionComplete;)V

    .line 213
    :cond_0
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 52
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 54
    const v0, 0x7f0c0301

    invoke-virtual {p0, v0}, Lcom/tudou/detail/widget/VideoBriefBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/detail/widget/VideoBriefBar;->mTitle:Landroid/widget/TextView;

    .line 56
    const v0, 0x7f0c0300

    invoke-virtual {p0, v0}, Lcom/tudou/detail/widget/VideoBriefBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/detail/widget/VideoBriefBar;->mHintSubscription:Landroid/widget/TextView;

    .line 57
    const v0, 0x7f0c02ff

    invoke-virtual {p0, v0}, Lcom/tudou/detail/widget/VideoBriefBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tudou/detail/widget/SwitchButton;

    iput-object v0, p0, Lcom/tudou/detail/widget/VideoBriefBar;->mSubscriptionBtn:Lcom/tudou/detail/widget/SwitchButton;

    .line 58
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoBriefBar;->mSubscriptionBtn:Lcom/tudou/detail/widget/SwitchButton;

    const v1, 0x7f02017c

    invoke-virtual {v0, v1}, Lcom/tudou/detail/widget/SwitchButton;->setDrawableAtte(I)V

    .line 59
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoBriefBar;->mSubscriptionBtn:Lcom/tudou/detail/widget/SwitchButton;

    const v1, 0x7f02017d

    invoke-virtual {v0, v1}, Lcom/tudou/detail/widget/SwitchButton;->setDrawableNormal(I)V

    .line 60
    new-instance v0, Lcom/tudou/detail/widget/VideoBriefBar$1;

    invoke-direct {v0, p0}, Lcom/tudou/detail/widget/VideoBriefBar$1;-><init>(Lcom/tudou/detail/widget/VideoBriefBar;)V

    invoke-virtual {p0, v0}, Lcom/tudou/detail/widget/VideoBriefBar;->post(Ljava/lang/Runnable;)Z

    .line 69
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoBriefBar;->mSubscriptionBtn:Lcom/tudou/detail/widget/SwitchButton;

    new-instance v1, Lcom/tudou/detail/widget/VideoBriefBar$2;

    invoke-direct {v1, p0}, Lcom/tudou/detail/widget/VideoBriefBar$2;-><init>(Lcom/tudou/detail/widget/VideoBriefBar;)V

    invoke-virtual {v0, v1}, Lcom/tudou/detail/widget/SwitchButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    return-void
.end method

.method public setVideoDetail(Lcom/youku/vo/NewVideoDetail;)V
    .locals 10
    .param p1, "detail"    # Lcom/youku/vo/NewVideoDetail;

    .prologue
    const/4 v9, 0x1

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v6, 0x0

    .line 92
    invoke-direct {p0}, Lcom/tudou/detail/widget/VideoBriefBar;->clear()V

    .line 93
    if-eqz p1, :cond_1

    iget-object v4, p1, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    if-eqz v4, :cond_1

    .line 94
    iput-object p1, p0, Lcom/tudou/detail/widget/VideoBriefBar;->mVideoDetail:Lcom/youku/vo/NewVideoDetail;

    .line 95
    invoke-static {p1}, Lcom/tudou/android/Youku$VideoType;->create(Lcom/youku/vo/NewVideoDetail;)Lcom/tudou/android/Youku$VideoType;

    move-result-object v3

    .line 96
    .local v3, "type":Lcom/tudou/android/Youku$VideoType;
    if-eqz v3, :cond_0

    .line 97
    iget-object v4, p1, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v4, v4, Lcom/youku/vo/NewVideoDetail$Detail;->type:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p1, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v4, v4, Lcom/youku/vo/NewVideoDetail$Detail;->type:Ljava/lang/String;

    const-string v5, "album"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 98
    iget-object v4, p0, Lcom/tudou/detail/widget/VideoBriefBar;->mTitle:Landroid/widget/TextView;

    iget-object v5, p1, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v5, v5, Lcom/youku/vo/NewVideoDetail$Detail;->username:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v4, p0, Lcom/tudou/detail/widget/VideoBriefBar;->mTitle:Landroid/widget/TextView;

    const v5, 0x7f0201d8

    invoke-virtual {v4, v6, v6, v5, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 127
    :cond_0
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget v5, v5, Lcom/youku/vo/NewVideoDetail$Detail;->userid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/youku/vo/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 128
    iget-object v4, p0, Lcom/tudou/detail/widget/VideoBriefBar;->mSubscriptionBtn:Lcom/tudou/detail/widget/SwitchButton;

    invoke-virtual {v4, v7}, Lcom/tudou/detail/widget/SwitchButton;->setAlpha(F)V

    .line 129
    iget-object v4, p0, Lcom/tudou/detail/widget/VideoBriefBar;->mHintSubscription:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setAlpha(F)V

    .line 134
    :goto_1
    invoke-virtual {p0}, Lcom/tudou/detail/widget/VideoBriefBar;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/activity/DetailActivity;

    .line 135
    .local v0, "activity":Lcom/tudou/ui/activity/DetailActivity;
    if-eqz v0, :cond_1

    .line 136
    invoke-virtual {v0}, Lcom/tudou/ui/activity/DetailActivity;->getModel()Lcom/tudou/detail/DetailModel;

    move-result-object v2

    .line 137
    .local v2, "model":Lcom/tudou/detail/DetailModel;
    if-eqz v2, :cond_1

    .line 138
    iget-object v4, p0, Lcom/tudou/detail/widget/VideoBriefBar;->mSubscriptionBtn:Lcom/tudou/detail/widget/SwitchButton;

    invoke-virtual {v4, v9}, Lcom/tudou/detail/widget/SwitchButton;->showProgress(Z)V

    .line 139
    new-instance v4, Lcom/tudou/detail/widget/VideoBriefBar$3;

    invoke-direct {v4, p0, p1}, Lcom/tudou/detail/widget/VideoBriefBar$3;-><init>(Lcom/tudou/detail/widget/VideoBriefBar;Lcom/youku/vo/NewVideoDetail;)V

    invoke-virtual {v2, v0, p1, v4}, Lcom/tudou/detail/DetailModel;->getAttentionAsync(Landroid/app/Activity;Lcom/youku/vo/NewVideoDetail;Lcom/tudou/service/attention/IAttention$GetCallBack;)V

    .line 160
    .end local v0    # "activity":Lcom/tudou/ui/activity/DetailActivity;
    .end local v2    # "model":Lcom/tudou/detail/DetailModel;
    .end local v3    # "type":Lcom/tudou/android/Youku$VideoType;
    :cond_1
    return-void

    .line 101
    .restart local v3    # "type":Lcom/tudou/android/Youku$VideoType;
    :cond_2
    iget-object v4, p0, Lcom/tudou/detail/widget/VideoBriefBar;->mTitle:Landroid/widget/TextView;

    iget-object v5, p1, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget-object v5, v5, Lcom/youku/vo/NewVideoDetail$Detail;->title:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    const/4 v1, 0x0

    .line 103
    .local v1, "drawableId":I
    iget-object v4, p1, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget v4, v4, Lcom/youku/vo/NewVideoDetail$Detail;->exclusive_logo:I

    if-ne v4, v9, :cond_3

    .line 104
    const v1, 0x7f0201d6

    .line 124
    :goto_2
    iget-object v4, p0, Lcom/tudou/detail/widget/VideoBriefBar;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v4, v6, v6, v1, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0

    .line 106
    :cond_3
    iget-object v4, p1, Lcom/youku/vo/NewVideoDetail;->detail:Lcom/youku/vo/NewVideoDetail$Detail;

    iget v4, v4, Lcom/youku/vo/NewVideoDetail$Detail;->cid:I

    sparse-switch v4, :sswitch_data_0

    .line 120
    const v1, 0x7f0201d7

    goto :goto_2

    .line 108
    :sswitch_0
    const v1, 0x7f0201d3

    .line 109
    goto :goto_2

    .line 111
    :sswitch_1
    const v1, 0x7f0201d4

    .line 112
    goto :goto_2

    .line 114
    :sswitch_2
    const v1, 0x7f0201d5

    .line 115
    goto :goto_2

    .line 117
    :sswitch_3
    const v1, 0x7f0201d9

    .line 118
    goto :goto_2

    .line 131
    .end local v1    # "drawableId":I
    :cond_4
    iget-object v4, p0, Lcom/tudou/detail/widget/VideoBriefBar;->mSubscriptionBtn:Lcom/tudou/detail/widget/SwitchButton;

    invoke-virtual {v4, v8}, Lcom/tudou/detail/widget/SwitchButton;->setAlpha(F)V

    .line 132
    iget-object v4, p0, Lcom/tudou/detail/widget/VideoBriefBar;->mHintSubscription:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_1

    .line 106
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_2
        0x16 -> :sswitch_1
        0x1e -> :sswitch_0
        0x1f -> :sswitch_3
    .end sparse-switch
.end method
