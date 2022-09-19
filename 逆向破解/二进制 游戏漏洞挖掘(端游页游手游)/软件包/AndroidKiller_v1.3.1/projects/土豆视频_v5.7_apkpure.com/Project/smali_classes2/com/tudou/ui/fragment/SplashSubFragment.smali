.class public Lcom/tudou/ui/fragment/SplashSubFragment;
.super Lcom/youku/ui/YoukuFragment;
.source "SplashSubFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private adapter:Lcom/tudou/guide/SplashAdapter;

.field private btnAllFollow:Landroid/widget/Button;

.field private goApp:Z

.field private goOtherCard:Landroid/widget/ImageView;

.field private goTudou:Landroid/widget/TextView;

.field private gridView:Landroid/widget/GridView;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mView:Landroid/view/View;

.field private manager:Lcom/tudou/guide/SplashSubManager;

.field onSelect:Lcom/tudou/guide/SplashAdapter$OnSelectItemListener;

.field private result:Lcom/youku/vo/GuideSubResult;

.field private sActivity:Lcom/tudou/guide/SplashActivity;

.field private splashKind:Landroid/widget/ImageView;

.field private tab:Lcom/youku/vo/GuideTab;

.field private which:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/youku/ui/YoukuFragment;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tudou/ui/fragment/SplashSubFragment;->goApp:Z

    .line 283
    new-instance v0, Lcom/tudou/ui/fragment/SplashSubFragment$3;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/SplashSubFragment$3;-><init>(Lcom/tudou/ui/fragment/SplashSubFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/SplashSubFragment;->onSelect:Lcom/tudou/guide/SplashAdapter$OnSelectItemListener;

    return-void
.end method

.method static synthetic access$000(Lcom/tudou/ui/fragment/SplashSubFragment;)Lcom/youku/vo/GuideSubResult;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SplashSubFragment;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashSubFragment;->result:Lcom/youku/vo/GuideSubResult;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tudou/ui/fragment/SplashSubFragment;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SplashSubFragment;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashSubFragment;->btnAllFollow:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tudou/ui/fragment/SplashSubFragment;)Lcom/tudou/guide/SplashAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SplashSubFragment;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashSubFragment;->adapter:Lcom/tudou/guide/SplashAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tudou/ui/fragment/SplashSubFragment;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SplashSubFragment;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashSubFragment;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tudou/ui/fragment/SplashSubFragment;)Lcom/tudou/ui/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/SplashSubFragment;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashSubFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    return-object v0
.end method

.method private goOtherCard()V
    .locals 3

    .prologue
    .line 190
    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashSubFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/tudou/ui/activity/BaseActivity;->finish()V

    .line 191
    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashSubFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    const v1, 0x7f04000f

    const v2, 0x7f040010

    invoke-virtual {v0, v1, v2}, Lcom/tudou/ui/activity/BaseActivity;->overridePendingTransition(II)V

    .line 193
    return-void
.end method

.method private goTudou()V
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tudou/ui/fragment/SplashSubFragment;->goApp:Z

    .line 197
    sget-object v0, Lcom/tudou/ui/fragment/SplashFragment;->_this:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 198
    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashSubFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/tudou/ui/activity/BaseActivity;->finish()V

    .line 199
    return-void
.end method

.method private initView(I)V
    .locals 3
    .param p1, "which"    # I

    .prologue
    const v2, 0x7f0c060d

    .line 62
    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashSubFragment;->mView:Landroid/view/View;

    const v1, 0x7f0c060f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/SplashSubFragment;->goOtherCard:Landroid/widget/ImageView;

    .line 63
    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashSubFragment;->mView:Landroid/view/View;

    const v1, 0x7f0c0610

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/SplashSubFragment;->goTudou:Landroid/widget/TextView;

    .line 64
    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashSubFragment;->mView:Landroid/view/View;

    const v1, 0x7f0c060a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/SplashSubFragment;->splashKind:Landroid/widget/ImageView;

    .line 65
    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashSubFragment;->splashKind:Landroid/widget/ImageView;

    sget-object v1, Lcom/tudou/guide/SplashSubManager;->res:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 66
    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashSubFragment;->mView:Landroid/view/View;

    const v1, 0x7f0c060c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tudou/ui/fragment/SplashSubFragment;->btnAllFollow:Landroid/widget/Button;

    .line 67
    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashSubFragment;->mView:Landroid/view/View;

    const v1, 0x7f0c021b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/tudou/ui/fragment/SplashSubFragment;->mProgressBar:Landroid/widget/ProgressBar;

    .line 68
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/SplashSubFragment;->setBtnAllBackground()V

    .line 70
    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashSubFragment;->goOtherCard:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashSubFragment;->goTudou:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashSubFragment;->btnAllFollow:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashSubFragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/SplashSubFragment;->gridView:Landroid/widget/GridView;

    .line 75
    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashSubFragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/SplashSubFragment;->gridView:Landroid/widget/GridView;

    .line 76
    new-instance v0, Lcom/tudou/guide/SplashAdapter;

    iget-object v1, p0, Lcom/tudou/ui/fragment/SplashSubFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    invoke-direct {v0, v1}, Lcom/tudou/guide/SplashAdapter;-><init>(Lcom/tudou/ui/activity/BaseActivity;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/SplashSubFragment;->adapter:Lcom/tudou/guide/SplashAdapter;

    .line 77
    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashSubFragment;->adapter:Lcom/tudou/guide/SplashAdapter;

    invoke-virtual {v0, p1}, Lcom/tudou/guide/SplashAdapter;->setWhich(I)V

    .line 78
    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashSubFragment;->adapter:Lcom/tudou/guide/SplashAdapter;

    iget-object v1, p0, Lcom/tudou/ui/fragment/SplashSubFragment;->onSelect:Lcom/tudou/guide/SplashAdapter$OnSelectItemListener;

    invoke-virtual {v0, v1}, Lcom/tudou/guide/SplashAdapter;->setOnSelectItemListener(Lcom/tudou/guide/SplashAdapter$OnSelectItemListener;)V

    .line 79
    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashSubFragment;->adapter:Lcom/tudou/guide/SplashAdapter;

    iget-object v1, p0, Lcom/tudou/ui/fragment/SplashSubFragment;->result:Lcom/youku/vo/GuideSubResult;

    iget-object v1, v1, Lcom/youku/vo/GuideSubResult;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/tudou/guide/SplashAdapter;->setResult(Ljava/util/ArrayList;)V

    .line 80
    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashSubFragment;->gridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/tudou/ui/fragment/SplashSubFragment;->adapter:Lcom/tudou/guide/SplashAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 81
    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashSubFragment;->adapter:Lcom/tudou/guide/SplashAdapter;

    invoke-virtual {v0, p0}, Lcom/tudou/guide/SplashAdapter;->setFragment(Lcom/tudou/ui/fragment/SplashSubFragment;)V

    .line 82
    return-void
.end method

.method private maiDianClick(I)V
    .locals 8
    .param p1, "id"    # I

    .prologue
    .line 113
    packed-switch p1, :pswitch_data_0

    .line 187
    :goto_0
    :pswitch_0
    return-void

    .line 115
    :pswitch_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 116
    .local v3, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "refercode"

    const-string v7, "Guide|SubCenterAll"

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const-string v1, ""

    .line 118
    .local v1, "clickStr0":Ljava/lang/String;
    iget v6, p0, Lcom/tudou/ui/fragment/SplashSubFragment;->which:I

    packed-switch v6, :pswitch_data_1

    .line 135
    :goto_1
    const-class v6, Lcom/tudou/guide/SplashSubActivity;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "\u5f15\u5bfc\u81ea\u9891\u9053\u8be6\u60c5\u9875"

    invoke-static {v1, v6, v7, v3}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0

    .line 120
    :pswitch_2
    const-string v1, "\u5f15\u5bfc\u81ea\u9891\u9053\u8be6\u60c5\u9875\u516b\u5366\u661f\u4eba\u4e00\u952e\u8ba2\u9605\u70b9\u51fb"

    .line 121
    goto :goto_1

    .line 123
    :pswitch_3
    const-string v1, "\u5f15\u5bfc\u81ea\u9891\u9053\u8be6\u60c5\u9875\u9017\u6bd4\u661f\u4eba\u4e00\u952e\u8ba2\u9605\u70b9\u51fb"

    .line 124
    goto :goto_1

    .line 126
    :pswitch_4
    const-string v1, "\u5f15\u5bfc\u81ea\u9891\u9053\u8be6\u60c5\u9875\u70e7\u94b1\u661f\u4eba\u4e00\u952e\u8ba2\u9605\u70b9\u51fb"

    .line 127
    goto :goto_1

    .line 129
    :pswitch_5
    const-string v1, "\u5f15\u5bfc\u81ea\u9891\u9053\u8be6\u60c5\u9875\u4e50\u6d3b\u661f\u4eba\u4e00\u952e\u8ba2\u9605\u70b9\u51fb"

    .line 130
    goto :goto_1

    .line 132
    :pswitch_6
    const-string v1, "\u5f15\u5bfc\u81ea\u9891\u9053\u8be6\u60c5\u9875\u5b85\u8150\u661f\u4eba\u4e00\u952e\u8ba2\u9605\u70b9\u51fb"

    goto :goto_1

    .line 139
    .end local v1    # "clickStr0":Ljava/lang/String;
    .end local v3    # "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :pswitch_7
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 140
    .local v4, "extend1":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "refercode"

    const-string v7, "GuideChannelRecommend|EnterApp"

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const-string v0, ""

    .line 142
    .local v0, "clickStr":Ljava/lang/String;
    iget v6, p0, Lcom/tudou/ui/fragment/SplashSubFragment;->which:I

    packed-switch v6, :pswitch_data_2

    .line 159
    :goto_2
    const-class v6, Lcom/tudou/ui/activity/HomePageActivity;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "\u5f15\u5bfc\u81ea\u9891\u9053\u8be6\u60c5\u9875"

    invoke-static {v0, v6, v7, v4}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0

    .line 144
    :pswitch_8
    const-string v0, "\u5f15\u5bfc\u81ea\u9891\u9053\u8be6\u60c5\u9875\u516b\u5366\u661f\u4eba\u8fdb\u5165\u5e94\u7528\u70b9\u51fb"

    .line 145
    goto :goto_2

    .line 147
    :pswitch_9
    const-string v0, "\u5f15\u5bfc\u81ea\u9891\u9053\u8be6\u60c5\u9875\u9017\u6bd4\u661f\u4eba\u8fdb\u5165\u5e94\u7528\u70b9\u51fb"

    .line 148
    goto :goto_2

    .line 150
    :pswitch_a
    const-string v0, "\u5f15\u5bfc\u81ea\u9891\u9053\u8be6\u60c5\u9875\u70e7\u94b1\u661f\u4eba\u8fdb\u5165\u5e94\u7528\u70b9\u51fb"

    .line 151
    goto :goto_2

    .line 153
    :pswitch_b
    const-string v0, "\u5f15\u5bfc\u81ea\u9891\u9053\u8be6\u60c5\u9875\u4e50\u6d3b\u661f\u4eba\u8fdb\u5165\u5e94\u7528\u70b9\u51fb"

    .line 154
    goto :goto_2

    .line 156
    :pswitch_c
    const-string v0, "\u5f15\u5bfc\u81ea\u9891\u9053\u8be6\u60c5\u9875\u5b85\u8150\u661f\u4eba\u8fdb\u5165\u5e94\u7528\u70b9\u51fb"

    goto :goto_2

    .line 163
    .end local v0    # "clickStr":Ljava/lang/String;
    .end local v4    # "extend1":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :pswitch_d
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 164
    .local v5, "extend2":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "refercode"

    const-string v7, "GuideChannelRecommend|Other"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const-string v2, ""

    .line 166
    .local v2, "clickStr1":Ljava/lang/String;
    iget v6, p0, Lcom/tudou/ui/fragment/SplashSubFragment;->which:I

    packed-switch v6, :pswitch_data_3

    .line 183
    :goto_3
    const-class v6, Lcom/tudou/guide/SplashActivity;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "\u5f15\u5bfc\u81ea\u9891\u9053\u8be6\u60c5\u9875"

    invoke-static {v2, v6, v7, v5}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0

    .line 168
    :pswitch_e
    const-string v2, "\u5f15\u5bfc\u81ea\u9891\u9053\u8be6\u60c5\u9875\u516b\u5366\u661f\u4eba\u66f4\u6362\u81ea\u9891\u9053\u70b9\u51fb"

    .line 169
    goto :goto_3

    .line 171
    :pswitch_f
    const-string v2, "\u5f15\u5bfc\u81ea\u9891\u9053\u8be6\u60c5\u9875\u9017\u6bd4\u661f\u4eba\u66f4\u6362\u81ea\u9891\u9053\u70b9\u51fb"

    .line 172
    goto :goto_3

    .line 174
    :pswitch_10
    const-string v2, "\u5f15\u5bfc\u81ea\u9891\u9053\u8be6\u60c5\u9875\u70e7\u94b1\u661f\u4eba\u66f4\u6362\u81ea\u9891\u9053\u70b9\u51fb"

    .line 175
    goto :goto_3

    .line 177
    :pswitch_11
    const-string v2, "\u5f15\u5bfc\u81ea\u9891\u9053\u8be6\u60c5\u9875\u4e50\u6d3b\u661f\u4eba\u66f4\u6362\u81ea\u9891\u9053\u70b9\u51fb"

    .line 178
    goto :goto_3

    .line 180
    :pswitch_12
    const-string v2, "\u5f15\u5bfc\u81ea\u9891\u9053\u8be6\u60c5\u9875\u5b85\u8150\u661f\u4eba\u66f4\u6362\u81ea\u9891\u9053\u70b9\u51fb"

    goto :goto_3

    .line 113
    :pswitch_data_0
    .packed-switch 0x7f0c060c
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_7
    .end packed-switch

    .line 118
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 142
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch

    .line 166
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method

.method private subAllFollow()V
    .locals 11

    .prologue
    .line 202
    const/4 v9, 0x1

    .line 203
    .local v9, "isAllSubed":Z
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 204
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashSubFragment;->result:Lcom/youku/vo/GuideSubResult;

    iget-object v0, v0, Lcom/youku/vo/GuideSubResult;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_0

    .line 205
    invoke-static {}, Lcom/tudou/guide/SplashSubManager;->getInstance()Lcom/tudou/guide/SplashSubManager;

    move-result-object v1

    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashSubFragment;->result:Lcom/youku/vo/GuideSubResult;

    iget-object v0, v0, Lcom/youku/vo/GuideSubResult;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/GuideTab;

    iget-object v0, v0, Lcom/youku/vo/GuideTab;->podcast_user_id:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/tudou/guide/SplashSubManager;->getIsSubed(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 206
    const/4 v9, 0x0

    .line 218
    :cond_0
    :goto_1
    if-eqz v9, :cond_4

    .line 281
    :goto_2
    return-void

    .line 204
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 211
    .end local v8    # "i":I
    :cond_2
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_3
    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashSubFragment;->result:Lcom/youku/vo/GuideSubResult;

    iget-object v0, v0, Lcom/youku/vo/GuideSubResult;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_0

    .line 212
    invoke-static {}, Lcom/tudou/guide/SplashSubManager;->getInstance()Lcom/tudou/guide/SplashSubManager;

    move-result-object v1

    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashSubFragment;->result:Lcom/youku/vo/GuideSubResult;

    iget-object v0, v0, Lcom/youku/vo/GuideSubResult;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/GuideTab;

    iget-object v0, v0, Lcom/youku/vo/GuideTab;->podcast_user_id:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/tudou/guide/SplashSubManager;->getIsSubed(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 213
    const/4 v9, 0x0

    .line 214
    goto :goto_1

    .line 211
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 221
    :cond_4
    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashSubFragment;->btnAllFollow:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 222
    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashSubFragment;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 223
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 224
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 225
    .local v2, "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 226
    .local v3, "upics":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 227
    .local v4, "uploadcounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 228
    .local v5, "titles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 229
    .local v6, "types":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v8, 0x0

    :goto_4
    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashSubFragment;->result:Lcom/youku/vo/GuideSubResult;

    iget-object v0, v0, Lcom/youku/vo/GuideSubResult;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_5

    .line 230
    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashSubFragment;->result:Lcom/youku/vo/GuideSubResult;

    iget-object v0, v0, Lcom/youku/vo/GuideSubResult;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/GuideTab;

    iget-object v0, v0, Lcom/youku/vo/GuideTab;->podcast_user_id:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashSubFragment;->result:Lcom/youku/vo/GuideSubResult;

    iget-object v0, v0, Lcom/youku/vo/GuideSubResult;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/GuideTab;

    iget-object v0, v0, Lcom/youku/vo/GuideTab;->avatar:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    const-string v0, "0"

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashSubFragment;->result:Lcom/youku/vo/GuideSubResult;

    iget-object v0, v0, Lcom/youku/vo/GuideSubResult;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/GuideTab;

    iget-object v0, v0, Lcom/youku/vo/GuideTab;->podcast_user_nick:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 237
    :cond_5
    invoke-static {}, Lcom/tudou/service/attention/AttentionManager;->getInstance()Lcom/tudou/service/attention/IAttention;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/ui/fragment/SplashSubFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    new-instance v7, Lcom/tudou/ui/fragment/SplashSubFragment$1;

    invoke-direct {v7, p0}, Lcom/tudou/ui/fragment/SplashSubFragment$1;-><init>(Lcom/tudou/ui/fragment/SplashSubFragment;)V

    invoke-interface/range {v0 .. v7}, Lcom/tudou/service/attention/IAttention;->addAttention(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/tudou/service/attention/IAttention$GetCallBack;)V

    goto/16 :goto_2

    .line 264
    .end local v2    # "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "upics":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "uploadcounts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "titles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "types":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_6
    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashSubFragment;->manager:Lcom/tudou/guide/SplashSubManager;

    iget-object v1, p0, Lcom/tudou/ui/fragment/SplashSubFragment;->result:Lcom/youku/vo/GuideSubResult;

    iget-object v1, v1, Lcom/youku/vo/GuideSubResult;->tabs:Ljava/util/ArrayList;

    new-instance v7, Lcom/tudou/ui/fragment/SplashSubFragment$2;

    invoke-direct {v7, p0}, Lcom/tudou/ui/fragment/SplashSubFragment$2;-><init>(Lcom/tudou/ui/fragment/SplashSubFragment;)V

    const/4 v10, 0x1

    invoke-virtual {v0, v1, v7, v10}, Lcom/tudou/guide/SplashSubManager;->addAttention(Ljava/util/ArrayList;Lcom/tudou/guide/SplashSubManager$OnAddAttention;Z)V

    goto/16 :goto_2
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 95
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 109
    :goto_0
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/tudou/ui/fragment/SplashSubFragment;->maiDianClick(I)V

    .line 110
    return-void

    .line 97
    :pswitch_1
    const-string v0, "t1.find_subrecommend.subscribeall"

    invoke-static {v0, v1}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 98
    invoke-direct {p0}, Lcom/tudou/ui/fragment/SplashSubFragment;->subAllFollow()V

    goto :goto_0

    .line 101
    :pswitch_2
    const-string v0, "t1.find_subrecommend.categoryclose"

    invoke-static {v0, v1}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 102
    invoke-direct {p0}, Lcom/tudou/ui/fragment/SplashSubFragment;->goTudou()V

    goto :goto_0

    .line 105
    :pswitch_3
    const-string v0, "t1.find_subrecommend.more"

    invoke-static {v0, v1}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 106
    invoke-direct {p0}, Lcom/tudou/ui/fragment/SplashSubFragment;->goOtherCard()V

    goto :goto_0

    .line 95
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c060c
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 52
    const v0, 0x7f030145

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/SplashSubFragment;->mView:Landroid/view/View;

    .line 53
    invoke-static {}, Lcom/tudou/guide/SplashSubManager;->getInstance()Lcom/tudou/guide/SplashSubManager;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/SplashSubFragment;->manager:Lcom/tudou/guide/SplashSubManager;

    .line 54
    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashSubFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/tudou/ui/activity/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "tab"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/GuideSubResult;

    iput-object v0, p0, Lcom/tudou/ui/fragment/SplashSubFragment;->result:Lcom/youku/vo/GuideSubResult;

    .line 55
    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashSubFragment;->manager:Lcom/tudou/guide/SplashSubManager;

    iget-object v1, p0, Lcom/tudou/ui/fragment/SplashSubFragment;->result:Lcom/youku/vo/GuideSubResult;

    iget-object v1, v1, Lcom/youku/vo/GuideSubResult;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/tudou/guide/SplashSubManager;->setSelectedTabs(Ljava/util/ArrayList;)V

    .line 56
    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashSubFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    invoke-virtual {v0}, Lcom/tudou/ui/activity/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "which"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tudou/ui/fragment/SplashSubFragment;->which:I

    .line 57
    iget v0, p0, Lcom/tudou/ui/fragment/SplashSubFragment;->which:I

    invoke-direct {p0, v0}, Lcom/tudou/ui/fragment/SplashSubFragment;->initView(I)V

    .line 58
    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashSubFragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 86
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onDestroy()V

    .line 87
    iget-boolean v0, p0, Lcom/tudou/ui/fragment/SplashSubFragment;->goApp:Z

    if-nez v0, :cond_1

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashSubFragment;->manager:Lcom/tudou/guide/SplashSubManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashSubFragment;->manager:Lcom/tudou/guide/SplashSubManager;

    invoke-virtual {v0}, Lcom/tudou/guide/SplashSubManager;->getOnGoInAppListener()Lcom/tudou/guide/SplashSubManager$OnGoInAppListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/tudou/ui/fragment/SplashSubFragment;->manager:Lcom/tudou/guide/SplashSubManager;

    invoke-virtual {v0}, Lcom/tudou/guide/SplashSubManager;->getOnGoInAppListener()Lcom/tudou/guide/SplashSubManager$OnGoInAppListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/tudou/guide/SplashSubManager$OnGoInAppListener;->onGoIn()V

    goto :goto_0
.end method

.method public setBtnAllBackground()V
    .locals 6

    .prologue
    const v5, 0x7f020077

    const v4, 0x7f020076

    .line 292
    const/4 v1, 0x1

    .line 293
    .local v1, "isAllSubed":Z
    iget-object v2, p0, Lcom/tudou/ui/fragment/SplashSubFragment;->manager:Lcom/tudou/guide/SplashSubManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tudou/ui/fragment/SplashSubFragment;->result:Lcom/youku/vo/GuideSubResult;

    iget-object v2, v2, Lcom/youku/vo/GuideSubResult;->tabs:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 322
    :cond_0
    :goto_0
    return-void

    .line 295
    :cond_1
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 296
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/tudou/ui/fragment/SplashSubFragment;->result:Lcom/youku/vo/GuideSubResult;

    iget-object v2, v2, Lcom/youku/vo/GuideSubResult;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 297
    invoke-static {}, Lcom/tudou/guide/SplashSubManager;->getInstance()Lcom/tudou/guide/SplashSubManager;

    move-result-object v3

    iget-object v2, p0, Lcom/tudou/ui/fragment/SplashSubFragment;->result:Lcom/youku/vo/GuideSubResult;

    iget-object v2, v2, Lcom/youku/vo/GuideSubResult;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/GuideTab;

    iget-object v2, v2, Lcom/youku/vo/GuideTab;->podcast_user_id:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/tudou/guide/SplashSubManager;->getIsSubed(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 298
    const/4 v1, 0x0

    .line 302
    :cond_2
    if-nez v1, :cond_4

    .line 303
    iget-object v2, p0, Lcom/tudou/ui/fragment/SplashSubFragment;->btnAllFollow:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    .line 296
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 305
    :cond_4
    iget-object v2, p0, Lcom/tudou/ui/fragment/SplashSubFragment;->btnAllFollow:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    .line 309
    .end local v0    # "i":I
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget-object v2, p0, Lcom/tudou/ui/fragment/SplashSubFragment;->result:Lcom/youku/vo/GuideSubResult;

    iget-object v2, v2, Lcom/youku/vo/GuideSubResult;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_6

    .line 310
    invoke-static {}, Lcom/tudou/guide/SplashSubManager;->getInstance()Lcom/tudou/guide/SplashSubManager;

    move-result-object v3

    iget-object v2, p0, Lcom/tudou/ui/fragment/SplashSubFragment;->result:Lcom/youku/vo/GuideSubResult;

    iget-object v2, v2, Lcom/youku/vo/GuideSubResult;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/GuideTab;

    iget-object v2, v2, Lcom/youku/vo/GuideTab;->podcast_user_id:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/tudou/guide/SplashSubManager;->getIsSubed(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 311
    const/4 v1, 0x0

    .line 315
    :cond_6
    if-nez v1, :cond_8

    .line 316
    iget-object v2, p0, Lcom/tudou/ui/fragment/SplashSubFragment;->btnAllFollow:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    .line 309
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 318
    :cond_8
    iget-object v2, p0, Lcom/tudou/ui/fragment/SplashSubFragment;->btnAllFollow:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0
.end method
